Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 606BD97C5D6
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 10:29:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1AED10E24A;
	Thu, 19 Sep 2024 08:29:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (static.29.146.99.88.clients.your-server.de
 [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7A3210E24A
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 08:29:11 +0000 (UTC)
Received: from 91-155-255-213.elisa-laajakaista.fi ([91.155.255.213]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1srCXD-000000005qc-28Zw; Thu, 19 Sep 2024 11:29:10 +0300
Message-ID: <799c3feff78cfbec83fed11d83ee7d1bfde13296.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 19 Sep 2024 11:29:07 +0300
In-Reply-To: <1b825b893dd2d423da167a7b6b21d05e8cd0182c.1726231866.git.jani.nikula@intel.com>
References: <cover.1726231866.git.jani.nikula@intel.com>
 <1b825b893dd2d423da167a7b6b21d05e8cd0182c.1726231866.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.53.2-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 2/2] drm/i915/debugfs: add dedicated intel_display_caps
 debugfs for display
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

On Fri, 2024-09-13 at 15:51 +0300, Jani Nikula wrote:
> Add dedicated intel_display_caps for display, with device info and
> params. Intentionally prefix the file intel_ instead of i915_. Going
> forward, we should do the same for all debugfs files, making them
> independent of i915 and xe.
>=20
> Remove display param dumping from i915 specific i915_capabilities
> debugfs.
>=20
> Note that we don't add node_to_intel_display() functionality in
> to_intel_display(). It's too specific for that.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
