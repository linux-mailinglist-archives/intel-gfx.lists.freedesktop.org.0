Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 043898A8010
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 11:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D3D7113347;
	Wed, 17 Apr 2024 09:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6625113347;
 Wed, 17 Apr 2024 09:46:10 +0000 (UTC)
Received: from 91-156-7-239.elisa-laajakaista.fi ([91.156.7.239]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1rx1ri-00000000LAZ-0isP; Wed, 17 Apr 2024 12:46:07 +0300
Message-ID: <17dc38b91bfddf564f12cdd1ed1ed8615d000e13.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>,  "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Date: Wed, 17 Apr 2024 12:46:04 +0300
In-Reply-To: <87v84gxr3j.fsf@intel.com>
References: <20240412094148.808179-1-luciano.coelho@intel.com>
 <20240412094148.808179-2-luciano.coelho@intel.com>
 <DM4PR11MB63600F7F0EE905B24FED01B2F4042@DM4PR11MB6360.namprd11.prod.outlook.com>
 <7c2a11df009a90646d39783c01f722b96717966c.camel@coelho.fi>
 <DM4PR11MB6360FFEA82155778AD9B9778F4092@DM4PR11MB6360.namprd11.prod.outlook.com>
 <2fe5226a281ad1db416d26969e5edf07b60dd349.camel@coelho.fi>
 <87v84gxr3j.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH v5 1/4] drm/i915/display: add support for DMC wakelocks
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

On Wed, 2024-04-17 at 12:42 +0300, Jani Nikula wrote:
> On Mon, 15 Apr 2024, Luca Coelho <luca@coelho.fi> wrote:
> > Thanks a lot for your reviews! Now I just need to get someone to merge
> > this series, since I don't have commit rights to the repo yet.
>=20
> Thanks for the patches and review, merged to drm-intel-next with a
> slightly heavy heart because it sets me back with [1] in a pretty
> annoying way. Oh well.
>=20
> BR,
> Jani.
>=20
> [1] https://lore.kernel.org/r/0b48d6bebfe90aa2f901a05be8279ed887d99d7a.17=
12665176.git.jani.nikula@intel.com

Oh, no! But you do have cocci and scripts, so it should be easy? Let me
know if I can help you rebase your change.

In any case, thanks for merging my patches!

--
Cheers,
Luca.
