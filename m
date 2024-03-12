Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B016879942
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 17:45:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDA9911254E;
	Tue, 12 Mar 2024 16:45:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WSfZ3erR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDC5211254E;
 Tue, 12 Mar 2024 16:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710261942; x=1741797942;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=1DVVg209xVp87cMzHsoHGZFQOuucDUWvtvLBaTsCVe0=;
 b=WSfZ3erR5JCAY+nmmPlyyXTRVhnjDf0re5ZMxnBdHLt5Usb+EyLGTxgM
 kofNHCez7R/5UF7ahceorrMthcZB/ziTnzW+SBUWZUI8OYSVuL4AcKHpr
 wJtVz7eTUIEDXjIhWslbLgaGk5K5lXNshs1BdgTt7vk9RWYJnQWIMkjjv
 EkLDonuuB8ZxPgXP9dbGNm349YJDV0iJoyO41yxsH3KMmU8YiiNj0kQ0N
 fqDjj/Fg3gm/22WCHCW4YadYhDmVyBYwVjQQl3dXilptxv2OOWTwiaYjt
 ZI4j54iAYfwhAt2DMSzUoCT2YF97xTNcS3LhtggRlJOORcPJzWVvC1U12 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="16124770"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16124770"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:45:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="11660560"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2024 09:45:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 09:45:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 09:45:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Mar 2024 09:45:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Mar 2024 09:45:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kdpiQus8gp9yQtnyhLFLAu8ggjKesvesu4KwctfXeUhVdQOAcnOqcmt9PtlmbTuLmugSng6LHg9+zPG/JRRTGriFkxoHSMHTUva5cWsHPQ4/BpZ5rLx0z69KVEbHXZx5gVHdMTieVjCM6/DLGwK6jiD+AsDpGrNWmobgadBn9+N1/ruhfc8fqQNYy3L8DpLDGn8LOPszNg/H09fOFwDzey5vpzGZVvXcYHwvGQdSiPs1oBTsbwtQ1nDNS5JLwK4OIQKnJjrds7l/rETcOP+PgdmY09eMcetNSah/iUhPNtD87ad9cjhdkm6NajLSnrqnn/ZKa5SgN06DvYWUqB8k2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+A5HzHCzAQuHap8TwIoF1/uYg0riPHvoWi4tEu4Pkfk=;
 b=kz5t41dbSEqlOw2pnaRrK67IDR9w/NAOJuZrLwvqDNN5ErzrKfHQWD5+vh4RlQeNCJlXtZHzJkYiXowKXqsyI49RjmO3GMyVGAogQMs2Joic7rKTlFJbT4nd8vaM90d2o7iohDY934wqEWuQdCak1AtEOPxhJN6rNXIIlVvqxFHQYdUZFd59suQSR9QRoa+oMrSFR0L+GzP3gwQCVnBicbBNgeJ/rzMhVQK9tAxWAbjLMtYIvFMJtRwoqVe/wlgMYE3papkbo2MmQh2cUR2ZfG+B+11IbbI2T6hSLkofqTW7sgJWE5a/HGjCfF5KRMmp8MxoPs66jJxx+MWx75wRGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB6194.namprd11.prod.outlook.com (2603:10b6:208:3ea::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Tue, 12 Mar
 2024 16:45:37 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2823:ea18:552f:fb09]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2823:ea18:552f:fb09%7]) with mapi id 15.20.7386.014; Tue, 12 Mar 2024
 16:45:37 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240312163639.172321-6-gustavo.sousa@intel.com>
References: <20240312163639.172321-1-gustavo.sousa@intel.com>
 <20240312163639.172321-6-gustavo.sousa@intel.com>
Subject: Re: [PATCH v2 5/8] drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Lucas De Marchi <lucas.demarchi@intel.com>, Stanislav Lisovskiy
 <stanislav.lisovskiy@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>, 
 <intel-xe@lists.freedesktop.org>
Date: Tue, 12 Mar 2024 13:45:32 -0300
Message-ID: <171026193253.160672.4254959394542559311@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY5PR03CA0007.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::17) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB6194:EE_
X-MS-Office365-Filtering-Correlation-Id: d876cee1-808f-413f-0de6-08dc42b3d81b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Gvtnk0BcJC1/YurffwiFR2PyIJiU+JIvuBInQZ6le51hWgPDr8uxv3JpV001CnIeH2YCdEx33N+6q1KlZzf9A0oMnHl4MS7J5rFwT34tKL/B6+YIZiaVjmXME1wvOD80PT/Jr36l+kjf2Uw4tS8G68ydu8KUziHrYQb24ZZDi5SiuEoJTwmG75XGxSqk3NVL+VxZpG0gdkX+TI5nRFGFtvAJ3l3P3D+yhVdbKQuLGxqs0mCek9IIitq+acTK0CoCXLuTv7f4/0tHLixXd6HqyhFWBLvmXwt35nPCUVvXTWvYL4oqZx4PfUDFyXJ9AWl4gdhUnh/XCztV8eDQZvIQQ8YhGRgC9O3q6GtYVYv+OO+FgbI50O6DM1vQZs6Q77AlN6vezB3s4KeH+QqnIGI7OgwfbhJ2ZXQ0pQSQF7S8s6Yt5IddIdfM0OhpID9XB6X44OUbRYUk+/ifq0pL4297zZgHX3Wcoanr1pzbEIP4WvCej/wz1nJAdcWYAmo5e2jUQmKDlgt5Bzv5LogymdELA+N6svrPO3SEpOIu9Sg/Fnu+t5LWBEcof05OSRyImRmXOfS02fR76+bruqa/MuALO+wim2vukOfeMF6Br1wfyxWI9skrHuHdaKFcuC0e3utnzJI/ooa9TCW6LIbRS3B6ZVcGZBcCC+yas+khBkBq5rI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dG1YcmxTOUxpcUJGRFlvREdIT2tDZ0RuMHhQOTk1cnFzY09LZG1TYWQ5QWk1?=
 =?utf-8?B?R3g0cnV3b1NpQTFDemlUQUVPSTRDaERMNmJvTnhXYVBLRU9iUkdOYnVYNWkr?=
 =?utf-8?B?N0Y3S2pGakFkRGpmQ2ZvTE1yWTRYK2MzSElwS2hPN29aNFVObUROM05odVYz?=
 =?utf-8?B?RzVaRzRBSlVkNit5allDRy9YQkZsdWdxZUVNRHJlSnArRHZJQ3FqZXFhdmZt?=
 =?utf-8?B?OWUra3VPWVJFc01PT0hRM1NidERmWFdvbnN3VTVSTFZrK1FxbmhlYmJaaXVK?=
 =?utf-8?B?VGJidExLZnJtY3VOQkFtVENlMnNHR0Jnd2tyMXlHdGhpWWl1eHhIUkVWUDZO?=
 =?utf-8?B?UWNYNVJnQlcwY2NJb3BUVE1KTmFhaENUbHpYa0VrT2wzaWVIMWdCY05Ma1lD?=
 =?utf-8?B?OENwNjl6dHQ0ajUrQkE4SGNzRm5YY3VrNEdlcStrTk1tMUtNYTc3MXBoMHhD?=
 =?utf-8?B?OXFKWkRHbGpTcy9ha0Zsb3lDVDVyRWRMb1BseTlzR052WndHK2ZkYm5idTZr?=
 =?utf-8?B?MEJPLzFycXBlRnZQVC9ZRjh6WGdpaUJtUFY5WHZmY0RWM0d6SXFuMG5JdmF0?=
 =?utf-8?B?QW5HOHdTZk55SW5RaXpaemRVQ3VyNlhkbEQrVmY4UEYyVUxZUDdkdHRjTnRF?=
 =?utf-8?B?UE5KU1BXcTZKOW9GRUxiSVFpR1JGaTA4VzVlOUNHTGlCSmNNUEIvLzMxRWNG?=
 =?utf-8?B?T01oZFFpT0tSNCtvTlhpZFhqQWQ3UmRqVTZib3NMS0ppR284UHJYYVkvcE9B?=
 =?utf-8?B?STlKbDRXdjZYRkgxcDV3dFhST3BBclZCc0FzaHRDN0lXS082RXBnUlorODVL?=
 =?utf-8?B?blI2TURwVkRNMDNIRjNsOFZqQmNUS1Y5Q0lhRElRbHQyU25HeStLeXRINmFI?=
 =?utf-8?B?MzIyN3ZWWXdoVERpMHhHNW8xNFFRUXlLNU80NVRGdURQUGl4MHQyd3JLWTUz?=
 =?utf-8?B?eFAvNW5qTmVqK3luZStCbDVKNko4ekhZRXhkWXNhVS9uOU5sVGZJY3RNMlh5?=
 =?utf-8?B?L2ZkWUhDTWVYSnFjUVdrQ2hpSlc1Z3dFNFArb3RGUFFQZU90T0czL1dQbVBV?=
 =?utf-8?B?ZjdnNks5QytNRTVRekp3R1hvNnA1eSsveEM3OFpVeWRCcWZaeUVVQytnekx1?=
 =?utf-8?B?OHdsVXlBQ3FzNm1ETUdNQzBLNU94WFl5VUhtTHNyajlnci81RFRxdFhWMHQx?=
 =?utf-8?B?YUxaRWFFZ0ZuQkt4SkgyL2ljcjl5cjZ4cEgxY0wrN056N3BOYW41d1dMaFd1?=
 =?utf-8?B?UWc1c3ZLQjkwdnpBUndaWXdGbU1yRmJabGYzWDVkTHVRTnJwVUlPNXlVckMz?=
 =?utf-8?B?ZG1pT01uSVlDTzJaQWtIdkFKTk9DRWhkYytwekhnSUVTYksycWVEeE9udmJK?=
 =?utf-8?B?ejZ3dCtkVDA3NzdZQ1BtekZiQitIQUpvbTdkRmtxKy9jdENXS0c1QmMrWFYv?=
 =?utf-8?B?dTdKWHR1SEVLM1krMDBzeUdsM2kzMFZBS3ZEd2cyVGxzSzFTcjliRi9OelZ2?=
 =?utf-8?B?dUtOWTcvUnR3ck5FUUdXcmRPNHhkeXlNTnB2V0ZiallXYUpTampVSHJPRndr?=
 =?utf-8?B?Mm9rL2QzeG5JL3pVMUdXZkpjWkZEWUVnWG5KRmpGV1NIa1lNSU1Sbm1INFQz?=
 =?utf-8?B?emlHNzI0S0pvTWVDQVR2VFYwZkh1ZURNT1V1VUV6T3p0RTFnQjJrUmJ2THdQ?=
 =?utf-8?B?RFRCWjFWMXd1UXZBYXRMZGNBSVFUZFBuSGxtZTZHNzJpL2trVjIvb3YzeDJF?=
 =?utf-8?B?eTFBWlNwQlkyVHk2NFJJYUdTdTFTRU5yVzBCSUNTUVRGVU9UemNlNkpsWGtY?=
 =?utf-8?B?ZXYzOWtRNGtiVHBzQ1pEb2RwUWVxKzdiWENXTVVvV3huRFYrbXZ6YTB4Q3Zr?=
 =?utf-8?B?S25sUzBFYzlSdTJEc0wyVjZBSFhaYkt1SjJ6dDRFeG1ZalNjVm90TFB1WXJZ?=
 =?utf-8?B?MmkySnp0Z3JpcGtvMWtjUU1BMnR6YllBdDNVbk9pV1pqZVBLUjJpUFpYcDZp?=
 =?utf-8?B?QnFYenVpN1NVeklReklLTXpNWk10RTRpZHhiTnFINGhwVlBua3VPMjNrWUVI?=
 =?utf-8?B?dDQ4TUlDeUhaUEl0QllZUmdjc2R1ZGtjc2NUSHB1eTl1dWtFbFdGUStwS0Fq?=
 =?utf-8?B?VElvOFpHNjI5M0VUMXMrRk1PZjFMandBUjhrTzdNMXoraVBlTlJRUUR3TUhN?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d876cee1-808f-413f-0de6-08dc42b3d81b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2024 16:45:37.5337 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9o7UZNvOuepw8G+F7xSFNx1B9O9xe+Gcf5/AI0MR3XxzzsU0JFTxyvjrMu+EEygGeEKFZBN2y+36yEYDya/uwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6194
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

Quoting Gustavo Sousa (2024-03-12 13:36:36-03:00)
>Xe2LPD always selects the CDCLK PLL as source for the MDCLK. Because of
>that, the ratio between MDCLK and CDCLK is not be constant anymore. As
>such, make sure to have the current ratio available in intel_dbuf_state
>so that it can be used during dbuf programming.
>
>Note that we write-lock the global state instead of serializing to a
>hardware commit because a change in the ratio should be rather handled
>in the CDCLK change sequence, which will need to take care of updating
>the necessary registers in that case. We will implement that in upcoming
>changes.
>
>That said, changes in the MBus joining state should be handled by the
>DBUF/MBUS logic, just like it is already done, but the logic will need
>to know the ratio to properly update the registers.
>
>v2:
>  - Make first sentence of commit message more intelligible. (Matt)
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cdclk.c   | 20 ++++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_cdclk.h   |  2 ++
> drivers/gpu/drm/i915/display/skl_watermark.c | 18 +++++++++++++++++-
> drivers/gpu/drm/i915/display/skl_watermark.h |  3 +++
> 4 files changed, 42 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index 354a9dba6440..4e143082dca1 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -39,6 +39,7 @@
> #include "intel_pcode.h"
> #include "intel_psr.h"
> #include "intel_vdsc.h"
>+#include "skl_watermark.h"
> #include "vlv_sideband.h"
>=20
> /**
>@@ -1889,6 +1890,16 @@ static u32 xe2lpd_mdclk_source_sel(struct drm_i915_=
private *i915)
>         return MDCLK_SOURCE_SEL_CD2XCLK;
> }
>=20
>+u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
>+                           const struct intel_cdclk_config *cdclk_config)
>+{
>+        if (mdclk_source_is_cdclk_pll(i915))
>+                return DIV_ROUND_UP(cdclk_config->vco, cdclk_config->cdcl=
k);
>+
>+        /* Otherwise, source for MDCLK is CD2XCLK. */
>+        return 2;

Matt, this function was updated as a result of updating the second patch
(now "drm/i915/cdclk: Add and use mdclk_source_is_cdclk_pll()").

Since the update here is functionally equivalent to v1, I took the
liberty of carrying your r-b over. Please let me know if you have
concerns here.

--
Gustavo Sousa

>+}
>+
> static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_priva=
te *i915,
>                                                     const struct intel_cd=
clk_config *old_cdclk_config,
>                                                     const struct intel_cd=
clk_config *new_cdclk_config,
>@@ -3278,6 +3289,15 @@ int intel_modeset_calc_cdclk(struct intel_atomic_st=
ate *state)
>                             "Modeset required for cdclk change\n");
>         }
>=20
>+        if (intel_mdclk_cdclk_ratio(dev_priv, &old_cdclk_state->actual) !=
=3D
>+            intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual)) =
{
>+                u8 ratio =3D intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk=
_state->actual);
>+
>+                ret =3D intel_dbuf_state_set_mdclk_cdclk_ratio(state, rat=
io);
>+                if (ret)
>+                        return ret;
>+        }
>+
>         drm_dbg_kms(&dev_priv->drm,
>                     "New cdclk calculated to be logical %u kHz, actual %u=
 kHz\n",
>                     new_cdclk_state->logical.cdclk,
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/=
i915/display/intel_cdclk.h
>index fa301495e7f1..8e6e302bd599 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
>@@ -62,6 +62,8 @@ void intel_update_cdclk(struct drm_i915_private *dev_pri=
v);
> u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
> bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
>                                const struct intel_cdclk_config *b);
>+u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
>+                           const struct intel_cdclk_config *cdclk_config)=
;
> void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
> void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
> void intel_cdclk_dump_config(struct drm_i915_private *i915,
>diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/dr=
m/i915/display/skl_watermark.c
>index d9e49cd60d3a..4410e21888ad 100644
>--- a/drivers/gpu/drm/i915/display/skl_watermark.c
>+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>@@ -3057,6 +3057,8 @@ static void skl_wm_get_hw_state(struct drm_i915_priv=
ate *i915)
>         if (HAS_MBUS_JOINING(i915))
>                 dbuf_state->joined_mbus =3D intel_de_read(i915, MBUS_CTL)=
 & MBUS_JOIN;
>=20
>+        dbuf_state->mdclk_cdclk_ratio =3D intel_mdclk_cdclk_ratio(i915, &=
i915->display.cdclk.hw);
>+
>         for_each_intel_crtc(&i915->drm, crtc) {
>                 struct intel_crtc_state *crtc_state =3D
>                         to_intel_crtc_state(crtc->base.state);
>@@ -3530,6 +3532,19 @@ int intel_dbuf_init(struct drm_i915_private *i915)
>         return 0;
> }
>=20
>+int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *sta=
te, u8 ratio)
>+{
>+        struct intel_dbuf_state *dbuf_state;
>+
>+        dbuf_state =3D intel_atomic_get_dbuf_state(state);
>+        if (IS_ERR(dbuf_state))
>+                return PTR_ERR(dbuf_state);
>+
>+        dbuf_state->mdclk_cdclk_ratio =3D ratio;
>+
>+        return intel_atomic_lock_global_state(&dbuf_state->base);
>+}
>+
> static void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *=
i915,
>                                                 u8 ratio,
>                                                 bool joined_mbus)
>@@ -3574,7 +3589,8 @@ static void update_mbus_pre_enable(struct intel_atom=
ic_state *state)
>                      MBUS_HASHING_MODE_MASK | MBUS_JOIN |
>                      MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
>=20
>-        intel_dbuf_mdclk_cdclk_ratio_update(i915, 2, dbuf_state->joined_m=
bus);
>+        intel_dbuf_mdclk_cdclk_ratio_update(i915, dbuf_state->mdclk_cdclk=
_ratio,
>+                                            dbuf_state->joined_mbus);
> }
>=20
> void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
>diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/dr=
m/i915/display/skl_watermark.h
>index e3d1d74a7b17..fed4d12df584 100644
>--- a/drivers/gpu/drm/i915/display/skl_watermark.h
>+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
>@@ -58,6 +58,7 @@ struct intel_dbuf_state {
>         u8 slices[I915_MAX_PIPES];
>         u8 enabled_slices;
>         u8 active_pipes;
>+        u8 mdclk_cdclk_ratio;
>         bool joined_mbus;
> };
>=20
>@@ -71,6 +72,8 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *s=
tate);
>         to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, =
&to_i915(state->base.dev)->display.dbuf.obj))
>=20
> int intel_dbuf_init(struct drm_i915_private *i915);
>+int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *sta=
te, u8 ratio);
>+
> void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
> void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
> void intel_mbus_dbox_update(struct intel_atomic_state *state);
>--=20
>2.44.0
>
