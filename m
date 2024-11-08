Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F07A39C19BB
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 11:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3C0F10E954;
	Fri,  8 Nov 2024 10:00:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4367210E954;
 Fri,  8 Nov 2024 10:00:54 +0000 (UTC)
Received: from 91-155-254-241.elisa-laajakaista.fi ([91.155.254.241]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t9LnP-00000001avb-1Lob; Fri, 08 Nov 2024 12:00:52 +0200
Message-ID: <39fec318e1e9c5cfbd67abc0e722f6d774aeba5e.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Date: Fri, 08 Nov 2024 12:00:49 +0200
In-Reply-To: <173101244899.92682.12331831987185316729@intel.com>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
 <20241107182921.102193-18-gustavo.sousa@intel.com>
 <57edfe78f9da272e0312ad77ee8ff7060932ae8c.camel@coelho.fi>
 <173101047610.92682.5793541337752745725@intel.com>
 <173101244899.92682.12331831987185316729@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH v3 17/18] drm/i915/dmc_wl: Do nothing until initialized
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2024-11-07 at 17:47 -0300, Gustavo Sousa wrote:
> Quoting Gustavo Sousa (2024-11-07 17:14:36-03:00)
> > Quoting Luca Coelho (2024-11-07 16:23:06-03:00)
> >=20
> > > > Since we do not expect DC states (and consequently the wakelock
> > > > mechanism) to be enabled until DMC and DMC wakelock software struct=
ures
> > > > are initialized, a simple and safe solution to this is to turn
> > > > intel_dmc_wl_get() and intel_dmc_wl_put() into no-op until we have
> > > > properly initialized.
> > >=20
> > >=20
> > > About "safe" here... Can we be sure this will be race-free?
> >=20
> > The initialization is done only once, during driver load. The wakelock
> > will be enabled only at a later moment. So, we are good in that regard.
> >=20
> > However, now that you mentioned, yeah, we should also consider that tha=
t
> > we do concurrent work during initialization (e.g. loading the DMC).
> > Based on that, we will need to protect "initialized", which means:
> >=20
> > - initializing the lock early together with the other ones;
> > - always going for the lock, even for hardware that does not support th=
e
> >  wakelock.
>=20
> Well, a hacky way to mitigate this is by checking the DISPLAY_VER() >=3D
> 20 before taking the spin lock, since that info is queried in
> probe_gmdid_display(), which happens at the "no-mmio" phase of driver
> initialization.
>=20
> By the way, that makes me think: is it too bad to do the same kind of
> early MMIO via pci_iomap_range() for ICL_DFSM_DMC_DISABLE? We could
> avoid this whole thing, since we would already have the correct value
> for HAS_DMC() when i915/xe MMIO functions are called.

I'm not sure it's worth it, but if you feel this would be better, go
ahead and show us the code. :)

--
Cheers,
Luca.
