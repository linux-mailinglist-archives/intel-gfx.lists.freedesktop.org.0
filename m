Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0F785E206
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 16:55:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 881B910E7C0;
	Wed, 21 Feb 2024 15:55:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k5PR4wdo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8781010E7C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 15:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708530902; x=1740066902;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=fSUPqvieulI75JsCG720Aub0/gf12eINur3dKIfpwug=;
 b=k5PR4wdoH3oooJVu1QLrz8t07f5w8V4IBeF4YsgZnEuUiu6DuI5epRqX
 GTT4V5q/ZcXx7cYMxNC9UsoUVWW4EsU8F9AZIM2IkEF3cJwCkP3E549pW
 Cgzlw7xEH7tBmYSAIo1B7O0+EboceGzJcRcCRXG/ohsd54OuNlr0esd8u
 XnV17CTBKXauJGVdILTUEX+MHzUpsCf+H6jxjYGc7RQ4mUP3Gw8XAnxjj
 6+Si/2BFce06RAO1KdU5GYPQyotHiLHX5+LpgqNePCA7Uc8YcUarhP4G6
 ayzqx1m9Iz+u0hCfg0KGELjS1yZFAGgqChwMCYlyatMstXhVnoDh5ij0P g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2567600"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="2567600"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 07:55:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="5339995"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Feb 2024 07:55:01 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 21 Feb 2024 07:55:00 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 21 Feb 2024 07:55:00 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 21 Feb 2024 07:54:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OjMAXv9Xu4uQdZIx1kRg/76780/O/zhAHDCN5Hz4zO7Yzu2zjsw8qNQhKqPe7tfhOGq4i1S9e1ISdbTjoboKDwQcy4rCj2HZqOpw/sYBQLuHTbBzZ+j/937vG1fbF7Bav8h293L0Tk18/3gHNlDpeIcASG+OSa7oSNdoX48KL4gG7qaLpa7ESFFaY4Qb5WbS+OjRf5saV+kdrMQAJx2EqAq/eIVKRhGQCTYYgB8IOlmGzd0HB+aqCwh7rCfby0uodHL758yq0SJ57mJG6WG/FBW6fBkpcMgrGKJBsrHEiUWnFp5mnFML/vEQRef00J30sIMIl7EeYPymqBGpf2Ym5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CueqvCUHGK8631y9OZaOCbzby8i/Cn4dkC3TYRVZPCo=;
 b=T0N9vdBW//+za6qUirZJW9X2Z4n5S8cB7aStiq9JHdXvQ9WhoHzJc6SNCRKe+LhWWJ+IzcmM9W6bJIMaWvrpZp/srJEILyX+scwrUxCcmhfq/0cYSq2EmSXBYJDXD6QnGbCSWJTKLYOrnCuFEQMFa0Lhe/G+Ch1UAS4ezj3Vlm7CkEBPXpqt/Yg/pyyGgVuMiSDa1t1xCeyp4BDTkZlP4vA6eG0UD7fZNIXCHfpG2aPOK8rDlSvsQ1iDSyQPSOcBMHJaZuouOhnwXeouOJB/1BVQWRlV38H+oVoVFmkL27XcPlqGr2BZzRNUlmytrKTIUAKD2St4Emcw/fGE6DVKbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7384.namprd11.prod.outlook.com (2603:10b6:8:134::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.22; Wed, 21 Feb
 2024 15:54:58 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7292.036; Wed, 21 Feb 2024
 15:54:58 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>, Stephen Rothwell
 <sfr@canb.auug.org.au>
Subject: [PATCH] drm/i915: Fix doc build issue on intel_cdclk.c
Date: Wed, 21 Feb 2024 10:54:53 -0500
Message-ID: <20240221155453.94208-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.43.2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR03CA0008.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7384:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a37769b-21e1-4ce3-a1f4-08dc32f5743f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XhV1x3BuHjQHNXN9RWIihuZsrRKbukz7ulxXcOkje2hc7YibVZJlvIGzUUQ9I0BjP6Oq5K5nQ6pWeOZxhrYzQcXJ4EGG4U/TF9/jneoI+KcslwGYbvziep2RJDOaxIvA+Fii1n888M72zYTxtNaDoIzW6E/wn/yRxI+fS10qOr4SSRWde+HaOHMALiAsM4q+U/xb+smw0w2qghnPgdR7baq98pP+LJZoR3SckEPwbUPhLSeBN6S0kMIteqiNLn645HGwGzk93me55jG2e/SqOP9URLPpIO3dY6XcFrBpOgvjLoGfrw6RoY/SOqnKHU1y+nO46geWiRnu/83Xh+xlkSj1RfrFivfzMo5RbTXjKGozX/cAQLRolmXf0w/eyt+g2C6w8M5V96+7bmebQVyeMfU+Fb6O44IWclgl32oZhiY27tqtwmuarPEa8Myb1FyFMjUT5cHFwIzySh4Yw03bpamkTHOifEPvfaivXvbAAoXh+ZGYNLJgk/KQzXRxlrJrVSJgwz9O3nnAiAH9Yq71DYvHHfrzD/vipMq42es/gY8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(230273577357003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VHVhSkxPRUlBUGZFdzdTUW1WME4rNVNsTkxZWVYzbzh4YVQ1N0J5VUptL0ZG?=
 =?utf-8?B?TGhxY3MwUmROcG52cERMRktPMXgvR2FjSlI0TnpSaEpLY00ycGM5eW0wazBy?=
 =?utf-8?B?M0w0TEVmRWRWZXAraC9QNkpiODBhNGVXekZvTE9WeVBEdFZYUlpmRFJ3Q1dT?=
 =?utf-8?B?R2pvMVRlc1RnT0lHMkk0dkN1TTI0aXozVEc1UjRzU1IrN0R5RnByallPWGhO?=
 =?utf-8?B?akNWQUNsRTRwOUJHK25nN205Q3BkOVNidTR0bUZxMzVScDBHbW9qdk5GR3Yw?=
 =?utf-8?B?ckM3SWl0aE9nQWQ1dkN4d3c4eDR2VTd2cHhhQi9iNVg4OWdzODgxdVRBcE1p?=
 =?utf-8?B?c3BiQVh6ZW9aN2ljY0VZVVljcWNsM0I3Mk16OENoNnNTK0dVT3ZUZXBvRk1l?=
 =?utf-8?B?a0NJdVJUSDdYLzJVbEVkRDl0a1BrWHVtSlZ1MWVhMEhFVjQ1bmFSaWF6b3N6?=
 =?utf-8?B?cHlWdGZiVll6OHBEK1B4ZXl4SVhsdWRzUFZGVTZlRitWeUYwVnhmWUJwS3FR?=
 =?utf-8?B?VlZpMnN4a1BQQXpBaEtWTmdFeTVxbkIrV0psYzU0cEZwTk5pRVIrcFJqN3JI?=
 =?utf-8?B?YmxxaVJENE1ZN1owWEgxeW5VYnlwWUxJcHQwSGRxdXRKQVFBWUdUWUVjb0ZH?=
 =?utf-8?B?OTZJNCs0YkdnVDhrbmc4TlhWbFRwbWtUSkd3bW13d0RqY0UzbmFoTy9SM0ZH?=
 =?utf-8?B?TzlqN2haK0RYM2kwaEpoZEltTEd5bDVnYzJDZk5ORmJXaU5LQ3FhWGZPR010?=
 =?utf-8?B?M2hMZkFIN0x0UHJrYUxkalFKeVZJSXdoK3VMUVladWd1R1RBbnNIdTBnRXBT?=
 =?utf-8?B?dE5WSWFZanhKRC9iOXM0K1p3OStidll1OTdVUVFsYmYrT054aGpRZXpvSUVa?=
 =?utf-8?B?N09wb2t1VGRIeFp6M0d6Vyt2ZVJHY2h0ZzVoaWJ1dzBXZmh3dzlWUlYwSml2?=
 =?utf-8?B?RW01M1hHaHpWTzF6dXFENWVrNWE0VFhJMHR1ZUxJNExTTXlwNVFlUWt0dzZs?=
 =?utf-8?B?Z0RxekZITi8vZkRBUmM2c2IyalVTanNrZCtKaUVGSFhHNlV5bEd3YmN3VTNl?=
 =?utf-8?B?c052YVYvNjRoWHVEamw2NStwMlYyRi9FNmhzWDVXSGVvRGpGUGZLUVFqclB2?=
 =?utf-8?B?WTdLSlJlU2J0MEZ2YmEvU1VPMnJBOXNwU0hMZHE5UkQxNjBtakIzRVBMd0Ix?=
 =?utf-8?B?OGdvU3VwWWVrVHh6QWFJd1dZeXM5Z2dQNG9MSHdhRkc0OTY1Q1pFOFVVWWVl?=
 =?utf-8?B?aXV2cXBaUFRpRDk4RjVJK0FKdmVreDFIY0p6Y0RyK2FmNUZQYWpMT1ozcEc3?=
 =?utf-8?B?d0xVM2I2WGJvQzhHUTlMc1BZaThzYUFuVlNtVXBCRTZTWmNUMGxPYU9SZFc2?=
 =?utf-8?B?Zm15b29LekVNVjA3cGVuV1JQaTRSVHZpYnl2OE0wbEs4TzlLK0MyU1JrSXJt?=
 =?utf-8?B?ZnBUQ0xaVFJ0WldhWkdYVW80UTZzbTRIdHJEWW5uT2ZQNTFCdkl2Q3BEKzlv?=
 =?utf-8?B?dXlYc1VKbWZYV2JtSmRPOHZ4YWQwWGZjWGIrbkZKTnRSdytIc3dFWFVnNkRz?=
 =?utf-8?B?TUJtS3JGcDYrM0Y1cTQrL0JFekgxQnJoOFFlNWRVUDlsallpN3VjVGgyS0RW?=
 =?utf-8?B?MDhrcWE2b1ZDbWh6RXh6Sjd3K3VvNWxWb0FpLy96d3p1OFZqZjRLeXE3VUts?=
 =?utf-8?B?NkxTeFpUYnlqUmFkVFRLQnRFYXdNb3hsSmZiQVhRVkM0RVFNVlpKM2ZVc1lv?=
 =?utf-8?B?M1pWV2Raa2kyR2lqV2tqUDNOWURMaGRRTjN2Q2NTM1RKTjJyTjcvQ3ZlOTF5?=
 =?utf-8?B?SjJQWXF0aWJLS2ZERnFVR3BrUmFJS0FrOGJ0MDRqWVZScHRmQ0R5dXhpb3pt?=
 =?utf-8?B?aWlORWg2WmxTbjlRNXduSElKUGNQSmdZa21PenJmSHFISDJDMXlTK1FkelJD?=
 =?utf-8?B?bHJDeW5xK2tRcDhYNTlMNlMrMmsxaytLNENpcnVDUm5KdGJKajFNRGFEZmlm?=
 =?utf-8?B?WnJiVFFyT1FtSXpzNVlabzd6WnkrZVRjZ3RCcUN2RzRXeW9EWDlkSld0ckJu?=
 =?utf-8?B?ZDVZTDQ5emUwaW1WZWR4N003REpoZnBDTGE3K3pzZkp5QS9xbkQyOXR6TVlS?=
 =?utf-8?Q?9lAiY13GE14EL3u7ajARvIz6U?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a37769b-21e1-4ce3-a1f4-08dc32f5743f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2024 15:54:58.0410 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FNVeSWi2T1EnF8mmRv+QdRjmaNFyreAklxjevx1FZlp52wJ7CJfZVbPvEfAnNI8IR7jvAT/NWkli5wfTxrRt3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7384
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

Fixing some doc build issues:

Documentation/gpu/i915:222: drivers/gpu/drm/i915/display/intel_cdclk.c:69: ERROR: Unexpected indentation.
Documentation/gpu/i915:222: ./drivers/gpu/drm/i915/display/intel_cdclk.c:70: WARNING: Block quote ends without a blank line; unexpected unindent.

v2: Minimize the empty lines (Gustavo)

Closes: https://lore.kernel.org/all/20240219161747.0e867406@canb.auug.org.au/
Fixes: 79e2ea2eaaa6 ("drm/i915/cdclk: Document CDCLK update methods")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 30dae4fef6cb..ed89b86ea625 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -65,6 +65,7 @@
  *
  * Several methods exist to change the CDCLK frequency, which ones are
  * supported depends on the platform:
+ *
  * - Full PLL disable + re-enable with new VCO frequency. Pipes must be inactive.
  * - CD2X divider update. Single pipe can be active as the divider update
  *   can be synchronized with the pipe's start of vblank.
-- 
2.43.2

