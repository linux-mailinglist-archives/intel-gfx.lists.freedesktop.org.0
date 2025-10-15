Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 583E9BDF9E0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 18:20:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 359C710E88A;
	Wed, 15 Oct 2025 16:20:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gejcqLln";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7711810E87D;
 Wed, 15 Oct 2025 16:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760545212; x=1792081212;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=mI/+9wqFrFiJv8lr3p3e2BODUoLVvQO54zWM9gRvGPc=;
 b=gejcqLlnjOAHJaENeYD3DSIxu2QiyGYAkvzjjtqRhoFo2NBeqltmdOP3
 qqBTVHKEfYAQTp52zrn5vHxS3Z+dBX/1Qg1Z0apX3tcoi+Rkj3VrJkDKw
 3PNM1eMt68VdpeUlKCs7mO9hHkm8JhS2K5WxcoMpomXgaP3tJxiXmoQmX
 7zxVMygTXBB2/n1eBhXnFAGOwzfP63ObqilVhqbgUqa8DMC/eRrzpiQj0
 gm901a8Jyg6ILbE7CYIIt2l5QKtyN17ShPbXROHT1agmlbWUat3MWk/U7
 OSNQeZgXYfVcUvW4ivYRyTDiKRyDDVOKAGdt6hoDxD/uquXZWSNo6D5VW Q==;
X-CSE-ConnectionGUID: JhLLnsBBSnObo5B4ZiYQug==
X-CSE-MsgGUID: ivtgouLmQ/2Q1Y+yyrIojg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="73837282"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="73837282"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:11 -0700
X-CSE-ConnectionGUID: +hlGjggVSOmbQ6fGGqrUrw==
X-CSE-MsgGUID: M9JkTvEGQ1WX5qCuL/PpoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181344533"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:20:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:10 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 09:20:10 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:20:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ipLel0dUlQfDDGNRES7512yAkRbfOrX0b75iHCondvvh9ZYFjLBpA0xxGmdQ/wIaebrChLD8ko0T076G9XIhmG1sY+xRWmC6UkPaxBwlzNDA29Nq6MP31D2WzrCORyHD5MO7YOTtp6Su/j3x85OQ/E2rxdy5qEyK93X97oSyBkXjB2W3hmhG0r6eP2OkvgSLWmu0R07rSK/2khgC1UCJTSATAHOicB7/XkpxM9jDP4g1O9BQuP5/+mHRLVZeLUA7xoclkA9v5dkjFaASwKEI/yg7obsxQdx6AMQ+uZLTxg4zdBK3MnOuy/3TQ7OCAz8+xJPWNWpFpYa+0ADOzsZFBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7tB0DZnOyRoRAJvvi+8dXjtpSCseVVEOl71cb/blUDg=;
 b=Cp+sacgmut07l8NAIr3xAei3QleaWHeLX2Z0w4stJn8pqZMjgiPXB41lFd6aFBcZt3t6lfDbnr4PqOgkrdjIP/lSvQ78WD62/Aat7SuyXerUKSRKZhIywvMvxsEmorSj+hUf4QnHmkPg83pKpQ3GdeDsoraL9sy3MYByDDfPjfbO0JHJCQgYRjh4Csa9rkzVyL0Gt24VxjtSneuuYFdS97eyn1BdmTKPpNzG9Yk7iZ4oMYEmHe/47poOqac071T3Cf2Aw9NBN6V/fstTW1FWxhM+bmMvd37c4csfd2nF6lM1AkbGUqXOhzjol/oIrtoSsOzEEuKwFM1mEbT6amzPBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB7046.namprd11.prod.outlook.com (2603:10b6:510:216::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 16:20:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 16:20:05 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 5/7] drm/i915/dp_mst: Track DSC enabled status on the MST
 link
Date: Wed, 15 Oct 2025 19:19:32 +0300
Message-ID: <20251015161934.262108-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251015161934.262108-1-imre.deak@intel.com>
References: <20251015161934.262108-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0188.eurprd04.prod.outlook.com
 (2603:10a6:10:28d::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB7046:EE_
X-MS-Office365-Filtering-Correlation-Id: b17efea3-448d-4a87-1856-08de0c06b37d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KPlN27Qgda8+lFW8IKgn3U+L3J4eVN4TfwhZX/NOQ44qGUlNDz4+I2WyRCNA?=
 =?us-ascii?Q?UotgwQ8eVibPZZgzGMeCW6SE04MjpgP92cpf8TXSoyHjjVTn2uGqs1yeWnB2?=
 =?us-ascii?Q?BDG9MzxSohr/GWg3CLXMA+DyeAt9R0QEhE4dRfQY1nbM/207ul+FQvo3gZy/?=
 =?us-ascii?Q?QpSULquaKi1r4I5/08f4Gt1Weh7NIQlRyIAYgseZjhKwIVywU+vmQsSybQTq?=
 =?us-ascii?Q?MAigAFNTZ7jIsKCa6cWCvHHJIshCRPtbe0elWHI7T98XaBe/fbQQypiAMO/D?=
 =?us-ascii?Q?PUMqVaGqPbkTWR2HtrygQtZT3eCAqEzPPGOjCE2xZUIFbwbq+6DoY/C1FNlw?=
 =?us-ascii?Q?umt6hnbHPBPCc3Tg2hFE9Sbw3J4jAnM6c3B9kNMw+EnBGCECPO6pg4zmEmuc?=
 =?us-ascii?Q?yRBnHd74Mu/Kavdo4jYJDZHhUndnyTfWLwNehDkYOZtS6Hx8kAbpni0+BWQx?=
 =?us-ascii?Q?pqaGIyCndcsU4cYGIOsJPIi0Jns9Ixp8LMiED0IDrPor0xhkR6+o9D0nn07C?=
 =?us-ascii?Q?LAoL4EZNaoPIv0m6W0pvlHH8sgN8wg/9N2gARU6RrR1cimriWF61fO1ad99s?=
 =?us-ascii?Q?4zfN6hvEQITONJlpATU94HaVhbgD6qwldmb/atsxcVMQf35ClLvodyBFIQjM?=
 =?us-ascii?Q?neKjsF42fmGyQlqlxoVV74j0UADthUIYSNaLJqkIw9M3jonwW4tCDqGNDgki?=
 =?us-ascii?Q?rLrlZZz62+YrM2fu4FScCNMl7edUCyZsLu436kRv+pVP9PayeQ41y7J7rUSn?=
 =?us-ascii?Q?nqZ2xpdLcfKT07SKHVz3w8ts3TZSjMnj+kNNJOIKjaglbF8WLS7wE+9a6po4?=
 =?us-ascii?Q?7hbkpa4meOlcvVWFyd1leIWufIXG6yR56urqN/SeRN4VCTEmAEC9UDLAnzug?=
 =?us-ascii?Q?w7atuE0UFoEuAqSXx6dbkrs/7Wgzpde9PZFXdFXb6DBYc6aniie20K9xNopk?=
 =?us-ascii?Q?2bjEzajL7vGZcAU3nIPITf8M76KYnR39Hg4yeEAVn/eafSgPnLMVyxUiipsG?=
 =?us-ascii?Q?aC/t6dx/vmlr/V2dyfPeTvU/oD/9znznRNZfaRcnwhb0zv1gtUxiTV4w6B/M?=
 =?us-ascii?Q?S22RsvLWH9CthFl2Uvpo3/NeOzJeXMrpOgL5JbfiDcHU8MnnSCZ1oBAwS09E?=
 =?us-ascii?Q?q0WZNflgcdAJNw674x+ESn2Bg9oV+c+EBSLWeF/ohbvuzNl1unZqI9Hd91Uv?=
 =?us-ascii?Q?vkR9ZCUUEKexuHi4hMcmzyW51YxePN7mBz5j0IbHcm+y7N0LtVfa8FKgatS3?=
 =?us-ascii?Q?n9afdsTxB15n1yIyAxxG8X+2h4UV3AgjsuLOPNL+jNEGKfIRIEV5XVomFrlz?=
 =?us-ascii?Q?kTyBJUR0Mu40E/G/pEbAqBEzt6ETKFxUtMZ0snrO8umGkGAx3/5v72phuFXC?=
 =?us-ascii?Q?XyBLm7fXbbD3lx6UpvQb2xrJf9zaEjOLawYzq0XCPEFhbCpWCS/CcHW3hNS6?=
 =?us-ascii?Q?ZuXZYQkAxxWwPY5DBWxN6ULJCiYnIZ9t?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4U5M49yeYj/yb5Cp/p5dF+FPLrLWyBk5eDOZNkOBxoivLdtfxS3sSAJtScnC?=
 =?us-ascii?Q?nYWLhlsUjAtlQoy5iAbfYz4TkwLtgo2Q/dwUvNNu5GxXnW3qtOYx77gwjkon?=
 =?us-ascii?Q?fTvRhZdQru82Z1G9+un6m4cZqzeaBi96Sl3r8Q2BlNjKd3TTAMUnRCHLiuDc?=
 =?us-ascii?Q?BM4eWjwiXm8vXVYO+nY6zPYUoMEiMk/Jc/VmKIjbBmBVWyKW4LquUoE3mfZE?=
 =?us-ascii?Q?oNGU0ImK65lKJtEPM2tr1xofdbnCmePbUFwyHzwlRVJgZ6aVX/ZWMJZYw9kk?=
 =?us-ascii?Q?ziFAGiB0NM07lOWoGW/E57fg9o7dp4+I4k2Bw8GCvYyqJwVjcWxYwZEdqryz?=
 =?us-ascii?Q?r/jxt1h8OwH1wv9FZ3+Q1lA+TRKSohDzl+QZ3EgWHtKAScYtB+/2KC8+EdRo?=
 =?us-ascii?Q?3sAcw0mEniHdC1lfEym0ptI6L0/+iKzZTaI5WcWl2hT6mma9hoznnIuG64Dr?=
 =?us-ascii?Q?r2QZzIPnSV1cdASoYXCxsCvk6HxMoP+Vu1MYtielsTyiek6nnL5mqP2Wxuci?=
 =?us-ascii?Q?V9TZ2hiXtNRzthblHo+PNXf34rUdpO68J6wIIVr6QmZeKbd2fZfUs2ZSnr7e?=
 =?us-ascii?Q?WYJd0KRAAaDdEWT6xdRRXjw8bJEQgR0O19tQAev3WkFPUsIwcHAdGuVdjkU3?=
 =?us-ascii?Q?DudaVttPVl+GO9YtxjEmDQvTYmMxxOkPjaZb4fjLV206C1ksVQFZCH9vGrEs?=
 =?us-ascii?Q?v0MLDWUiYisuNAJ/lMnk0fQEeVWgig64h6dOmGffSii5B5V6huAaash1wpHU?=
 =?us-ascii?Q?2adcbC1Subh2GwjHt+LvH8yzS01rLbLaOdt95OvvCIXSeAcHQnp5ZhM9B6Do?=
 =?us-ascii?Q?bzrUKF4OY0WtWdxO6UcloQpjzc9JGlL6Pgltzd+2Wziaw9k/EI6Pv8LYn//a?=
 =?us-ascii?Q?1Twvs0CwNkaKagZw6FXRxMBRw1ItgAsIy9yVoL99QFafaSVzfiYuh3iUalh7?=
 =?us-ascii?Q?IrrLF+MrtdpJzLBkiT0+I4q64ZmWrt6HyzuStPuer+5a3HuBjGTDy2iF70Ry?=
 =?us-ascii?Q?vmfhl2mg37miJIWvgmwPLGG+eqSiXzobEUUhKninAmCb8iVLlekfW8pZG2Sx?=
 =?us-ascii?Q?hOI2QM4/m9P+Ly87CpI/asgvfgdhsT4+aI6PFwHEAfN3Uz9p6DfGRMZWmTku?=
 =?us-ascii?Q?cut99EOMH8SMB0VwO4ezTxFa+mJ5resiCwEdbQC58ojTSLvWze58yeUqnHN7?=
 =?us-ascii?Q?XTewR9mhulIboyE1yLL7BiPfITkS2xXdzoykI1UX8L12qzlNxrdCxEg0U3F9?=
 =?us-ascii?Q?q0pVmTNc8zzkai6z1TB/d9jjG/B5w2XJe+VUeky5Unc6ybk2faI9T/h3Wey+?=
 =?us-ascii?Q?cXxgM000S9jBvrxSKtsSD2nSnNEG3YNYYpfTpoPg3d/aBfrskH0aDqoOghYr?=
 =?us-ascii?Q?zEr8JZsIXzVyDBnHQIex0tIZ5+YaKezTSCuWQp7/aJmn+DTRxHdrhquRiZBn?=
 =?us-ascii?Q?et0Pf0bc0uuiarn76wSFczeJl08Qp9vyzmYxPYSbs4ZJvO8W8mQQy357dBrU?=
 =?us-ascii?Q?L/HVz9MIMwOd0NbCL9BxhIRtPUQDwGfbFzVjkP9YbJX5D1dgV2l+P2GjLVdA?=
 =?us-ascii?Q?rqHBbumX5XotDsya4biQDX90SfeZ/v437HogdOq343gZQA/zTM6lpJpxrWr0?=
 =?us-ascii?Q?NH5nUELBLppNPudzPZ7secYPNymdjM/ncyM6tXJavvXc?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b17efea3-448d-4a87-1856-08de0c06b37d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 16:20:05.5182 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1QS5sSAWgzPaHR3C0HuxX8KtSdDTHn2PE0/iDX6u6OveM/Mre7wkkb4i4xOCv1OE2f+jf3QFS5pkxEm73WivHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7046
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

Track whether DSC is enabled on any CRTC on a link. On DP-SST (and DSI)
this will always match the CRTC's DSC state, those links having only a
single stream (aka CRTC). For instance, on DP-MST if DSC is enabled for
CRTC#0, but disabled for CRTC#1, the DSC/FEC state for these CRTCs will
be as follows:

CRTC#0:
 - compression_enable = true
 - compression_enabled_on_link = true
 - fec_enable = true for 8b10b, false for 128b132b

CRTC#1:
 - compression_enable = false
 - compression_enabled_on_link = true
 - fec_enable = true for 8b10b, false for 128b132b

This patch only sets compression_enabled_on_link for CRTC#0 above and
enables FEC on CRTC#0 if DSC was enabled on any other CRTC on the 8b10b
MST link. A follow-up change will make sure that the state of all the
CRTCs (CRTC#1 above) on an MST link is recomputed if DSC gets enabled on
any CRTC, setting compression_enabled_on_link and fec_enable for these.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c            |  2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c          | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.h          |  1 +
 4 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 87b7cec35320f..58308146697ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1277,6 +1277,8 @@ struct intel_crtc_state {
 
 	/* Display Stream compression state */
 	struct {
+		/* Only used for state computation, not read out from the HW. */
+		bool compression_enabled_on_link;
 		bool compression_enable;
 		int num_streams;
 		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3ffb015004c54..8ba931204cb52 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2387,7 +2387,7 @@ bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state *crtc_state,
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
 		return false;
 
-	return dsc_enabled_on_crtc;
+	return dsc_enabled_on_crtc || intel_dsc_enabled_on_link(crtc_state);
 }
 
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 64a1e9f0a1893..316753205ac45 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -374,9 +374,20 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 
 void intel_dsc_enable_on_crtc(struct intel_crtc_state *crtc_state)
 {
+	crtc_state->dsc.compression_enabled_on_link = true;
 	crtc_state->dsc.compression_enable = true;
 }
 
+bool intel_dsc_enabled_on_link(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	drm_WARN_ON(display->drm, crtc_state->dsc.compression_enable &&
+		    !crtc_state->dsc.compression_enabled_on_link);
+
+	return crtc_state->dsc.compression_enabled_on_link;
+}
+
 enum intel_display_power_domain
 intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 240bef82d3576..9c52ece0027c3 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -21,6 +21,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
 int intel_dsc_compute_params(struct intel_crtc_state *pipe_config);
 void intel_dsc_enable_on_crtc(struct intel_crtc_state *crtc_state);
+bool intel_dsc_enabled_on_link(const struct intel_crtc_state *crtc_state);
 void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
 enum intel_display_power_domain
 intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
-- 
2.49.1

