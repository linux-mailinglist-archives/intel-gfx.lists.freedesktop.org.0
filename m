Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9285EB9A989
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 17:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E993310E769;
	Wed, 24 Sep 2025 15:24:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YrkLFzFM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEC6410E767;
 Wed, 24 Sep 2025 15:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758727458; x=1790263458;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=S7Zw/MZJkNKauXweBJef6P899112WLblNegwPekE2ZY=;
 b=YrkLFzFMDgg5Kl9gdm1zWUZrUGrgfiBVvGODHP5KG+lIMiTIN6WBQHFq
 8+pMfGY5/tRdyfwNtXvJECrMlY6JajJYr3fTl1Q/trohY14lghK1vuR3X
 SoonlI3bg1UE0HZy38PDmw7p18fj/veu3swCt6uEtiv0mFMzG2QGZnhbH
 rXqLvPNjiAjTI0SaO5//6GevOm7hQGkmYvmSv/N4jbHeaeCQMggjZ2kUc
 /lvwX//odNeY0o3weFo8vW7UXvMz3rhe2FyyqxYuO4ZhQViF788bjb7Vh
 N4BYZ4HjH3WSeWWzIfXZFDkqVWE6tNkwwv4r9/H67G8/AjaU10oLfGlmL g==;
X-CSE-ConnectionGUID: uJ78Lo/FRFyGRfD1x7GU5g==
X-CSE-MsgGUID: mIJiXbvvRqeSpTCJDB9NYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="71706774"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="71706774"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 08:24:18 -0700
X-CSE-ConnectionGUID: TuJjuROVQWe55NzHgfGNGQ==
X-CSE-MsgGUID: wuNBQKFvQN+Wks2MZh5tuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176653370"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 08:24:17 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 08:24:16 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 08:24:16 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.1) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 08:24:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K3JpbO+WHN2SXHxjX6OI6YNq0by0/aiiCmILVNuBktXB2lWYZKcjaSyLKraH829daKFCOqK9MToePatRxVhUzdzJ6loyzJIRQ3x8J+aasHOhY+54V56IXtikLeKOmfZverLvG8tOmnaPB5asp8cMSEQYPiuxQMdKsLeaWyptZhFCD+HwbHLljWS+skS1R9J1xoZmSxQMtITQ7YKhVnk810m1C8Emd1E29vBR0dpkKcgJ5b65cDQolZFHseNKzIz87MR4wb1Xs803EHcz85L33w3Wr74pKVwUTOTjjuhPVv7b1KKC8J8O+VTD5507g49Dc05ttG6t8V3v1JD+g9j0Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H/y/HoBkXTVBOMuh5ZwBhip1LhZ2i5mY4lj8MmLjzzo=;
 b=hgOVoTp5gazUjffiXfrXAGBoONuXu/ynezCcMWJLXZawrHQbBB7n+3iAPsw+QPyX0i5fU2D85KvgokX4G//4TlBPd0rf/rixRtWlkcW2/nXfaeQVFUcuK7/tGfV9wkjVeBP5y7TQFXQH3t9vBn6t9wu3T8LgwAakXQK2NDlNBk9cwmIHv66gCMAsCGXN2RPHMlsz05Lm0skY8g3x4gU8iu2J5LcWEkJ40rB+u0JI21XHD1/ae3GiaMSTxh8KRaYCW0y4QTurykL6w6kVjExj3n+p6tH2LiLECZgjLakOWBkCvQgzjW5D0R//sV/qFlQsleGzTjYwUNH0I9OfNlYlRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA4PR11MB8962.namprd11.prod.outlook.com (2603:10b6:208:565::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Wed, 24 Sep
 2025 15:24:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9160.008; Wed, 24 Sep 2025
 15:24:02 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v3 4/6] drm/i915/dp: Pass DPCD device descriptor to
 intel_dp_get_dsc_sink_cap()
Date: Wed, 24 Sep 2025 18:23:30 +0300
Message-ID: <20250924152332.359768-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250924152332.359768-1-imre.deak@intel.com>
References: <20250924152332.359768-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0030.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::16) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA4PR11MB8962:EE_
X-MS-Office365-Filtering-Correlation-Id: ae1980d1-e82f-4b5f-c8de-08ddfb7e63ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vTq8m3vsZHK4YX0WrUM4GYvl8Y2VA7tnpgB4qBOfL5BVMaE718lMCTsqn1GP?=
 =?us-ascii?Q?K0U9UNYHxN39SnfaUaOhCcYyq9FJHJyCJ61y0M4bppXZnljvksT8OBvzl0zi?=
 =?us-ascii?Q?T+IT6621zDuRKckl2TFbmdlw1BLbl0cXQYrTlewmODPGq52H/UuxXQJPgeI0?=
 =?us-ascii?Q?1j5v6zaTT4esG1llZJU6oPMaWOKQhrcErpJNX/6w7RzkiPyD6aj+MqagZ6yz?=
 =?us-ascii?Q?MZkxfX4iRDGNX6LdKteGvB05V54jSWfq9jm9i3Yg3gpB+TFtXeXHF/ALiMLQ?=
 =?us-ascii?Q?d4QnG9hPGdz4k3+L2Q6h5zZ6nWV6QiQ1ppyfCBytIX4OoqXo85Q/SA5ob49j?=
 =?us-ascii?Q?pyZnZV5/yi/g4/TPHNq5T4cXG21gcnEteIremQYU69JcZr/5Sf95zJHP6FGM?=
 =?us-ascii?Q?QWcjNPQvb/jrfYNOPdPiU/o7c94F8xTSl6Av8FQHdUH/VmHT9sYRAeFq7YMb?=
 =?us-ascii?Q?BVVluUi2OYDORS0jguQK80kyHVJmJXv1sv54v0MfqCz2PMaSw1+HSgc3ZS6a?=
 =?us-ascii?Q?0QQDLCXTtvuUCvl8PRpBnRyCOblFnlHZcLBLdgPAY15nV6mINbM5xy4PVPvK?=
 =?us-ascii?Q?p32ll605HpmgrFC+/666kQFGAqvFecrPdZ3vexCoRcbHRR0GmDrAn5DUDWip?=
 =?us-ascii?Q?sF+jYHDlr/FYi4/ZrzA15GnaN8MEwR3S1F7lxytQ/pn5eURe0QVCcCTYv4RR?=
 =?us-ascii?Q?hah1eZsrwn1Jj70U+ym9iTmRhXPfOpsCywMHWPutUKpVQ6hpvXtRqOuv36QC?=
 =?us-ascii?Q?enB0V2Q4kW7q6s1q0Yn5jgymqfQEv7JXJsrxlZkxdLzBpNyY+KNyRzg1Mccf?=
 =?us-ascii?Q?6hjHPitR8DGfLuVP08XPDBz9vcxIW8SY+3pS1sY5+181oCBEhiX+lDOeVclv?=
 =?us-ascii?Q?UGsp1GMs4YY0RhyPt9esXu7RiWSdlxbz1IX+ulLp/JKGegQ7A9TjM5O6cb0D?=
 =?us-ascii?Q?kvFJV1L/mKWn2UcJVsStir+Wybp/rN5MXhwl/bNmHipwlchZTKhFV0HpGkqD?=
 =?us-ascii?Q?d34+WKuIvAm5T2VBVZesafw0pg8aMYBt9hAWKpAkeVoKYSnzqvmBK+XwP2H3?=
 =?us-ascii?Q?oWBOjg56CiJBxEIYLI/6ELh69HQrS3Fk/NlU0YBNR4qiWlmituUMnW9teQPQ?=
 =?us-ascii?Q?b7GRfL8uPEHuCm+4PlPywcmQKz1fGJgCOUFU9atbSZWp/bPL2/HGxj12M+WF?=
 =?us-ascii?Q?qKJcq2ZdJhsPSrRv2Jts0wclR7U5htx0yBICckybtCjcg2TuWRQsqAvXPFny?=
 =?us-ascii?Q?OTsp9UZlqJQ1ndWnVQpWGbvTII52MtV3RR6PWXD0ttEeU/E7DUD0pY3OK4mB?=
 =?us-ascii?Q?FANXT+HhoiBIO7p2Zfj9Mkx4pDEBhlaIwmyNrjsi++ELBhvdCrdnRgIY6k1x?=
 =?us-ascii?Q?ZFQd6kUfVkYYLx/+qw5DC2mVT/xDgzCpfIn9rXlHkDnNMW7+Fph2mwT3oTzm?=
 =?us-ascii?Q?EoqUEc8l6Qk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?piW+eE1DZa+41uevyK7PEBqe4Ope7BsJKW0pODg9p25DvYqAZSVEjl5xqUWJ?=
 =?us-ascii?Q?eFZxo3BxghiABf7PVDcXg4TfBFevoBJyr1Hxmiink01e8b167OP5/jVOx0IC?=
 =?us-ascii?Q?XVR5F0pu1nyVJQUi5uMFbYQuaFGC14mutitqzRIpksrbTG/FjpwQJuW4fwul?=
 =?us-ascii?Q?Te3tUREq6w9XfArDnFsslA5tKLL8Z2A2GAtbQwXIXqUgsbrKMQefALq6V5Zb?=
 =?us-ascii?Q?VkO4DfO5MYlUm+ov1cLlEjKnO7Piq5yUnFOy6+Qic0CuQ/m4q+voZ/iAbECV?=
 =?us-ascii?Q?ouUQvxgqRIk+nw5YXo/OqjWqAlH59DZZRl7kfCK+Q79uV34ZMJWERtM4Xs2n?=
 =?us-ascii?Q?hL7UOUqwpSnlErq77gHsNdaE1oOExCMBQvT6kDkddILjQ/EftB37QaZY2IHE?=
 =?us-ascii?Q?pppT0NoxNcyUOwyRh+oErJUEP9+Wu7G1K+VGXHtGWHM4QcAfEN2jTebgWXCg?=
 =?us-ascii?Q?U4ofgybAMnMbDfEXpIAFr5DO6MLHLXJuPfO/m71SToQPY6jP0RX9gj+C/1kt?=
 =?us-ascii?Q?dxL7/pNIsgT9OKUZxI5cHhnZTYH1dfIDF8CrbrnQZCZP9Ad7ZFLX611+g3n8?=
 =?us-ascii?Q?fuZOGrKCNNuQpxS2cyct/87SwuETpxi6WGsX+mk7lSJvC97ytbp+ZCaOMzHA?=
 =?us-ascii?Q?XsV1EQPDV/cS3AdD8f7DjSW5rTTuJHb3jH3krsJbNLVTS5968gQ1t9kC9TN6?=
 =?us-ascii?Q?Gh0JrEad5jSa6c6M8SSv3dMG1n8qLHDfpdIuHrTTwzFSvXBk2Cy3rLuIjOsq?=
 =?us-ascii?Q?5Rnne+EyhB12/58BnNHKmDrVGRmzfk6IPnCr6lhlCeEAv4dveJd9bsRiByuN?=
 =?us-ascii?Q?1pQgwDt83mp2dbC8wYyKDKbsSu8hxStqfBQEyL27Cp0dUXc08e4v4iIWoTQB?=
 =?us-ascii?Q?epS7+8X1XO/vOpeIh12fjvzB/tME69Rpo4aJOIf7yioxzRl9gZx9+E8cJqPS?=
 =?us-ascii?Q?fmhDySn/u5w3iQOG3/cUsdTZ8QUHvXSKjRyNquaoERs2i8lScxFWuHPBkKoU?=
 =?us-ascii?Q?DF4PrlmysiKYD4eMO/YiOF6gq5eQsdzeP0x2cpTyog1AOpiUAZPr9sl9rcSv?=
 =?us-ascii?Q?p+DzTpGNcXo1uKtHfqE0//jF2sX8G3ZJSLTXYw8DZsQpaK6zNcpCJvVf6AI1?=
 =?us-ascii?Q?haevhOAIVpz+yd2gGisUG3l8h4Kn6FchcNGk4r2kjU5OfUMmwDQTR5KgJO37?=
 =?us-ascii?Q?8Gye/2DtEoHqnbSZXwjfc2lxtbmvVshSEZW2JppyYCOtJ9t+Sz9+JnTfQkuV?=
 =?us-ascii?Q?iv0gynER6bLgrx1SPbC58vTVQ1OxYj8L0MemgGI1iLLxd0F59P1wbn7/xMto?=
 =?us-ascii?Q?vDsmbPNuT8nb/QKd+Pnc2XsC+4Td4c2AKbzStlFTy3aw6Fxo2GY7k8vtRL+H?=
 =?us-ascii?Q?HhXCtJwt+yJwlT9RWn3FbrcIWdM8ZtsiauGfRwWuASzQRwbE7GKxYwD4nTY0?=
 =?us-ascii?Q?xtYr9fJ0KCZ+6P/hHSf9+BQzUdEBG0mBCR7GeLi7xfZo2apjv9glq0K1eBpN?=
 =?us-ascii?Q?w9Tgzmzc6r5Q0Ad5lAkVmD+mCTTEyVNq05KD8EfcoGCUtKLe2xkLbIq3snqJ?=
 =?us-ascii?Q?qcDqXkmkwWhFaRzjT6XaWKUg2oq7wWVDQNDrWiGynhfhvzmfmZo/5fXh7cK2?=
 =?us-ascii?Q?hQqI29mWmNCGRC+Z0epQpLQaxw22L1ie/jMKwDNLTqZB?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae1980d1-e82f-4b5f-c8de-08ddfb7e63ff
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 15:24:02.0888 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eIWdWr/+q3yRejjJN10gMTe4CRrxg0BN3nVk2yF381BO4PrsaEhb08NeDFFiTdb736tSDz9yoLUJxH2eAqiTsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8962
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

Pass the DPCD sink/branch device descriptor along with the
is_branch/sink flag to intel_dp_get_dsc_sink_cap(). These will be used
by a follow up change to read out the branch device's DSC overall
throughput/line width capabilities and to detect a throughput/link-bpp
quirk.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 5 ++++-
 drivers/gpu/drm/i915/display/intel_dp.h     | 5 ++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 9 ++++++++-
 3 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f81bc39c26a72..e925966f4c85d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4175,7 +4175,9 @@ static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
 		    dsc_dpcd);
 }
 
-void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector)
+void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
+			       const struct drm_dp_desc *desc, bool is_branch,
+			       struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
 
@@ -4226,6 +4228,7 @@ intel_dp_detect_dsc_caps(struct intel_dp *intel_dp, struct intel_connector *conn
 					   connector);
 	else
 		intel_dp_get_dsc_sink_cap(intel_dp->dpcd[DP_DPCD_REV],
+					  &intel_dp->desc, drm_dp_is_branch(intel_dp->dpcd),
 					  connector);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index f90cfd1dbbd05..b379443e0211e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -12,6 +12,7 @@ enum intel_output_format;
 enum pipe;
 enum port;
 struct drm_connector_state;
+struct drm_dp_desc;
 struct drm_dp_vsc_sdp;
 struct drm_encoder;
 struct drm_modeset_acquire_ctx;
@@ -199,7 +200,9 @@ bool intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 				    bool dsc,
 				    struct link_config_limits *limits);
 
-void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
+void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
+			       const struct drm_dp_desc *desc, bool is_branch,
+			       struct intel_connector *connector);
 bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
 
 bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 352f7ef29c281..f2266b2653046 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1658,6 +1658,7 @@ intel_dp_mst_read_decompression_port_dsc_caps(struct intel_dp *intel_dp,
 					      struct intel_connector *connector)
 {
 	u8 dpcd_caps[DP_RECEIVER_CAP_SIZE];
+	struct drm_dp_desc desc;
 
 	if (!connector->dp.dsc_decompression_aux)
 		return;
@@ -1665,7 +1666,13 @@ intel_dp_mst_read_decompression_port_dsc_caps(struct intel_dp *intel_dp,
 	if (drm_dp_read_dpcd_caps(connector->dp.dsc_decompression_aux, dpcd_caps) < 0)
 		return;
 
-	intel_dp_get_dsc_sink_cap(dpcd_caps[DP_DPCD_REV], connector);
+	if (drm_dp_read_desc(connector->dp.dsc_decompression_aux, &desc,
+			     drm_dp_is_branch(dpcd_caps)) < 0)
+		return;
+
+	intel_dp_get_dsc_sink_cap(dpcd_caps[DP_DPCD_REV],
+				  &desc, drm_dp_is_branch(dpcd_caps),
+				  connector);
 }
 
 static bool detect_dsc_hblank_expansion_quirk(const struct intel_connector *connector)
-- 
2.49.1

