Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C28A9846A95
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 09:22:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7686810E1AF;
	Fri,  2 Feb 2024 08:22:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux.microsoft.com header.i=@linux.microsoft.com header.b="KmCC8OM2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3605F10E1AF
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 08:22:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="10844505"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="10844505"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 00:22:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="859350513"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="859350513"
Received: from mistoan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.140])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 00:22:52 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Fri, 02 Feb 2024 10:22:48 +0200
Resent-Message-ID: <87plxfff6v.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from orsmga002.jf.intel.com (orsmga002.jf.intel.com [10.7.209.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 38690580DA8;
 Thu,  1 Feb 2024 22:43:31 -0800 (PST)
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="789152633"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'";a="789152633"
Received: from fmvoesa105.fm.intel.com ([10.64.2.15])
 by orsmga002-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01
 Feb 2024 22:43:30 -0800
X-IPAS-Result: =?us-ascii?q?A0EYAACAjrxlmLHS/INaHAEBAQEBAQcBARIBAQQEAQGBf?=
 =?us-ascii?q?QUBAQsBgjgZAYE4gQmNT4kCnW+BQDIbAQEBAQEBAQEBCS4TAQIEAQEDBIxWA?=
 =?us-ascii?q?iY2Bw0BAQIEAQEBAQMCAQIBAQEBAQEIAQEBAgIBAQECAQEGAwEBAQECEAEBA?=
 =?us-ascii?q?QEBAQEBHhkFEA4nhS89DYI3JQEQgQxLDQMHPAEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQUCDVwBAR8CBAEBDi8BAQQKKQECAwECBgJEB?=
 =?us-ascii?q?AgDAScxAReCe4JgAwMCozYBh10BAYoogiyBAYIKAQEGsR2BYQmBSAGMcldLg?=
 =?us-ascii?q?0F6JxuBSUR6UIMzgVKJNIIZgz+VQkqBJgOBBm0bEB43ERAFDg0DCG4dAhEiO?=
 =?us-ascii?q?gMFAwQyChIMCyEFVQNABkkLAwIaBQMDBIEwBQ0aAhAsJgMDEkkCEBQDOAMDB?=
 =?us-ascii?q?gMKMTAaO0EMUANnHxoYCTwPDBoCGxsNJyMCLEADERACFgMiFgQ2EQkLJgMqB?=
 =?us-ascii?q?jYCEgwGBgZdIxYJBCUDCAQDVAMhdBEDBAoDFAcLB1Qmg0cEE0QDEIE0BoVYA?=
 =?us-ascii?q?wkDBwVJQAMLGA1IESwWHwYOGygfbwecahIBWDaVTJIRoGGEG4FhDJ9JATKqH?=
 =?us-ascii?q?5hVIKMZJoURgWoELwKBWjMTByODN1IZD44gg3qPPAFdIDU7AgcLAQEDCYVGA?=
 =?us-ascii?q?QGDWQGBRgEB?=
IronPort-PHdr: A9a23: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
 NPHkNrxvoM=
IronPort-Data: A9a23:D0v2uK3Tqoc2N60Sx/bD5ex3kn2cJEfYwER7XKvMYLTBsI5bp2FRy
 WdJUDvQMquNajfyfo0jOty28hwG6paEnYQ2GlBqqSg9HnlHgPSeOdnIdU2Y0wF+jyHgoOCLy
 +1HMoGowBUcFyeEzvuLGua/9SEUOYagH+KtV7es1hhZHFMiEmF74f5as7RRqpZyhtSkCB+6t
 9r3osnOUHeowDcc3lg8sspvkzsx+qyv0N8klgZmP6wT5geEzyN94K83fMldEVOpGuG4IcbnH
 44v/JnhlkvF8hEkDM+Sk7qTWiXmlZaJZWBiIlIPM0STqkAqSh4ai87XB9JFAatjsAhlqvgqo
 Dl7ncfpFVp2ZP2kdNM1CHG0GwkmVUFPFSSuzXKX6aR/xGWfG5fgLm4H4Ojb8uT0984uaVyi+
 8D0Jxg8Qh+SrLOYyY6/S+dKquEecMzwH7I27yQIITHxVZ7KQLjMSq/Ho9FC0To8i9tNAfHGI
 c0DZlKDbjyZOEQJYApNTshnxKHx2SaXnz5w8Dp5oYI7+WmWwAFv3byoOt3IfNeHXu1Rn12Ev
 STI5Wn0DhwBN8CY0XyC6H3EaurnxHukBNxDT+zQGvhCmV/U4VIOMD4selKC/6eggEq3XMlEN
 BlBksYphfFuqx36F7ERRSaQiXiIpAwRWZxzGuYi8gaS0anVywKYAHUUCD9HdNEi8sQxQFQC3
 1OAmpXsBCd9u6+cSlqZ97GJvXWzPzQYKSkJYipsZQID79ilu4EikhPnStdlDb7zj9vpFDW2y
 DePxAA3nbwNjMgHkaS38VnCmD+wuonhSg8z+xWRX2S54wc/b4mgD6Sq4FPW7rBEJZmDX1+Go
 3kPieCa7eYTHdeMkjCARKMGG7TBz/SMNjyah19sAp0o3zCs/WOzO4FW/Dx6YkxuN64sezbvf
 VTB/wBL9o5ILmetY650S4awDdk6i6nmCdnhEPvTa7JmYJ92cgacuiVnZVKR2W3ruEwtl7wvf
 5adbcuoS30dDMxPyTO9Ruofl6ci2i06znHCRrj/zhK6wfyfYmKYTfEON17mRuUw8bmD5g7V/
 tZWPeOOyhNCQKv/ZDXa9cgYKlViBX46H5Xxuopbf/WrJgtgBXFnCvnNzLdncItg94xOiu7O/
 2q5U1Aex0Dinm/EIC2Oa3Z+ePXuW4pyqTQwOilEFUqv3nE4c8Cq7bwDfocfebgh6fwlzPhoQ
 v1DcMKFatxTVC7b+DNbcIPmsYhjcjyvhASTL2ykZiQye9hrQAmh0sHleg/isjIfFCi+scIWp
 7ymyxOdQJwfSgAkB8HTANq9z163rGUCsOZzWVbYZNhVZEjotoNtLkTMYuQfLMgGJFPN3DaX2
 wuNAgsfva/KuYBdHMT1ab6snqumAsAvMENmG2jVy5qTCHXf5UmS6NoVOAqXRgz1WGTx8aSkQ
 OxayfDgLfEK9GqmVaIhT96HKopjvbPSS69m8+hyIJncg72W5l5ILXCM0I9BrKBAyrJCuhexQ
 gSI4NYy1VS11CHNQAV5yOkNN7rrORQodt/6sK9dzKLSuXUfwVZ/eR8OVyRgcQQERFePDKsrw
 P06pOkd4BGlhxwhP76u138MqTTVdCBbDv977Pn25bMHbCJ2ljmuhrSBUEfLDG2nMb2gz2F0f
 2LP2sIueZwCniIujEbf5VCUgbUM1M1mVOFi1FgYO1CAnNaNneM+wBAZ7DI2UAlP1RRbwopO1
 ptDaSVIyVG1124w3qBrBjn0cykYXU3x0hKqkTMhyjaGJ3REo0SQdgXRz87XohBAm4+dFxAGl
 IylJJHNCmqwI5ihg3tjCSaIaZXLFLRMy+ELo+j+d+ytG5g8fCqjh66lf20TrBX7R8g2gSX6S
 SNCpo6ctYWT2eUsT2HXxmVUOXn8iPxJGYCafcxcwQ==
IronPort-HdrOrdr: A9a23:tt50tqt/gYD/cVzutPudzD2L7skDjNV00zEX/kB9WHVpm6yj/f
 xGUs5rsCMd6l4qOU3I/OrhBEDuewK6yXce2+Us1ImZLXrbUQeTXeJfBWWL+UyeJ8XRntQtpJ
 uIWZIOdeEZNDBB/LjHCOPRKadR/DD/ytHVuQ6h9QYKcegwUdAb0+4RMG/yeSIZeOBoP+tKKH
 P23Lsim9PPQwV0Uix7bkN1J9Qr3+e77a4P7nY9dmUaAWS14A+V1A==
X-Talos-CUID: 9a23:0hZzhW4lx8nQk3dvmNssxWIbC+t0XHThyHbeBWOdNDpsU56kYArF
X-Talos-MUID: =?us-ascii?q?9a23=3A6aRzLQ/GYGK+Q6qy+5E0HXuQf95qpIOQFXguq7o?=
 =?us-ascii?q?PgpfaLCZ0MjCGlyviFw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="10746939"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'";a="10746939"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from gabe.freedesktop.org ([131.252.210.177])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Feb 2024
 22:43:12 -0800
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
 by gabe.freedesktop.org (Postfix) with ESMTP id D5BE810E6A5;
 Fri,  2 Feb 2024 06:43:07 +0000 (UTC)
X-Original-To: dri-devel@lists.freedesktop.org
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1704D10E6A5
 for <dri-devel@lists.freedesktop.org>; Fri,  2 Feb 2024 06:43:05 +0000 (UTC)
Received: by linux.microsoft.com (Postfix, from userid 1134)
 id C6F3F20B2000; Thu,  1 Feb 2024 22:43:04 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com C6F3F20B2000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1706856184;
 bh=o0pt0AvQb9QH1NVN0Ep+6Z4WzLV/a6EZfES4iiGUlsM=;
 h=From:To:Cc:Subject:Date:From;
 b=KmCC8OM2S7hF8N3oCUViQyTPIoi55pJb5EwGKN7K4YZ47h0ZEGrNIxp/xvusZqom8
 1Lqtpe1qoUbzw5Y5PGkgmExh6VcK8kcOgymjVNH0g+/4wpgkI4SNCf/gsuLbK0Xfdq
 dZXHWtA1OOWy7ZaA4PlqFGbAw/8w8W3jRahWpn6I=
From: Shradha Gupta <shradhagupta@linux.microsoft.com>
To: linux-kernel@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.dev>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Saurabh Singh Sengar <ssengar@linux.microsoft.com>
Cc: Shradha Gupta <shradhagupta@linux.microsoft.com>,
 Shradha Gupta <shradhagupta@microsoft.com>
Subject: [PATCH v4 0/2] drm: Check polling initialized before
Date: Thu,  1 Feb 2024 22:42:56 -0800
Message-Id: <1706856176-9483-1-git-send-email-shradhagupta@linux.microsoft.com>
X-Mailer: git-send-email 1.8.3.1
X-BeenThere: dri-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
X-TUID: MHLL4AVqpnrb
MIME-Version: 1.0
Content-Type: text/plain
X-BeenThere: intel-gfx@lists.freedesktop.org
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

This patchset consists of sanity checks before enabling/disabling
output polling to make sure we do not call polling enable and disable
functions when polling for the device is not initialized or is now
uninitialized(by drm_kms_helper_poll_fini() function)

The first patch consists of these checks in
drm_kms_helper_poll_disable() and drm_kms_helper_poll_enable() calls.
It further flags a warning if a caller violates this. It also adds
these checks in drm_mode_config_helper_resume() and
drm_mode_config_helper_suspend() calls to avoid this warning.

The second patch adds a similar missing check in
drm_helper_probe_single_connector_modes() function that is exposed by
the new warning introduced in the first patch.

Shradha Gupta (2):
  drm: Check output polling initialized before disabling
  drm: Check polling initialized before enabling in
    drm_helper_probe_single_connector_modes

 drivers/gpu/drm/drm_modeset_helper.c | 19 ++++++++++++++++---
 drivers/gpu/drm/drm_probe_helper.c   | 21 +++++++++++++++++----
 2 files changed, 33 insertions(+), 7 deletions(-)

-- 
2.34.1

