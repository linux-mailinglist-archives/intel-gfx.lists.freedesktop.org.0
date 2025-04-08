Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9042A817C5
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 23:44:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F85D10E773;
	Tue,  8 Apr 2025 21:44:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mwjejezq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04DE210E769;
 Tue,  8 Apr 2025 21:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744148660; x=1775684660;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=WfwxJA1InyiiR9dAIw0J4W1xi9OdIGsM7GB75YRa5zc=;
 b=MwjejezqnejKPuGzSeQWXD6HyVYS7jDKlyf6VXm2wLuA1v27Bep1npyN
 9y58XteiN6+v4r2H0mq1hInXhiWIsFZHgXl+PbUlvOvL8gR0QhR6u2E7h
 sH2OGUrBnWHXr2hErIXSPtJ6urE60T+SCD4CRsJplX6/aLPZITg5vW5S7
 V0V2dfE4RqmcXcUg2DXZ9yR7xarK3WfZKD5Pb4mTbCHfxSc3zy/p1C1/X
 QlJ5FPIzBzzwWnWFVKNgt3Z/CK6yBURvNZbLa2QXrdHF2qgQGb1a19bES
 oVXyQVf7lMkAzk58QIlwS6AoRqGjnZqpgZBymO/og2mJkacjt6RGIzdc8 g==;
X-CSE-ConnectionGUID: hXIerbBoSiC+XUmntyFqKA==
X-CSE-MsgGUID: kBdGvsdrQgCAQsrkhPycUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56243163"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="56243163"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:19 -0700
X-CSE-ConnectionGUID: Zq7CqnPCSWCXi2726tzlvQ==
X-CSE-MsgGUID: SwYWOQDISi6GXil4gsPh0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="128724383"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 14:44:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:44:19 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:44:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wMkcHEmvhM2n4VTORwx+KdhwqJObXW0DzJvKv47gi/y9RxPhSEkmKMb0E/AlRpg2qGl88GtinwB+HRodrN1vYtP9HlvQSuCJtYTGN6usyUUhFTsTDsJ8o2+Y+pYXQnF+kPtt6AR1VMCZf6C5jniBkaCAaZ0Cbv4htRkGRIGhxZu0CanozMg896IuwwNgGDFD1d7a4kSuc9wtQYM224urXmq5MDH6JnNsEnrVmTd05r/ElvYjbJiCUDvP4ZwQHWZwHwq1zyUlGoXvoFaVuxXmqaSL54OZiiB+zbhpQud8tUo8DX9NVgy0harjnd4f1TfNWp0dzw5+vBsIZLtw5e0vfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WNAo2lxNOzZRlWiw+t5EHZIoYhQWCP0E4S/Gl7DcQ9g=;
 b=rYMCHJSz2k7wwBp+aHwjsqdqG779DLgkXPUwSJoTvy0g+2Cgwo+ritJ9CCMl99kC8eUMkjAUq00L6pUWRQV17FOM+V++kntFzzvkNG3LEVlWvhL699JIhk94fzy3csuC6r3DyQwsqE5lUM8h6u0veBy8fuoXZ2rPkDO0q2RfM1UnZDAH+1Zn7/nBj1DcAc+mePOkKuCBETKaZ4ME9Tlk5YtxkTltpH0TIJc/j/pm/UBXtQPae5ug+VxKyTc91CRfCJxgS/d3NAf1nLac6N2XDIh04GJ8V00mdan0Ybak2FEzAzM76mHdREAP54nsUTUpZtQiq4IRc7559yEWmoQPVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4562.namprd11.prod.outlook.com (2603:10b6:5:2a8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.20; Tue, 8 Apr
 2025 21:43:44 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 21:43:44 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 03/10] drm/i915/dp_mst: Add support for fractional link bpps
 on MST
Date: Wed, 9 Apr 2025 00:43:33 +0300
Message-ID: <20250408214342.1953197-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250408214342.1953197-1-imre.deak@intel.com>
References: <20250408214342.1953197-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0060.eurprd04.prod.outlook.com
 (2603:10a6:10:234::35) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4562:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ce4afcf-b328-4d11-ac0b-08dd76e66f53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bUb09aGtS2Lb4zBXsBlR6VaO6TgkCZg8LbRwpR4XXK5qPESMNNPq/A5xzWhZ?=
 =?us-ascii?Q?73IyVQCfUayg9l7nlYUkIlop1MhosXFvqwmzHecFBHJSILG9uJyoyE253TgX?=
 =?us-ascii?Q?hwkSYpBCI0p3rk3kSD92VTPWKlpidRe7lwNgJNfWMzqxuDG4XMc1BglXTPRW?=
 =?us-ascii?Q?d10AJsBHuE+AqF/1pAN7B4HVpTSfOxiU1bpQk+bi8NpmGdAqC+KOq2oeihON?=
 =?us-ascii?Q?4/QAPL0dN2xWhsvXFDcLoAKPo9yfkGJf6ie6eL1qLqlmXTEOVHMqQWz/y7Rz?=
 =?us-ascii?Q?BqigLIKQsLEMGfjjviZk4qTE77EUla+zHA7yeQ/mL9oV0V9NiCEOpgiO5MQd?=
 =?us-ascii?Q?Lzo62Y2YuZC/LGkTxDBoMChD4rhimuWV7sTFPmKA/J3vY9SqeQ5xBsZAJupY?=
 =?us-ascii?Q?XlR37zIntMiJHK7veoNvonPtl0/v4bDQrcvkGzjdJncnTpIi70C37+2XM2qI?=
 =?us-ascii?Q?dD7Y5YXRuZiG49xKZ4T6sastkkFCDNWJ9AMqCHCllhaOPTeDCw/971kTpLAr?=
 =?us-ascii?Q?l5qHjDvpPYATkrQ3/yu2035Ovz9b62tjCoAez/f/hdlNYWDGamm/G2cOxnOL?=
 =?us-ascii?Q?gFRBWJ0nQwxHARePM+xa6ONxVrQLWAwwAmewsVsqlHfWTW2z7dDRHAtDXXJB?=
 =?us-ascii?Q?Tu4iak/9iug4+3Me4J5fULixwpNzAW9CDO7v/BC0qhXP0vnHTvy5MhPSMx7S?=
 =?us-ascii?Q?Htz0HdIx4/w2Wa5IOVWNLvya1rUTcDd8/1wH/r+ssfR3TDa4ME8w4AupFUSL?=
 =?us-ascii?Q?50MQHgs8qjl3o7W7+Qnreaa300ydUsqL3MTibhTlz4CFu4Ro46nl6zbTlWPK?=
 =?us-ascii?Q?1HxKEAmRB+E07+ZPFzwv02uyUfrZs/7VoCRZdpllv5UIiBqKCIPLS1BRTp+b?=
 =?us-ascii?Q?UJ/xwQBbN2SPtmwtiHY4r5hio+r2j8K8ozTaGMVl/rdjHwEhoNLoYgt3YATq?=
 =?us-ascii?Q?JPBuv3rtqN7QIDX+x4Mje5rz+IjrSGbK4ASdXFEwkyLuk6lvHAHwh5nHxpn/?=
 =?us-ascii?Q?BZOeI8ad+HY9Jik51VNXE9vZYlafbsZQpSz0BGvUZZ9w2kIKefgIu4TVkuQY?=
 =?us-ascii?Q?MS/1R5a3MCnWGiJrNvFU8ouVgB5RJBgkm9jYfEbOjBEsu1RO4CFYz1PHY3mE?=
 =?us-ascii?Q?yP8Mh6sVbBruSC+OzSB7tHbp6t/TaTXdj+HblyuFNcNraBSNDlG3uh1nGITt?=
 =?us-ascii?Q?QL42HXsuZE7pw0hWmjoRK/94lVr2/95XrG4KDt5MSOhqrgpTiJefUxvcbC8H?=
 =?us-ascii?Q?fTDUy8L0Rw8EZl1/WEjaD/2CxI8hN/Al8pClFvybnHtIKAiET3SMO4qPx8BS?=
 =?us-ascii?Q?EabjVrxwFaTYy5M4G1oV17EMVB2/EmUW6+ot5oVxtx6+5ObwJuoTQ+aXcOo8?=
 =?us-ascii?Q?HG3loGGQN+gS0+PdZs74fa0+WNO1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JFlLL9xLKJz4FKyDgPsqH1tQpHEVxMoO5bV19li+SqiKR4MSqOc6zKSTaXIM?=
 =?us-ascii?Q?QXIvdgkJswthyKvuTHebH4/1KtwCakNyRXjfJ1G8pzRcvKKOcDYrEl27Moad?=
 =?us-ascii?Q?HZht8vIUG/Mhj0e5Pk2quqJcVT+9PWQlSLSVLIHQvYVi6pGOsQFFr3bR0pYh?=
 =?us-ascii?Q?g4qdYVoPxPWb2zW273SmXyif4GiQGHPJYBDvc7oY6pjz7enGAwqnJPCCkNAK?=
 =?us-ascii?Q?qCLhw2UF8Ep7ltfMo2vB0JGnPJGql1Lyagfa2RkbWBConW7oXQCWyUvCBcaS?=
 =?us-ascii?Q?Akys49y3Xhu70ju7txJd+OtB/hv3KjG2X8fv6TrtBWBnPQ5Ft/vyVSXes/MS?=
 =?us-ascii?Q?Oe9llTFDZbifJ/cf84sNIH7PJf1q8i8Ll42dlzePX4b13kTZBgiSAV8KzmJx?=
 =?us-ascii?Q?wcxqi+h5SCUFO/xiV4WGw1klFcPVYXCzUOYTwvdlEl93Tlp93wk3znCoLGx2?=
 =?us-ascii?Q?PIxmZiAVGgfvDtx+5BQjU+OHAjd9j5D4WoGI45/hrkyJbycqaS3/X/kDC+Wx?=
 =?us-ascii?Q?+WYJZFUipoKZFtrprehRhjX/MBcHW4oSeXHWDVOK2BIjzhE50y6pc/n1VF7M?=
 =?us-ascii?Q?mKh+FJfGS55efBVdvdfTdX4tVFqJDiXn93bPPPTiN5ewdGaqF6z0dNkjF8uv?=
 =?us-ascii?Q?vv/QuJtA4mITlTIJ4MGCa3BK2a94DIMSIpg8TVQJENlf91aX1LsVEDuInumP?=
 =?us-ascii?Q?lFbViVqK5EgZinuzCprIh5LyCrotRWBW00OEP4AaYb6VZvTlTDRuPUzspylb?=
 =?us-ascii?Q?vEhhKETL0bSsIL4Qp6hpV41fsIOV6zun3Em0e/bpltFVVfluxYLfE3RJerBg?=
 =?us-ascii?Q?8r/xkE5GtwN1GB2XT0MhPiewglkvT0SgPoLftl22IexPNEXfnAL0TtDiAzsm?=
 =?us-ascii?Q?hdIpMphPbs4aL5vLMd1ZCIyht/+4XqkTbxt2q6+PWFcoXzshSxuToB7bMByr?=
 =?us-ascii?Q?vXtXNJkxchW06asczBvRSOKz+UMXlRaE39ybui9Z215QW0Vl9zzyIo7wYS6b?=
 =?us-ascii?Q?jbxN1wCNfNXeikI72pEXHDpdChWZ2uB/6NE5luFeM040BqLzlz6umUob7AW4?=
 =?us-ascii?Q?EhFJd8XHCdctdr/N0uHtNr36lobVA55tZGRYo1qubBZIy4CNZqo20qeN3SXu?=
 =?us-ascii?Q?2OX1DRLfhdrY3irxcaaPk27XWg8+STS7pg93WKWdSxcZAvBpAWiqtlQfbO/p?=
 =?us-ascii?Q?z6VOp8kwOcY2ATOOgZr+algL7CRHIjy0+gGsrEOhl6NVPr9hcZWNz3Nf+FlS?=
 =?us-ascii?Q?zScZayPKDWYpBB/GuG3xCCBHI5tNpJNkT6sc9SvYSgJXjXT/MbpbAo5amarD?=
 =?us-ascii?Q?O7wMbfe3R3vk8ZDjQF24pPYegA/whuJZEncVyPiFQEj0MaBCKJqTL+fHOp1l?=
 =?us-ascii?Q?wJybC89SoXoNUJZP5gRBkgxUc2GQUFs6pUTct7Ck6dcQA9zPngEa3+OcW1FK?=
 =?us-ascii?Q?fXQXERDMndB3+Ii8ECRw/vox2NdJLSb94MVhqNVPywPvMrsRDYuCgzV337CB?=
 =?us-ascii?Q?q6RoeTK4CVekZJSYYxj63CI4aeNFZMsLbKkI19A9gPTZoSGNmNky6b7AuzaY?=
 =?us-ascii?Q?hWGei/mhEoXuNp1bmL8acZMbmlFALxX/LP3TvisJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ce4afcf-b328-4d11-ac0b-08dd76e66f53
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:43:44.0433 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: //FXKYBNf4rrLwBI5tkC9UUZGPHEmoSO4gY4VMnKyzIURTl6+hzJU4nB4wCwUE/h3p2Z1jpYgHXiWvy1lR6xEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4562
X-OriginatorOrg: intel.com
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

Add support for a fractional link bpp on an MST link. Leave enabling a
fractional bpp to a follow-up change.

This keeps the mode validation specific maximum link bpp as a
rounded-down integer value still, changing that to a fractional value is
left for later.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 39 ++++++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 23 +++++-------
 3 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 14c3d5e10a430..2944ae0d53e32 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -846,21 +846,22 @@ small_joiner_ram_size_bits(struct intel_display *display)
 		return 6144 * 8;
 }
 
-u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp)
+int intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, int link_bpp_x16, int pipe_bpp)
 {
-	u32 bits_per_pixel = bpp;
 	int i;
 
 	/* Error out if the max bpp is less than smallest allowed valid bpp */
-	if (bits_per_pixel < valid_dsc_bpp[0]) {
-		drm_dbg_kms(display->drm, "Unsupported BPP %u, min %u\n",
-			    bits_per_pixel, valid_dsc_bpp[0]);
+	if (link_bpp_x16 < fxp_q4_from_int(valid_dsc_bpp[0])) {
+		drm_dbg_kms(display->drm,
+			    "Unsupported BPP " FXP_Q4_FMT ", min " FXP_Q4_FMT "\n",
+			    FXP_Q4_ARGS(link_bpp_x16),
+			    FXP_Q4_ARGS(fxp_q4_from_int(valid_dsc_bpp[0])));
 		return 0;
 	}
 
 	/* From XE_LPD onwards we support from bpc upto uncompressed bpp-1 BPPs */
 	if (DISPLAY_VER(display) >= 13) {
-		bits_per_pixel = min(bits_per_pixel, pipe_bpp - 1);
+		link_bpp_x16 = min(link_bpp_x16, fxp_q4_from_int(pipe_bpp - 1));
 
 		/*
 		 * According to BSpec, 27 is the max DSC output bpp,
@@ -870,26 +871,28 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 p
 		 * that and probably means we can't fit the required mode, even with
 		 * DSC enabled.
 		 */
-		if (bits_per_pixel < 8) {
+		if (link_bpp_x16 < fxp_q4_from_int(8)) {
 			drm_dbg_kms(display->drm,
-				    "Unsupported BPP %u, min 8\n",
-				    bits_per_pixel);
+				    "Unsupported BPP " FXP_Q4_FMT ", min " FXP_Q4_FMT "\n",
+				    FXP_Q4_ARGS(link_bpp_x16), FXP_Q4_ARGS(fxp_q4_from_int(8)));
 			return 0;
 		}
-		bits_per_pixel = min_t(u32, bits_per_pixel, 27);
+		link_bpp_x16 = min(link_bpp_x16, fxp_q4_from_int(27));
 	} else {
 		/* Find the nearest match in the array of known BPPs from VESA */
 		for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
-			if (bits_per_pixel < valid_dsc_bpp[i + 1])
+			if (link_bpp_x16 < fxp_q4_from_int(valid_dsc_bpp[i + 1]))
 				break;
 		}
-		drm_dbg_kms(display->drm, "Set dsc bpp from %d to VESA %d\n",
-			    bits_per_pixel, valid_dsc_bpp[i]);
+		drm_dbg_kms(display->drm,
+			    "Set dsc bpp from " FXP_Q4_FMT " to VESA " FXP_Q4_FMT "\n",
+			    FXP_Q4_ARGS(link_bpp_x16),
+			    FXP_Q4_ARGS(fxp_q4_from_int(valid_dsc_bpp[i])));
 
-		bits_per_pixel = valid_dsc_bpp[i];
+		link_bpp_x16 = fxp_q4_from_int(valid_dsc_bpp[i]);
 	}
 
-	return bits_per_pixel;
+	return link_bpp_x16;
 }
 
 static int bigjoiner_interface_bits(struct intel_display *display)
@@ -955,6 +958,7 @@ u32 get_max_compressed_bpp_with_joiner(struct intel_display *display,
 	return max_bpp;
 }
 
+/* TODO: return a bpp_x16 value */
 u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
 					u32 link_clock, u32 lane_count,
 					u32 mode_clock, u32 mode_hdisplay,
@@ -1007,9 +1011,10 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
 							    mode_hdisplay, num_joined_pipes);
 	bits_per_pixel = min(bits_per_pixel, joiner_max_bpp);
 
-	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(display, bits_per_pixel, pipe_bpp);
+	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(display,
+							fxp_q4_from_int(bits_per_pixel), pipe_bpp);
 
-	return bits_per_pixel;
+	return fxp_q4_to_int(bits_per_pixel);
 }
 
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 98f90955fdb1d..f3ca6966abe00 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -173,7 +173,7 @@ bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
 			   const struct intel_connector *connector,
 			   const struct intel_crtc_state *crtc_state);
 
-u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp);
+int intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, int link_bpp_x16, int pipe_bpp);
 
 void intel_ddi_update_pipe(struct intel_atomic_state *state,
 			   struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index cde662daed5a4..4e607c0853cbd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -457,7 +457,6 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 	int num_bpc;
 	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
-	int min_compressed_bpp, max_compressed_bpp;
 
 	max_bpp = limits->pipe.max_bpp;
 	min_bpp = limits->pipe.min_bpp;
@@ -482,24 +481,20 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 
 	crtc_state->pipe_bpp = max_bpp;
 
-	max_compressed_bpp = fxp_q4_to_int(limits->link.max_bpp_x16);
-	min_compressed_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
-
-	drm_dbg_kms(display->drm, "DSC Sink supported compressed min bpp %d compressed max bpp %d\n",
-		    min_compressed_bpp, max_compressed_bpp);
-
-	/* Align compressed bpps according to our own constraints */
-	max_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(display, max_compressed_bpp,
-							    crtc_state->pipe_bpp);
-	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(display, min_compressed_bpp,
-							    crtc_state->pipe_bpp);
+	drm_dbg_kms(display->drm,
+		    "DSC Sink supported compressed min bpp " FXP_Q4_FMT " compressed max bpp " FXP_Q4_FMT "\n",
+		    FXP_Q4_ARGS(limits->link.min_bpp_x16), FXP_Q4_ARGS(limits->link.max_bpp_x16));
 
 	crtc_state->lane_count = limits->max_lane_count;
 	crtc_state->port_clock = limits->max_rate;
 
 	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
-					      fxp_q4_from_int(min_compressed_bpp),
-					      fxp_q4_from_int(max_compressed_bpp),
+					      intel_dp_dsc_nearest_valid_bpp(display,
+									     limits->link.min_bpp_x16,
+									     crtc_state->pipe_bpp),
+					      intel_dp_dsc_nearest_valid_bpp(display,
+									     limits->link.max_bpp_x16,
+									     crtc_state->pipe_bpp),
 					      fxp_q4_from_int(1), true);
 }
 
-- 
2.44.2

