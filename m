Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VJIyAsGWMmoP2gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 14:44:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2D7699D42
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 14:44:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=asu.edu header.s=google header.b=VlEWiuNO;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=asu.edu
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E54C710E2DB;
	Wed, 17 Jun 2026 12:44:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6796A10E2DB
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2026 12:44:45 +0000 (UTC)
X-CSE-ConnectionGUID: cWAgJDDgQxGS5iizrEIpLA==
X-CSE-MsgGUID: JHqoPoRgShWy6PGWsuxaxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93605188"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="93605188"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 05:44:45 -0700
X-CSE-ConnectionGUID: MJcyGXdzSx+p53S7nwBw4Q==
X-CSE-MsgGUID: OIsFdCHtQpeKN9Pz9C3SxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="271768811"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.158])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 05:44:44 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business
 Park, 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 17 Jun 2026 15:44:41 +0300
Resent-Message-ID: <bf128fba9f019e708dd6883602d2dd5547f40f81@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from fmviesa002.fm.intel.com (fmviesa002.fm.intel.com
 [10.60.135.142])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 9990120B5713
 for <jani.nikula@linux.intel.com>; Mon, 15 Jun 2026 11:47:51 -0700 (PDT)
X-CSE-ConnectionGUID: weMLUAU+SUu+Pp0YvG2ToQ==
X-CSE-MsgGUID: xt6IDnFNT520cSP8Oy51Uw==
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="271260188"
Received: from orvoesa108.jf.intel.com ([10.18.183.148])
 by fmviesa002-1.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 11:47:51 -0700
X-CSE-ConnectionGUID: /6K7xwOjRbmPfI0AiwCcSw==
X-CSE-MsgGUID: TWLcxR1fStCiW5hccvWd1w==
IronPort-SDR: 6a3048d6_mueIOhfeEMoyC3sShVkv9w08Z0AIYQbr5KwY7ZEdm3g+BU2
 +xnXev7UXPtuwpVLWcdTer2dqS9hSZ9VWKfyfUg==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0F0AQAHRzBqfLTWVdFaHgEBCxIMggULgW5TFnRfMwRUo?=
 =?us-ascii?q?jOMWYVegT89AgYJAQEBAQEBAQEBBwEBPRICBAEBAwSEf41CAh4HAQQwCQ4BA?=
 =?us-ascii?q?gECAQMCAQIBAQEBAQEBAQEBAQsBAQECAgEBAQIBAQIEAwEBAQECEAEBIhkHD?=
 =?us-ascii?q?hIphk8NgluBLGUJOAEBAQEBAQEBAQEBAQEBGwINB3kWFQsBDQEBNwGBABMBB?=
 =?us-ascii?q?QEjEiKCYAGCIgEGEQM2AwEEDAaqSYECQow8M4EBggwBAQYEAwIB2ygNWQEJD?=
 =?us-ascii?q?YFmAQIDBgkBCgEBgTeIO4UjdIQCgSGCKIEVg2mCH4JxhXiDIBKRAUiBHgNZL?=
 =?us-ascii?q?AFVEw0KCwcFgWYDKgsSEhgVbjIdeik+FwiBBBsHBYEeRIFLgQWFDyMfAzl/g?=
 =?us-ascii?q?W+BJWdmFTAYHYEBAREfChwDCxgNSBErATcUGwQ+QC4HjFEXD4IdIIEOLINOA?=
 =?us-ascii?q?ZU/jHOCIaAecQaEIYwhjz6FfE2EBJNPSJJRLodmkHQji22BeoQJkkeEPQIKB?=
 =?us-ascii?q?wcRJIFEOoFcMxolgWyBSRM9AxkPjiEMFoRKhCnCRiQ1AgEBOQIHAgcOAwuFX?=
 =?us-ascii?q?owMLQWBSwEB?=
IronPort-PHdr: A9a23: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
IronPort-Data: A9a23:p/NnSKzgyBIKM7L4STh6t+fywirEfRIJ4+MujC+fZmUNrF6WrkUCz
 2QbDGyFa6mJNGL9ftEgPNu2/UNQuMXQm4Q2GwI9pC00HyNBpOP7XuiUfxz6V8+wwmwvb67FA
 +E2M4GYRCzhZiaE/n9BFJC//SEkvU2vbuOlWLeUUsxJbVY6Dn9n1VQ7wrBRbrdA27CRGxmKt
 c75v/rRMVqk3y8cGm8P4spvkjs21BjJkG1e5ABWicxj5geEySFLVc9HfMldElOhKmVqNr/iL
 wr85Ozhlo/p109FIs+olL/9bnoLTtb6VSCSimBbUrSVmRNLoCo/yM4TbJLwvm8M011lN/goo
 Dl8ncTYpTUBZ8Ugq8xEO/VsKBySCIUdkFPxCSPm7ZHMlR2un0zEmJ2CBGluVWERF30e7Wtmr
 ZT0IxhUBvyPannfLBtWhYCAi+x6RPQHMr/ztVknkxKGHekBQ6rJRp3ExIdx3SgbjftRSKO2i
 8oxMVKDbTzFahxLf08TUdcwxbfwwHb4dDJcpRSeoq9fD2r7llQgluiwdoCMJprTFZ09ckWw/
 goq+0zpBxwbafSW0ifD/36x7gPKtXOhBNNPROHmnhJsqGGs4mcDMkQYbkeQoMbkikW1Re1Tc
 lNBr0LCqoBpqRXzEYijN/Gim1aGtxgdHdxREPA+4SmJy6zJ80CYAHQJSnhKb9lOiSMtbTkj1
 1vMh9ewQDI24OXTRnWa+bOZ6zi1PED5MFPuewdDEyha88bEors5iyrBb45KEbGehebqTGSYL
 y+xkMQou1kEYSc2O0iT+FnGh3e0osGMQFdlvkPYWWWq6g4/b4mgD2BJ1bQ5xaccRGp6ZgDe1
 JThpyR4xL1eZX1qvHHcKNjh5Jnzu5643MT02DaD5aXNCAhBC1b4INkIv2AgTKuYGskDfjDtb
 QfSvwgXjKJu0I+RRfYvOeqZUpx0pYC5TIiNfq6OMrJmPMMqHCfZp3EGWKJl9zqx+KTauftiY
 c/DGSttZF5GYZlaIM2eHbdCjeJ0nHljngs+h/nTlnya7FZXX1bMIZ8tOUCTKO018cu5TM/9q
 L6z7uPbmkUNY/60eSTN748YIHYDKHVxV9i8qNVaeqTHakBqEX0oQa2Zi74wWZ1Xr4IMnMfx/
 1a5RhB5znj7jib5MgmkUC1oR47uepddlkgFGxIQE2ym4UV+Xrb33pwjL8M2WZIF6N1cyeVFS
 qhZWseYXdVKZDf12xUcSpjf8IZdSgyNuCiONHGYfQoARcdBRhPIyPDgbADA5CkDNQvplMoc8
 pmL9BLXfooHfCtmVP3pUfOIy0igm0QdlMZZfVr6EvMKdGrCqIFVejHM1NkpKMQyGDD/7zq91
 TfOJywHpOPI8rQHwPOQiY+q946WQvZDRGxEFGzm7JGzBynQ3kyn5aRiCO+oXzTsZFnYyZWYR
 9d+7q/DaaUcvVNwrYBDPa5hzvs+6/vRtrZq9FlYM0uRXWu7KIFLAyeg5tZOhJ1v17UCmAqRW
 2CzwPd4F4iNGvvYFA82GFJ4QMWFjeoZixvD38QTeU/a3hJ6zJCDcEdVPiSPthBjEatIANsl7
 Nol6eEr6F2Zqxs1M9y5oDhe2EaSI1chDag2lJEoL7X6qwgsy1xtOJjVNhHf0aGpMvFJDEomG
 R6Ppa/4n78H7FHzQ3kyMnnv7ONiq4k8qTps/mABJlqyhdvOgMEs7iBR6TgaSgd0zA1N9uBOZ
 lhQKEx+IJuR8wdShMRsW36mHydDDka7/nPd5kQolmqDaWWVTU3IcXMAPNiS8HAj825zeiZR+
 Jeawj3HVRfoZMTA4Tsga3V6qvDMTc1DySOaoZqJR/+6JpgdZSbppoSMZmBS8hvuPp4XtX39/
 OJv+L59VL3/OSsuuJYEMoi914kLaRW6NWdHEOBA/qQIIDnmQwuM+wOycmK/RsAcAMbx0x6cK
 9dvLcdxRRiBxH6wjjQEN5UtfZ5wvtAUveQnRJ26BFQ7o4O+ryVouq3+7iLRpnEmaPQwnNcfK
 rH+TSOjEGuRj0R6g2Xm9dZOFkekU9spOCjXgea/qrQPHb0+rdA2IF0T06S1jVqRIgBI7xKZh
 yKdRq70nshJ65VgoJvoKYpHXz6LENLUUP+a1SyCqPFMUI//CtjPvAYrtVXXBQRaEr8PUdBRl
 77WktrI8G7anbQxCUb1poKgEvRX2MCMQ+ZnCML7A31Ely+kWsW3wR8i+Xi9GKNZguFm+cira
 AupWvSeLedPdY9m+0RUTCxCHzI2Kaf9NP7grBzgicW8MEEW1AifIe638XPsU3pgSRYJHJ/DE
 S7xheel44FJjYZLBSJcPcpcPb1DHAbBV5clJvrLjhvJPlnw1xnG8vHnmAE74D7GNmicHYyoq
 djZTxz5b1KptLuO0NhdtJdoswYKCGpmx9M9ZV8Z58U8ngXS4LTq9gjBGc5u5lBofi3OOFXQY
 TjMaC46DXy4U20UKVPz59PsWgrZDesLUjs8yvrF4GvMAxpaxqvZaFeiysuky35tZ33uwPzPx
 RQ25CjrJhboqn12bb972xF46NuLAtvT3W9O9Ezg+yA379DyHp1SvEFc8MFxueAr3i0DeIgn5
 YT4eIycfHyGdA==
IronPort-HdrOrdr: A9a23:eZTWOaBMJ0eQlKjlHemE55DYdb4zR+YMi2TDGXoBLCC9Ffbo7P
 xG+c5w6faaskd3ZJhNo6HiBEDiewKlyXcW2/h2AV7KZmCP0wuVxelZjLcKqAeQfxEWmNQtt5
 tIQuxRDJnfAzFB4voSIzPVLz/j+rS6GdiT9J7jJr5WIz1XVw==
X-Talos-CUID: 9a23:1iBHzG143EYFtOudgNARirxfXZ4GLW3C63XqKUqAB0cxYbyKYlSr5/Yx
X-Talos-MUID: =?us-ascii?q?9a23=3AlEKl9g9kNaMEMSapaoPdjsuQf/tXx6++MhkDqok?=
 =?us-ascii?q?tuvbZNSd7JQiR1SviFw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82495846"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="82495846"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-pl1-f180.google.com ([209.85.214.180])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026
 11:47:51 -0700
Received: by mail-pl1-f180.google.com with SMTP id
 d9443c01a7336-2c68190ade4so10306905ad.0
 for <jani.nikula@linux.intel.com>; Mon, 15 Jun 2026 11:47:50 -0700
 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=asu.edu; s=google; t=1781549270; x=1782154070; darn=linux.intel.com;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=RNzWRIWcVuUVQ3D135xiCFoPDQ31KAN58/ChTPioRnM=;
 b=VlEWiuNOLJo4c3k2azRqnWPmIBT1GR5WhDcouanxHBTmVZMw//D+qvDgH3FH0JuYn5
 o5nka9OowIetxwy4AYItgwN5og3O9mJQ8vvOR6BWqU8rf4eVkHuSRHSOyYS6eVb3WgVa
 53A60dvjr6ROVgfmgbChgIfQDlO1P+ulLC23YwMLOoo2nISERhFo1w+MAKo+QWe/SXOb
 lVn74akSSTD5sVy+E9wPPlAoXxngMaI7262DnyHpXSmNntdiSVAA99eLqL5AxaGBGTSX
 8SWG63NFu/JBF+XupF9lElK1i1H6ev6Ib1gRc0FHeSzgd2vflaRBQ+GP3DmFctTJv4t8
 1IzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781549270; x=1782154070;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RNzWRIWcVuUVQ3D135xiCFoPDQ31KAN58/ChTPioRnM=;
 b=B4ZJ0YH2NhNlLQjGKm3Cq4bRKs3llf0djgmzWva/AkoVcQTp2/ryi/yj5hAenOHCSL
 2mXe6nJ0VQFaaRulbZ//zXoo5fo+XJ0iTgOA7O29CS4KWfgY1tMKbQ3+yNRFW1+hCwOl
 bk8DnelUWgcSzBjaDp/kdZ4JWWh4NreV5opt0pkW6T9rsj324ZHyAL07qcDJmA946r+e
 +F4ykLwjyxS//m2kHArBl8sBw/PcuzbypKp67Cax6rknTZlvlzQ7DwvegJLcdok4j4nK
 LzTULPfHrpfdkkSIT+dpVdSW99DtQF03dzRypZDnswPlfG2eH7t/ZfPeU9ZpoJDAiXF9
 7Idg==
X-Gm-Message-State: AOJu0Yy+zI4VReGcfcWdtzQsAeR1kEM4aPjl04OxAVmUd9KaIR/MFGj/
 uQnVFHsRjVeFsK8jjnrBp6rZNZEVkFLp8GjJxnCGiarhGFxQNFZ/TRX9jP24b8lnMZ2w7yuizAq
 ZGu4=
X-Gm-Gg: Acq92OEi7cj6LK7awTYopMsGWlHaKJUdrXSSXJYA4vfEfpI+JsFirksaz4LfsrFFaMv
 HzYTEoMImXgud/gXquSsYnB0AW3Ny9myght/C3Ft0IaqxgfZz2/rBWVep104dwUDW6uV0rcp7Nb
 LDU68zNimnpSt/zp4vodl/BCaR9xivkZf2eF9aJ2a97NWhcJJSwSFUzbO4D2rfBcEDop5F6Vvrp
 NamatvmQ6tdBbLcuSL0QV25TJAH0/Sr36ute4fO9IxRtdzKbUZH2IvtFmUbFkrjcwEw4q8uYxF3
 wtVvZCxERdpvkEhMc4jpwpX0SEl/dfje/VKBdWJIptUB0m1xe3QGQCQjg6qdZwaa5pcEabyADQU
 MIOt23wxFtsFyuCRkRA3FAU7HC4aiNvlccUEqIRbgcw+vkMktlKqecQrnAjFXkEkTnBYmkd5FSw
 qhUxEtXy0=
X-Received: by 2002:a17:903:38c4:b0:2c0:aa5d:756f with SMTP id
 d9443c01a7336-2c699aa7769mr5150285ad.8.1781549270064;
 Mon, 15 Jun 2026 11:47:50 -0700 (PDT)
Received: from p1.. ([2607:fb90:ecaf:62d0:f5d0:3c3:fdd2:d3c8])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2c432c8c1f9sm112317845ad.59.2026.06.15.11.47.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2026 11:47:49 -0700 (PDT)
From: Xiang Mei <xmei5@asu.edu>
To: jani.nikula@linux.intel.com,
	dri-devel@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, bestswngs@gmail.com,
 Xiang Mei <xmei5@asu.edu>
Subject: [PATCH v2] drm/edid: fix OOB read in drm_parse_tiled_block()
Date: Mon, 15 Jun 2026 11:47:37 -0700
Message-ID: <20260615184737.899892-1-xmei5@asu.edu>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TUID: +B5zp3zTYRN7
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.19 / 15.00];
	DATE_IN_PAST(1.00)[41];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[asu.edu,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[asu.edu:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,asu.edu];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:dri-devel@lists.freedesktop.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:bestswngs@gmail.com,m:xmei5@asu.edu,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[xmei5@asu.edu,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,asu.edu:dkim,asu.edu:email,asu.edu:mid,asu.edu:from_mime];
	FROM_NEQ_ENVFROM(0.00)[xmei5@asu.edu,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[asu.edu:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5E2D7699D42

drm_parse_tiled_block() casts the DisplayID block to a
struct displayid_tiled_block and reads the full fixed layout up to
tile->topology_id[7] without checking block->num_bytes. The DisplayID
iterator only validates the declared payload length, so a crafted EDID
can advertise a tiled-display block (tag DATA_BLOCK_TILED_DISPLAY, or
DATA_BLOCK_2_TILED_DISPLAY_TOPOLOGY for v2.0) with a small num_bytes at
the end of a DisplayID extension. The read then runs past the end of the
exact-sized kmemdup()'d EDID allocation, a heap out-of-bounds read.

Reject blocks shorter than the spec's 22-byte tiled payload before
reading the fixed struct, as drm_parse_vesa_mso_data() already does.

  BUG: KASAN: slab-out-of-bounds in drm_edid_connector_update
  Read of size 2 at addr ffff888010077700 by task exploit/147
   dump_stack_lvl (lib/dump_stack.c:94 ...)
   print_report (mm/kasan/report.c:378 ...)
   kasan_report (mm/kasan/report.c:595)
   drm_edid_connector_update (drivers/gpu/drm/drm_edid.c:7581)
   bochs_connector_helper_get_modes (drivers/gpu/drm/tiny/bochs.c:574)
   drm_helper_probe_single_connector_modes (drivers/gpu/drm/drm_probe_helper.c:426)
   status_store (drivers/gpu/drm/drm_sysfs.c:219)
   ...
   vfs_write (fs/read_write.c:595 fs/read_write.c:688)
   ksys_write (fs/read_write.c:740)

Fixes: 40d9b043a89e ("drm/connector: store tile information from displayid (v3)")
Reported-by: Weiming Shi <bestswngs@gmail.com>
Assisted-by: Claude:claude-opus-4-8
Signed-off-by: Xiang Mei <xmei5@asu.edu>
---
v2: use 22 instead of sizeof, based on the topology_id[9] fix:
https://lore.kernel.org/r/20260610141549.555605-1-jani.nikula@intel.com

 drivers/gpu/drm/drm_edid.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 404208bf23a6..df3c25bac761 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -7575,6 +7575,14 @@ static void drm_parse_tiled_block(struct drm_connector *connector,
 	u8 num_v_tile, num_h_tile;
 	struct drm_tile_group *tg;
 
+	/* tiled block payload per spec: cap 1 + topo 3 + size 4 + bezel 5 + id 9 = 22 */
+	if (block->num_bytes < 22) {
+		drm_dbg_kms(connector->dev,
+			    "[CONNECTOR:%d:%s] Unexpected tiled block size %u\n",
+			    connector->base.id, connector->name, block->num_bytes);
+		return;
+	}
+
 	w = tile->tile_size[0] | tile->tile_size[1] << 8;
 	h = tile->tile_size[2] | tile->tile_size[3] << 8;
 
-- 
2.43.0

