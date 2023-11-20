Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB9B7F1881
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 17:21:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9039010E09B;
	Mon, 20 Nov 2023 16:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66D3710E09B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 16:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700497299; x=1732033299;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zlh2986kpm/ek1Qr4v6A3cFp8QZu41kNkwgzFi5QQ3s=;
 b=VN/G+3LHyuXVsiKC8sdUJV0pzIEoiCw5OCYM9EftNPIs9N2Hn+zHe4Yo
 QWF8yRya+5STXbi5VtTjWRwP8DiNTCbDbpuZL1hkGa26TDo52BGjp2o2D
 A/KexXZk0DsjNBeHNV+8zODbehBW+c0QYjyBFc1DQ9OqEOxFzRkTMxj0W
 a8h0PcSUkWrwkLVe6EpL+qA6QYzYK8fZE217/EpKaNxoZCcUOKCY92U8i
 K/jIs2/OlwFOp2GtYuNWHzhh/mzFr+LxtkzR4vp1UzmHLyEL3MA8EQXOv
 /cHoQlXDY/j9rUrHKDaeWEQFDK82bha0Ne81o7a/HCGvPkD4LSSKDY44k g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="4766190"
X-IronPort-AV: E=Sophos;i="6.04,214,1695711600"; 
   d="scan'208";a="4766190"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 08:21:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="832321795"
X-IronPort-AV: E=Sophos;i="6.04,214,1695711600"; d="scan'208";a="832321795"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2023 08:21:37 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 20 Nov 2023 08:21:37 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 20 Nov 2023 08:21:37 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 20 Nov 2023 08:21:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d74PF3dXR4janz/pfbUG41O48YtRK8QSxGffpLTyPST0kx114gUg4OgLDkFqX7YIgGqOSw8cDDiShLcaDM9nsDBTPLydngs8ygKtFJzXYX0bfHAu04e1S84T0J9TY1okXBDkXXrHg5BLEceF59SribOtqPvHGl2Tx3FWQmk6J1WZMOSA1iMnH75y4PE8W+6dlj42bSxXSOAJ9OHI7HuT6tv7Ld935ZXC7vjxmH4Ef3fT3f7zq7Uzl6VSdU+inKICsgRKhlvFKpt+Z6pnS+HTUywrQL3eo1+D1YYTa5hrGBZkwu3DclHGXy0Ti7Z030a4RRogFKqvtiViDg5+6ieo4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yO83se75wwqcIEce/KczG1JJF6H5LsJcYKY8ismv4fk=;
 b=IY6EH6Je9QjnsX8W7LZFvqjiWhn0A/A/pI/cEbDKTeTNQY0UHsbOPVd5E9E6F8l4ZsU/+8gHtYv99QFQK6TPD71aQ2TOF12ilP/PpfvBIwLbhysSAWH7FiaCWsD37stcmhq/O/sMNcf52lW02gn/AE8DHXmhGYQ8jPYJptenRNiXajKOm1dg+hkqLRcC8cfdg/BjtHHqN98e4Z+bc6HuspilHZFuesn4/8YtjuW4JEUvyJXLzd3urNaSCcVAlxfZB2Z3I36IU4gUuZDTKSF/GOwAlczNfnGQmZAtuXOuZwzij4nCYDG6DZt9DKce7fE+rNN685Itd20i3V3IbALdBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH8PR11MB7966.namprd11.prod.outlook.com (2603:10b6:510:25d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.26; Mon, 20 Nov
 2023 16:21:35 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7002.027; Mon, 20 Nov 2023
 16:21:35 +0000
Date: Mon, 20 Nov 2023 08:21:33 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Haridhar Kalvala <haridhar.kalvala@intel.com>
Message-ID: <20231120162133.GB5757@mdroper-desk1.amr.corp.intel.com>
References: <20231120113731.1570589-1-haridhar.kalvala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231120113731.1570589-1-haridhar.kalvala@intel.com>
X-ClientProxiedBy: BYAPR06CA0007.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::20) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH8PR11MB7966:EE_
X-MS-Office365-Filtering-Correlation-Id: dfcbce11-ae7c-48ee-72eb-08dbe9e4c3e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +jw6rKvpZCAhXrFFMJ+Z0W48SnQQxCrizCX8u6VuiFJy8mMETsMunYgIjDeeRKa3SChulq3SAY5uICKf6Yc9wbJ5ez2K7o7uiBTLSedVV4QhEtGud/w9nYDb6IpivEwTK48dENK367d1QpmeAbgE0VD4RxWbO4rO1X2PotranyhtzecTrIThSmlMfhsaBq4NFbVMwgsZ+yqosMSgnZuaIWIEIa35jSBCC6QX+T3UZCHg3V+rvn1L4vShO1SZsFmccD8OH9xc8mHnUjpGd622QWVGveJs0d2aptFwYrXsDhp0rdS1e8VYSYnEutPZ/nVdZwTw7pcQzw53GHa0R9qDxlei0KhX7R0HIhHi3LIJnCLA6Z6xWYyYXNl6x22XupBvudIOGl8VHtWqSr6zVOUMBbIlk4HB/1FwLRAYpV1UbOML405q7/QcSlb523dP/w3ye8iGPwNZbUc6UtOEBWX1TyrLFyZ4Q8p06gbeOq+aFd9O3VmckKtIZpykWNsOF1JeriQtpfCAirJgP+d2ZHNPrfKl2vnBkpFhFmuwws8pCVhG6bcxa5aWl/m0493B0OoS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(346002)(376002)(366004)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(5660300002)(2906002)(4744005)(66556008)(15650500001)(6486002)(38100700002)(82960400001)(86362001)(33656002)(6512007)(83380400001)(6506007)(1076003)(26005)(478600001)(41300700001)(8676002)(6862004)(8936002)(4326008)(66946007)(316002)(66476007)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HcL4lK8HHNuh5955MzYEBLOCOxkRfFQjPOsyskjKrgX9gW+xvZ+T8aXeZimK?=
 =?us-ascii?Q?UUDLYPgEdJZDY0GB6knQOCn4S6mRhxyEf4B56aDsaq2LrHV0tjVLqDQCrpf4?=
 =?us-ascii?Q?hG3IUPc3YzgdPZzckyhOTw7znPF9w44eZHoOqNZVOTCOdu+OJm/GViuNgKNU?=
 =?us-ascii?Q?7GeQnRyHhUeoQtnjje+yEoZ89dC34dwn4va+qoxrxOMrxfFhTht0UlEiN4+/?=
 =?us-ascii?Q?Fl9S+HMMYpNXtjfcVNuXb2ZSCe7hPhTOVUWvJXvzN0AhUAwRDcWxhm/pFNuu?=
 =?us-ascii?Q?2oJX9eUk9x+wB63FPy8MG8HkJ7iBEL6l5RStANmEZNg08W2z62ccB32EYNMR?=
 =?us-ascii?Q?aWTniLX1bSzi01qpLRhL42mCUyBtePcO/Y+PamBH3UJletSN35pHAwX2SgSz?=
 =?us-ascii?Q?0M99Qks1e2h7551mwOPVtylUzUeSKfij25W0/NPIx0IIQ9t+J7K7rfrT+WeV?=
 =?us-ascii?Q?wQhFCemSI5WwNGy/NIVuwpD6DjwNIHdt26m83KFxE1tOXqnJB2bGdJU0Fn1q?=
 =?us-ascii?Q?TctoL86b9jcPnu3JyNXT3gX+T85gGbb+D5+x0oD4Qqk7oL3ID/bOCHDTx+bs?=
 =?us-ascii?Q?UlR+JUNU56OeQIzvUWWvisZpt6iQt4NP1ZeeHzfKay5qsS8kkBqfkfSYkVmf?=
 =?us-ascii?Q?JLp4gA3CqLNDD9TKnsc8IjWrw20gTqUBsdz4dsJrHmFQ62bT1Qt9gpIeKiP3?=
 =?us-ascii?Q?ejSsj5L2X2bKxzElxZMfwRF9J5awPTvpslLn6+y1QQIpB/EanYlNo3rwgKxe?=
 =?us-ascii?Q?mnMXgtHhszB4Pw17JrqqZbGMgd6UA0KsgtEN37BbSx6JfUDvxPYg0+XNT29R?=
 =?us-ascii?Q?6G3vyxAG3b7+qZgVBOmdr/vzLcEaa78fgfLkTJjYgHk7Ve5xLYEqDhG2lnyc?=
 =?us-ascii?Q?pJ5b64jxuqwfUcsRma8D2+y9mZFGw4XWE6zSo55sDC/fFIRhgO/4ZFOAvCPK?=
 =?us-ascii?Q?mjpRjFEW4E6qU7wVv4/VRVG30yndr4Llo9WUgxMz9LpX8D/viljCfZXKuvju?=
 =?us-ascii?Q?dxdQOFHZkzLNnz/uTBfp8dK3m6m0gtKM67qIbMk22u/RBKphsjHDpMvRgwPh?=
 =?us-ascii?Q?p73Y0V+ha7LKeRSPXp0CST1DS8XWb/Sb61TxsdE8mAxeYd+9TRf3/W3FL6FM?=
 =?us-ascii?Q?uy+PEpSeJLNT6jHaWFADUYEpxzBG/8saXFe9QSAt/WWQEBtN+n+HPlAF4N44?=
 =?us-ascii?Q?AbSNyFpmY+8u7w+qLLo2YD+POtkUQCmh2tJYPFkFpm+EJbXttoxFmcXlH7qk?=
 =?us-ascii?Q?mol6ii58Da0Dbk4epFdkSTkUzm1smYffiDqhVhSdc8H+MeRal6kgf5/qBzQ+?=
 =?us-ascii?Q?QxcEYUUtl3FwZVtNnnMN7sc/n7eb8ave1PNxidHATNfWcOXyksVlhuZZ+XRQ?=
 =?us-ascii?Q?uI8ghSstbdWwi9pvcoOEC6bIBgqgbBwR33RQllOkUly6asTwj94HnZ/7gCoD?=
 =?us-ascii?Q?jhCrxKWFYjFZnynQADi5zXLkVlOIb6u+KjdO75VnSmg0A+U2CSR5zJF9wH/F?=
 =?us-ascii?Q?Xx3VeRKHhbdaSxkEV3JgDI8afuZTV+zUTDyo8QQINHrDcotemkQYS25fjVyb?=
 =?us-ascii?Q?ckBqq5LQQxCxg34p2ttJsIWyJVsTZ0V0tH7/d3yAbG4szYNl79VJnS8173sR?=
 =?us-ascii?Q?gw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dfcbce11-ae7c-48ee-72eb-08dbe9e4c3e8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2023 16:21:35.3483 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vPP8tY5ifzbKfZ2UYw4rlehiWkY8OKZLZewdZb6eiWS5JRxfNJ6Ktxza6iNS1CDFt8M9fBIVoS0KxeUMVUWSjSoNrV4n1SoKE6otLvLc708=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7966
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: ATS-M device ID update
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 20, 2023 at 05:07:31PM +0530, Haridhar Kalvala wrote:
> ATS-M device ID update.
> 
> BSpec: 44477
> 
> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  include/drm/i915_pciids.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 1c9ea6ab3eb9..fcf1849aa47c 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -738,7 +738,8 @@
>  	INTEL_DG2_G12_IDS(info)
>  
>  #define INTEL_ATS_M150_IDS(info) \
> -	INTEL_VGA_DEVICE(0x56C0, info)
> +	INTEL_VGA_DEVICE(0x56C0, info), \
> +	INTEL_VGA_DEVICE(0x56C2, info)
>  
>  #define INTEL_ATS_M75_IDS(info) \
>  	INTEL_VGA_DEVICE(0x56C1, info)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
