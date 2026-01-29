Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AG4JM0Uhe2mCBgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 09:58:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FBBADE3B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 09:58:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A827B10E837;
	Thu, 29 Jan 2026 08:58:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="UxBW1H/d";
	dkim=pass (2048-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="OEwC98oI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CC8210E838
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jan 2026 08:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1769677121;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=tXPLi5MPleV0XT1GzNz4vZO6yU1p82vu1eMa85GiDrc=;
 b=UxBW1H/dac+jT5u1zkJ6RvZGXQMjEbbZ/CjDQtk5HsjLVIh7z26GKH4uaeT5BhA3OeAR1F
 TO0n1AfN0wYFx/97IDR0zT9stDphz8D1bVmuejIaIHnkshR32oPxZOKQD3NBzvUFwdCjN9
 fjyZcay30Sg/xTm3kCYAHYK4MFfCLkI=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-503-frtRtkdNMQ6L8dLA6z_vhg-1; Thu, 29 Jan 2026 03:58:40 -0500
X-MC-Unique: frtRtkdNMQ6L8dLA6z_vhg-1
X-Mimecast-MFC-AGG-ID: frtRtkdNMQ6L8dLA6z_vhg_1769677119
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-48057c39931so9353645e9.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jan 2026 00:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; s=google; t=1769677118; x=1770281918; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=tXPLi5MPleV0XT1GzNz4vZO6yU1p82vu1eMa85GiDrc=;
 b=OEwC98oIE/gmRH6G5Yz5N4/xmW52WArLT00m9oHfAMDPUrinRCQDO7tUIjEvxlUG4C
 Yb0NwD6CuA5PnL2MSg86xVlLTsQYK9a4wFwZh9sPF4foetv4+W7DBBBzavy8gsobNoa4
 LPJJ/Ob47kSP5kVEMa14SXiWa8EpTJITyda+G891Gz7eq/GNo/pvmRiS2SYqrfQwXlOm
 W9JkSMmuZlCdkupYqly6kmQzJam/bvGCz9Trzy2kOl3f6WRBS6EViuGuj//AxPNj6QlK
 Q5Hc8hJvI4DNjfnjz6B7MRCsIEYTva4pLpeiZ2l+U/VWJPFN8dS2sJkODs6Yn0jew9Yg
 q6Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769677118; x=1770281918;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tXPLi5MPleV0XT1GzNz4vZO6yU1p82vu1eMa85GiDrc=;
 b=KiJ0PeTNQ7h0QaH2nYUPmHsvMtkP+5kehcyUh9RWmUYz6TMqxdo1ShZYfcgCQ2HCJ+
 JIWiZ3XIdrY3pAx9cPmNMieYMmrPWRQHoBpJTyNAze2jfK78HtKCceTCvu89fKnPh4Ek
 CLhhmjzWgACtG3wjOLhZ54gtnKWyvltB4hi02YzedhGp/Nf1gRYcOjIAI7exj57OgAFM
 5wK0CcH04aSM0idatQHVBBPd6kIxg4h85eoUUBJ1YzOUrEntH/ESib7irgm5lWe6VoiE
 C9Lm0PaanmN4EVEcqYuc+PJ/XhaB3NoLGqFNmVhW0cxGs853t6vstGX5JUXsDkb+C1vz
 O4Qg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUZi6kisskPyezfsCnuAPBhK5/Xeb/ZcFTJOqhftzZbg090/5NkNcGG+EtdsnMlf+cxUySO82KYgb8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyiB7dVetOB83PLWQeYW+kRg8QGTPZBXJabwGMNjY5rsU9fubjW
 XiWqrYM+j2lFWit1+lnPQmS4mqjYGY1nH64dPFuXG5ua+nzZW2jbI2zGvij7pbxeiVS9A3WxsYM
 Ri+8VaTrV4pm0lU+gFCk4DEpEXVzlbqhyRPgXuIYt4/rvAH7yxzN3qYYH0FSia+MacRGOLdXakY
 y8dA==
X-Gm-Gg: AZuq6aLMlrt14LpprE/n0/q7fFzNFIRMCzrUroSTkKwGCEAU/wBQepOkxZU3HNkGENs
 oqS4Z2GCR8KY0A46cH3S6ml1eBKBhESVej3k3cadxZcvrualXlf2ULgyzK+m16KNUyuBcVtBuNL
 Vb8D8XGnVHvPtLr4EwsGvYxhAjBfVEqD3P3tsEGkQZie3BdjC/acfIlXiEbeIPZo6H3Fk3xhbW2
 ON633dNxmSafFo8hWHn6rXe9azeM7mZ9xwPjZNfP3Zy5hNxCA2aykaVErRC3PJQZmGy5r/9SRTk
 Qe9LG6MU8d0hwzU9T4O4Yb7wpgWTa0HBr8HWipNNpn7vA6MCCO3gLzTpWcXtLg==
X-Received: by 2002:a05:600c:820c:b0:47b:de05:aa28 with SMTP id
 5b1f17b1804b1-48069c0e172mr100786545e9.2.1769677118615; 
 Thu, 29 Jan 2026 00:58:38 -0800 (PST)
X-Received: by 2002:a05:600c:820c:b0:47b:de05:aa28 with SMTP id
 5b1f17b1804b1-48069c0e172mr100786155e9.2.1769677118181; 
 Thu, 29 Jan 2026 00:58:38 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-481a5d31650sm5802175e9.4.2026.01.29.00.58.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jan 2026 00:58:37 -0800 (PST)
Date: Thu, 29 Jan 2026 09:58:37 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Matthew Brost <matthew.brost@intel.com>, 
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: [PULL] drm-misc-next-fixes
Message-ID: <20260129-efficient-jerboa-of-ecstasy-822832@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="qzorfjkesxyen2l3"
Content-Disposition: inline
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.91 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona.vetter@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:rodrigo.vivi@intel.com,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:dim-tools@lists.freedesktop.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	FORGED_SENDER(0.00)[mripard@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 34FBBADE3B
X-Rspamd-Action: no action


--qzorfjkesxyen2l3
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PULL] drm-misc-next-fixes
MIME-Version: 1.0

Hi,

Here's this week drm-misc-next-fixes PR.

Maxime

drm-misc-next-fixes-2026-01-29:
Two fixes for NULL pointer dereference in imx8 following the bridge
refcounting conversions, and one for the bridge connector following the
HDMI audio reworks.
The following changes since commit b2c6627e406d00bc53903ff6204aabb0c6a22b1a:

  Merge tag 'drm-misc-next-2026-01-22' of https://gitlab.freedesktop.org/drm/misc/kernel into drm-next (2026-01-23 12:45:15 +1000)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-fixes-2026-01-29

for you to fetch changes up to db7e7ea838c916ee4cdf26bee126fd36f58295dc:

  drm/bridge: imx8qxp-pxl2dpi: Fix NULL pointer dereference in imx8qxp_pxl2dpi_bridge_destroy() (2026-01-27 12:22:22 +0100)

----------------------------------------------------------------
Two fixes for NULL pointer dereference in imx8 following the bridge
refcounting conversions, and one for the bridge connector following the
HDMI audio reworks.

----------------------------------------------------------------
Dmitry Baryshkov (1):
      drm/display: bridge_connector: move audio_infoframe checks to OP_HDMI

Liu Ying (2):
      drm/bridge: imx8qxp-ldb: Fix NULL pointer dereference in imx8qxp_ldb_bridge_destroy()
      drm/bridge: imx8qxp-pxl2dpi: Fix NULL pointer dereference in imx8qxp_pxl2dpi_bridge_destroy()

 drivers/gpu/drm/bridge/imx/imx8qxp-ldb.c       | 7 +++++--
 drivers/gpu/drm/bridge/imx/imx8qxp-pxl2dpi.c   | 3 +++
 drivers/gpu/drm/display/drm_bridge_connector.c | 9 ++++++---
 3 files changed, 14 insertions(+), 5 deletions(-)

--qzorfjkesxyen2l3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaXshPAAKCRAnX84Zoj2+
dt5gAX9pLQKJqPi71NBJ0MlwXV8Fw2qlSyadbcBKrNT6zVmvePwu1VujKc72vdbK
PGa8m1UBfihH1CZO4n4ggv7HJw2uTr/I6jE1EJKhPaEFh8p56JbOMM/9ySGzgoHY
9jcd7C9RUg==
=5QvF
-----END PGP SIGNATURE-----

--qzorfjkesxyen2l3--

