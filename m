Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SL2fFLiG4GlPjAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 08:50:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC2940AC8D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 08:50:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58D8D10E819;
	Thu, 16 Apr 2026 06:50:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="WGz72Q9B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F81D10E7D4;
 Thu, 16 Apr 2026 06:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tmZTUrHDRo5mVF0PV1foMoEtKPOBO22Kz07r1jnfnlY=; b=WGz72Q9BE8xJ0+t0LMGBtsfMtp
 A3vDTbPA8DvEzBfJApX+zGPzVlsUdJbQ4st+IJCv1FAOZqTy+MW/JUmWBQyUDdn0plB5Ck0MMwJ0T
 CsOHBkw6awha7FzSXuNB1YJzTw6/p+tkjVOJxgvEIBHjqgg58JXh/jvqvdwNCHkeeXoz/rGzKNjew
 nMh8Cq6XfqlhrmgwxAjXQMXfvqa1fJWcza2ilsgGq4txBediCVLXTbSeLp5ATOE5pcqLcczEYHAMz
 fy1nmeqFHpVhEIA1d2m7qFTw4n8q5qoB4iyRV2+0I+3Ig+14x4Wi25W98aiMSNnYqU53I+UNVRrlE
 qOerw4Kg==;
Received: from [90.240.106.137] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1wDGYD-00Grci-N2; Thu, 16 Apr 2026 08:50:09 +0200
Date: Thu, 16 Apr 2026 07:50:08 +0100
From: Tvrtko Ursulin <tursulin@igalia.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: [PULL] drm-intel-next-fixes
Message-ID: <aeCGoL4FFwT66bF4@linux>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [0.99 / 15.00];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	ARC_NA(0.00)[];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:server fail];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.874];
	FROM_NEQ_ENVFROM(0.00)[tursulin@igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: DEC2940AC8D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


Hi Dave, Sima,

Two fixes for the merge window - one to correct the backlight available
feature check and second to check correct plane DDB programming.

Thanks,

Tvrtko

drm-intel-next-fixes-2026-04-16:
- Fix VESA backlight possible check condition [backlight] (Suraj Kandpal)
- Verify the correct plane DDB entry [wm] (Ville Syrjälä)
The following changes since commit 83e8d8bbffa8161e94f3aeee4dd09a35062a78c8:

  Merge tag 'drm-misc-next-fixes-2026-04-09' of https://gitlab.freedesktop.org/drm/misc/kernel into drm-next (2026-04-10 11:15:22 +1000)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-next-fixes-2026-04-16

for you to fetch changes up to a97c88a176b6b8d116f4d3f508f3bd02bc77b462:

  drm/i915/wm: Verify the correct plane DDB entry (2026-04-14 08:04:47 +0100)

----------------------------------------------------------------
- Fix VESA backlight possible check condition [backlight] (Suraj Kandpal)
- Verify the correct plane DDB entry [wm] (Ville Syrjälä)

----------------------------------------------------------------
Suraj Kandpal (1):
      drm/i915/backlight: Fix VESA backlight possible check condition

Ville Syrjälä (1):
      drm/i915/wm: Verify the correct plane DDB entry

 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 9 +++++++--
 drivers/gpu/drm/i915/display/skl_watermark.c          | 4 ++--
 2 files changed, 9 insertions(+), 4 deletions(-)
