Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 428CA9049DF
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2024 06:12:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9991010E76F;
	Wed, 12 Jun 2024 04:12:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WDchS1Fc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AF9310E76F;
 Wed, 12 Jun 2024 04:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718165531; x=1749701531;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=R0aGbd2F0ElJYSu8cHKPQ9ryZRId5bvh0vtpN1DgJLc=;
 b=WDchS1FccnmLXolj8Xl/baZpDr+xlbJXb3FmuCYnef6G6cd9Mv7tWN6a
 IpysjO0digwlh8BvbV6Fe0KYtKmdXFjcSuAIepgdxDE4tsISLjb5U+ABM
 9suMqakD/W8xUHAYWzrgw3CLQ4HuOZYU7G3RFO5HeoC1UimscZP53y5VP
 q3LB5wfjk86iQ//HYGb0WE7Cz3P1Fw7BA/2UJa1ryb+jn3zvIf7glObVZ
 zMgBUsxVjYBjSGNbDQANzK9a656517r3Mkt/KX4u1UmLzqD+JQOrsKHAH
 /J6lEQDeeV37RLdYdJ+u2oUL2hn+TAfFhtwYgwd8D8MamO98f++AE7Tgm A==;
X-CSE-ConnectionGUID: 0PjIK3yrR7y+6rxJiMD3qQ==
X-CSE-MsgGUID: HX+7hKGGTdiLWnShRZqYNA==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="37434800"
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="37434800"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 21:12:11 -0700
X-CSE-ConnectionGUID: foFxtD1mReSGEz/yG5p7wA==
X-CSE-MsgGUID: GcLg9EEHRa+dV8MfOcO01Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="39760869"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 21:12:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 21:12:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 21:12:09 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 21:12:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N1dCZYLKltFhTli2pha+nppFpJm6pjv9JH/NztHZ8teuDtqPl91B0ZsxuFng19DeEZdxCOH5DfOca/W0i90QN5aaU0pBhU1Q2hICEnbHexN6IswfYGWZDmDVi5RMPsWNiHTS1qpGmr3bsZe3agUDjdMGObq6WdofoY+fMax0xOEsC2qUwvhEctEKpYZ9OXfK9/CzwOv7Z4crO+8pab9AoxAwDHqxUcQlAxeEaVHCFM/P6shR3QiNUv/KTWKDtiRwPb61dB1Bw4yOLpWWzUt1l2pUAqGSQoUPuvma9RvwEyD1mJABA/saOTa4RN2LmYoT4hbPW/Nmks8zqDHvbRbbYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R0aGbd2F0ElJYSu8cHKPQ9ryZRId5bvh0vtpN1DgJLc=;
 b=Uvd1/K9B1R7S9koloJCjyvlv5oeq/EuIeiQBrjp+Xi58RSsEoswjoJeEyD1wW9Ooicq4FjSTKLYJyKAUqQnHKK9skeA4dc1VLMBWdgndnfiogoCGuLwUqKIgTNd23Y2WU87lRKxDyPuNl0P15mFGHy8jis2VuTwChbbimWZ8YjJQ21ukuUQmnQtqL3MnYPLKDHQmLpFl92+amH+fw1v9iFoul1C3zd6dNQN+u8uQQdszawcNZA9w45dOnWYeOeL7irhhiUnqzGUq+KGjgyYgGi1Kk74m/Zo1t9cpjC54GDlRxHwOiFhXV1rmpdpxzdnORwskFFyE/Qm91lvIYPI6CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB7915.namprd11.prod.outlook.com (2603:10b6:610:12f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Wed, 12 Jun
 2024 04:12:07 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7633.037; Wed, 12 Jun 2024
 04:12:07 +0000
Date: Tue, 11 Jun 2024 23:12:05 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Michal Wajdeczko <michal.wajdeczko@intel.com>, John Harrison
 <john.c.harrison@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Jani Nikula <jani.nikula@intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Daniele Ceraolo Spurio
 <daniele.ceraolospurio@intel.com>
Subject: Re: [RFC 0/7] Promote GuC ABI headers to shared location
Message-ID: <tfvmdop5ztprcso5hzf7zwwchul3ihzzp6x2eswk7yjhcd6ce2@sxrhmssrf3iq>
References: <20240611143008.1900-1-michal.wajdeczko@intel.com>
 <2d9b0d82-3e2f-478a-bc7b-b6e589c70b38@intel.com>
 <a0d7968d-81c5-4328-8654-9feab682655d@intel.com>
 <ZmjLxGDpjo6EMUxN@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <ZmjLxGDpjo6EMUxN@intel.com>
X-ClientProxiedBy: MW4PR03CA0326.namprd03.prod.outlook.com
 (2603:10b6:303:dd::31) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB7915:EE_
X-MS-Office365-Filtering-Correlation-Id: bd18ad56-4ade-4e36-4718-08dc8a95d2c2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|376006|366008|1800799016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UvU4VCLlt4yCS6sTtsRUoefijjZO9iXqz4b3J2Uemo5d/jqVRwGZgHR2q5pt?=
 =?us-ascii?Q?hojbOw+TlcAdrl8YYyiuf5DpUxfW6mNQ/AfrcjhQywwWSrPHV4lZEaexhIsn?=
 =?us-ascii?Q?LNcBo/XiFpnPqPie6iSbKgSp21eXtN7GENbAmioqoaB6H0eLmwRRvKBjSeZQ?=
 =?us-ascii?Q?Xadt+0R9G79gHHH1cTMIV1lCYPvMZDeW0NCJO3Qz6PU1rc6f80+uyBFWcfgs?=
 =?us-ascii?Q?9F/+ha9ZEdbG1kz/kNFdcsWWvz9k33FEltRq068MUAJghu6QcJMfmCKEFXWd?=
 =?us-ascii?Q?t3H9u+YoSWveywLu2MRQua6gr2LSXgMXW5smUWYQ03blQqIcQIMZQpu1Zlsz?=
 =?us-ascii?Q?rZt2kz3m9Eo2SmXhg7nIe+/wK3FAnB9PMEH1iRWQBcgEn67u9uh7vpRsV5ak?=
 =?us-ascii?Q?0LJUTS4bmjw/dJjLOFQyythai2sC91AxLczCe8z3QPcLPvJ2OVnlY56WJd36?=
 =?us-ascii?Q?DjqelqxetfG7M0y1dRPKgbHeRaKHuQxfec7mMWPcMoCG+LauDVSLmiQHcbae?=
 =?us-ascii?Q?HitH+i6OXhCJSdhpmfbJwRB9I1JjLIcq1K5bcNFJfvTi0N3A7GJYonukVGSm?=
 =?us-ascii?Q?QM4nxzQcZqkZ817mbxPcgtas2SN/76P0SME3rkPgIWzSRSXFbGC+N+YTktht?=
 =?us-ascii?Q?eY4aMAw5YR1N3RYHOrTm5ZbTIvSiQsiQlIb3LTlZiZGV8707YEpIGOWaS8dy?=
 =?us-ascii?Q?GucoB6H/xXOCSz3LAcXGR7DkTxezTDFmAYy0LcJUoYGpFN+PqBEiqtCIdy1o?=
 =?us-ascii?Q?i5GY1HIX8y+YpyyKBhRaBtxKwREMzP7ryYP3wTzedP8AeOZTVJufenS3kUXz?=
 =?us-ascii?Q?unRT3zfpN5GWfomSW6bPN8/Zggn3gTA/abpC3L8g4rtNAzaTd2Q9EyB1d5ls?=
 =?us-ascii?Q?dDRXAF552ZpPsvxhQl4nSv5NOL+cZsi1qvA7XpGOaxVgavHyOY+PTvRp0w7W?=
 =?us-ascii?Q?p11M4D+amSubc5d28ONeCRxvL4haSSyR6ecTm9blFcSI9hPaWZnNpNKPmYKy?=
 =?us-ascii?Q?RMlyo1lTmGKagNEWySEZ6DIxaUAFdAmZHQaetyx1OV9SzlxVJpFLCTacOZZn?=
 =?us-ascii?Q?xLK/qwWllicTVHbTHN6/aDuoU4uFsZUJ9rbFxAF+gRgbqDGne+Dkc1WT8T5H?=
 =?us-ascii?Q?V+BI4Pj7nJi/1vh6SlIFin4DZyqqXDlvY0VvWVC2J/JVkSAMxpBlaoZv77sR?=
 =?us-ascii?Q?VIczFM59PNrWBJGk4FoF04jWOkENub93W+mwxnV8+VbuMI2vb8cGx2dvfYkQ?=
 =?us-ascii?Q?I42uBl88g2g5V78NjRSTyDWmbnsJb02RVwu25gxDYZzUYBImGqF3PFloK7lx?=
 =?us-ascii?Q?sSc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(376006)(366008)(1800799016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?l0LW83gM/y1QFm3j2biZLRL3TkMcTesEUav1EVz/ZQn0YvdC+WXYdYWrFP0R?=
 =?us-ascii?Q?JZKQVCrsvZiixN5Xhe+BJcGBZtlnc6Y62nLpxHuvN4SkQBtL2agUW1u3ytGH?=
 =?us-ascii?Q?AfhS82PeinN8985q5Bnbxn4Wu6inVWhEu81/fknzihgIZOOfmAyZuMkpBWWg?=
 =?us-ascii?Q?5nvxih88VyDioMFzGELZWyPpW8qOioNyxhyex7ArpslF04WqYfMwnxht94dN?=
 =?us-ascii?Q?7mjDA+IRh2+YpYcsymkhDnr+5q+hTB6zHrDwcK8UY3c3JfXBH4cHHWH1L5JL?=
 =?us-ascii?Q?3M7n3CEMHrXrp495zpYojn1rhZa0pXQr+xT/KdRG+L+VVh/yJxSVu7WjpAG9?=
 =?us-ascii?Q?nV7IIzoosb8xiNktzoKh42wXxqwZg/fdGRBviNA5OKQ+Zxbsys9g57PrhsEK?=
 =?us-ascii?Q?assWe0HrvRG1u2Uw6Xpx16G1eUF7p8zwjqP6O/XMeT3XfvCRmti4ckNvh02G?=
 =?us-ascii?Q?d+chvt4Ou5ICXmSNv8VtzmC25HmVLnjlH5eltV9i1y6sakl6z85vVe72V0jI?=
 =?us-ascii?Q?LMmFW7vNKpxFgH2qqBTc6Mw21Xj26gLp51uVe21oHCwTukmuC9UvoV+ulZ1M?=
 =?us-ascii?Q?yne4jUDuO5FK2tVxo3XHJ1qxVOjywvQANp4o9vKXr3IH/z2TiTS8BW0tBtsx?=
 =?us-ascii?Q?GvqBFI0D8iqPBer7V6eyXe92wwpTb37ANuQhwtQMabCj7RS49M4jgFasVBWu?=
 =?us-ascii?Q?KPciurVSxx4/eJ4CqtyYZ9LFsAK8Y0NuZdtH6JwEEoIBOExCYXTy9J0Niimu?=
 =?us-ascii?Q?vzA4A+De6XYH+AJ53mih6HVgSs4MoQzUymN0tfaEybnqoEZpZ5E2s/Y26Ckd?=
 =?us-ascii?Q?KvebkDCTkppOhCZAwQvNy1jUrMeVLChaSy1DPSEOk4L7psGnsZU4Nl5EYLpA?=
 =?us-ascii?Q?G2xLoTLns8MPuGiAxp+1hEi4a6LPrDJhrFKfNccZiXXb8diahp5LSchzzWAr?=
 =?us-ascii?Q?mEx67PbgOfdVP/hqdhurQ6RE0SUtL1BEiLsuXfJy5rOuRvbc1gvwTQEK1Zw6?=
 =?us-ascii?Q?3qY6fYAMbCYd5euo8DRPvJ34H/UB18Ip4WwwkTJWFgMt0X4FIiakoC0fp5r9?=
 =?us-ascii?Q?5k02Mas26g8GJCfDS7K7FjfIOspiI8tb83hsfX0oVxdSKvO1Y2u8fKtdShYX?=
 =?us-ascii?Q?RJzcbtbQL17w8SmGqWT59sUKqtprJV+Av4tjoKFJQoKGzWiQK82e30f8DksG?=
 =?us-ascii?Q?mHEhftMhUe/xpYk5N+Cl0F2EprgZXuKSK/9crCH0FRSSvlf471IOqHafJfsc?=
 =?us-ascii?Q?vO6Jxwhh7vKqSBiPWc4gq+QpSOrJnvGi4JjjeJZp3219PKXHYqWbQjTVFeEk?=
 =?us-ascii?Q?V0InXtqdpXAdc9aV8nv5t9bD7wuzRJAcfIfFk8nAmOTulqH04/a117i33hk6?=
 =?us-ascii?Q?2R/CZ4cZBqdmdlaxa4PklArxAi1ieSPGAGEvteHVZTknnVDf/KU59uPjnW1G?=
 =?us-ascii?Q?7ev+cYsLkaNE1zrrDSD9YU176YKUAWmMn0Zmlfuu1lv1e7prY/aGxI/bTGQv?=
 =?us-ascii?Q?gekknmmPfdo375p24+SjmhBFNAK1fLVMTnQGyGOv3idC8sqse61f0VsrjlCC?=
 =?us-ascii?Q?odmnjPB20ozfN35YRZLXiYRltWZzE9JoFzqegQMzPbZVFNiAoa3xX4yXWkJc?=
 =?us-ascii?Q?qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bd18ad56-4ade-4e36-4718-08dc8a95d2c2
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 04:12:07.1939 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /WGrekfQEvBnOvxsgWGQXYxGvhot664hdxJv3ODUof9iFp+dXj04YRNgn0mRQ65QojM7A/RGOu71gVzEVq19rk3AvQElhN9j9W0LUQoiS9g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7915
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

On Tue, Jun 11, 2024 at 06:12:20PM GMT, Rodrigo Vivi wrote:
>On Tue, Jun 11, 2024 at 11:45:17PM +0200, Michal Wajdeczko wrote:
>>
>>
>> On 11.06.2024 22:32, John Harrison wrote:
>> > On 6/11/2024 07:30, Michal Wajdeczko wrote:
>> >> There are many GuC ABI definitions named in the same way by the i915
>> >> and Xe drivers, preventing proper generation of the documentation.
>> >>
>> >> Promote GuC ABI definitions to shared location that can be used by
>> >> both drivers and can be included in documentation.
>> > I still very strongly feel that this is the wrong place for such
>> > documentation. We do not document any of the hardware registers in the
>> > driver, nor the MI_ instructions, etc. Why is this any different? The
>> > GuC ABI is not under the control of the Linux kernel driver, either i915
>> > or Xe. It is effectively a hardware interface no different to any other
>> > hardware interface. It is already fully documented by the owners of that
>> > interface. Rather than just copying random chunks of that documentation
>> > into the kernel driver, we should just be publishing the official
>> > document itself. Same as we do for the rest of the hardware.
>>
>> so go publish this official document
>>
>> in the meantime IMO it is useful to show, with really little effort, on
>> what grounds the communication between i915/Xe and GuC works, so
>> everyone, not just selected engineers, can understand and review our
>> implementation and check its correctness
>>
>> furthermore, if you don't like any hw documentation then we should
>> revisit what is already in gpu/i915 section and also reconsider all our
>> efforts to document all non-static driver functions, as those functions
>> are still internal to the driver, not to be used outside
>
>I second that. This is useful documentation internal to our driver.
>Specially with a fw which has an ABI that demands version compatibility
>with the driver like this.

I too think it's very much appreciated to document the interface we
are using between kernel and firmware.

Lucas De Marchi
