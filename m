Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9625263C9FD
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 22:03:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288D910E3E5;
	Tue, 29 Nov 2022 21:03:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C495510E3E5
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 21:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669755820; x=1701291820;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=DvU4Jjalv5l+Nh+s6FgB8yRVAG+ls1fi9xrcxvjul04=;
 b=le9Ww5mSFVVb6C4+Plf+/V9YiuS7tzLkGQHNIDf9ivSH/Po1JFsODpAD
 fZvluRfKKPAtGEvjNDi9cZu5eZ5vymfyBUcY3Qt6C9DC5C3Z2XxrKpeLk
 wep2MLWNfkVcAoWhVGaJOuiw7BGO93WxhYp5FjhtqO3Ot41PUuh5BPkxV
 O4YobJFMZ4YCscKClfPBaphI02ETYGOcvmcWExqlkIRxLd+5ialv2dZr0
 nxTn4pbpvnT/PKDFkaI4pdfqT7vcxqNk1jyUoXKNFBoQAmpePc3vERzvG
 XP9vKT8RLtacGgIUmQW72FH58U0IWD6Ys1G1opG/GAv+K2/Zkelbs/oTb Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="295593674"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="295593674"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 13:03:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="637745982"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="637745982"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 29 Nov 2022 13:03:39 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 13:03:39 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 13:03:39 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 13:03:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UEPDeCccbHw9+WGiIciZnZ8t+PPkvzKYkaE8O00xmsJCQgU9q3Hgao0RyHcXSFdhaLR2spY7maBviWtU+wWfVN+7+0DRRHBBtmV5u0QdkvcIrd0h1Lqu83fUoZhtS+d+d2DMWL7lcIF73GfKN7/Fk555TZDhu8B2eStDg0RaRhnaCPzKjOVkrsKppVLd1F/IblGd6xpammDAjDiF8hwHYNWN+sEIX2sGGm7X2LJQAyjoDHviNGgakE1RWByztj6UflJDrFK4ptTE8iZQ+NelhY30rsg6W132yiUwAyRwMToxoSEYnA/WyDE5+kFDa7+0pc6X6vPVrut9JGFXtY6Bzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z0xyqHI2XpCcdOCwIBYamAYZJf1hqtlaTYxHIZ2BKLY=;
 b=NvBZ+4E/FIy4ynYOIx9dj3/ZAvueJy3HOV00JJxxWt0lg7K/Sm78oW3Sdk4An1QkOnLvRI89IcNTARGDRIKtg6AcpoqMQPI0TtdR+K/hoHDCXQVOpZg01BC1rYCaJ9mtsX65+yWBFOCiv0dk5mBijRAj+1t8ERN1b4BE0GdI73L4+eyaPGOVBF8HGCNCL+MCRhVZlNg9NHd6+/9rTLOx7pTelY5r97IKbCAqTO86IJX3kfmOYO+kH/dLwKMQY81UUnesBVhF92hDxySTzl+VYZDLycdIk1wovySa/fvTOrHScJjuiKjXEHQtbC0EzaCckGeBFzk01z2Q73B+4tm9fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 PH7PR11MB6054.namprd11.prod.outlook.com (2603:10b6:510:1d2::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.23; Tue, 29 Nov 2022 21:03:37 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 21:03:37 +0000
Date: Tue, 29 Nov 2022 13:03:35 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y4Zzp4DMvNCBz7aS@unerlige-ril>
References: <20221123235342.713068-1-umesh.nerlige.ramappa@intel.com>
 <166970635121.23270.3409437165570860027@emeril.freedesktop.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <166970635121.23270.3409437165570860027@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR05CA0052.namprd05.prod.outlook.com
 (2603:10b6:a03:74::29) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|PH7PR11MB6054:EE_
X-MS-Office365-Filtering-Correlation-Id: d5846ae6-588c-422a-b143-08dad24d2f4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gLyPwik+iGe1p8fTFrH3+EMu+xeNjcCHXNP5UbCIHI3FJk/RNAmvbp6AzwhSXjZ1jJwTJqJPCeuw/eGu9esiknUJlyJHv7Fks105AZXzwpH2clsydlODI/snUEAnjmssBurshCAS4kCM4Q6maHJYykHDCZFmNjK/f2DN8jyvCxTtrIhOj1o59JN2FNc8jI5XKauWyM9jVo5Lv+XNlUyq/bzW3Pd6anyvNXScYQmyBrEgnujFQtKKR6EDGSAEDH1i5yaVi2ZhLbRa2kNWN+65YKUfT9gCOSSWBCKkxOX5/GU7COPJLmtqZjwQEFiMEztIpbXeiwurE0p2n2SNq5WeIy9mm9LICWWsmocNJfwetmQNjOTWObEMdlXU7IuKDRFJ49MB5do0VQ2E7E0Ug4Jpq7YvNEDfDXCyCnyb++T7bIg5wJv8RtpRP+5jxzDvMjZddVGIhkyRJdWHmys3bRdYAnOcEPA7LLDtA7lv7FjBpjA+Hu0DuMIcKuVPNJMzqVZAaGdJILd9CYOt1LEys79/blzHiEOxa9hENOGCRQDGq+ZySJWWhgova3g0M6A1Cl2Tw7mvVlW8GH94Uw8g9NgsFrLc/zBUi7SNKVDYVMqLB0dqWYvEJmGKwpyfR9+WJDmpE8QaCT8JmT/O4Plx+7O4pOYVJ+LPy9/mHW0YXLaPSHs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(136003)(396003)(346002)(376002)(366004)(451199015)(186003)(316002)(86362001)(6916009)(6486002)(82960400001)(38100700002)(83380400001)(9686003)(26005)(6506007)(6512007)(33716001)(2906002)(8936002)(478600001)(5660300002)(41300700001)(66946007)(66556008)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDllaEUzc1FOdGl3eTE3TEk4b1lFTldrSVZISGdhM2l0VnVCZStjb2pBdU1y?=
 =?utf-8?B?R2hVSDFFa3BTM2IvVm1iY2R2emY4M1U3a1FXV0c2RlBJRmovK1hNV2YyaHBN?=
 =?utf-8?B?VjVBc0FCMmo0ZXphZGUzMS9EalJnVEk2Z3VvZWN2eW9NKzNwSjNEb0k1Z2p4?=
 =?utf-8?B?dTZKdnhQK25UVU9PYWk0ZE5FbzdVM2pHVGphMkN2YlZ0RUI5U0oyZmJ2aWtR?=
 =?utf-8?B?bXFlQjN2MEYwaFZZdWZRK2tUZmR0RitVOGN6TG1KUU1oTHlkWEg4bk9XMHRl?=
 =?utf-8?B?V3Nua2piOTNtalBwcDRSa2JlNmdVcGt1K2cvTERaNzN6SWRsQzlEU21iU0VP?=
 =?utf-8?B?MHF2Z0kwMUFHQmtSeHA4TG1iNFltOC9HelBJSTcrdUJQTXBhZEtNQVBQZnBK?=
 =?utf-8?B?Ym9LOXhOZDZGVjhFUjE1TW5nVmlVb25QckdXN1ladzFueFlUbTBRNERxN0lq?=
 =?utf-8?B?bFBFSmg1MGNBNDVTbmhTSjZ1WmxLMVZiZEZKczNSUXRrcmdlYTNzMXVQMEdx?=
 =?utf-8?B?czhldEVHMTdDb3k1bTlNL3F5TUM3dkJJWXFxdUVZQ2lLVDE0N0VuaFE5SWlT?=
 =?utf-8?B?bVNBWUdDNTZLS0gxRnVuU1AybTlLTHJNcm1OVUI4QlJ2aVdiZjltZWZJRy9I?=
 =?utf-8?B?WkZJSTFDUFF5b0lKa3pYU0pJYVBEL0FFQjNIeWxjSnY2K09HOWJVUnpRNFNN?=
 =?utf-8?B?eGlrd3lrWSttdE9VczZFSzVRakJOZG9EQUpOREF4cHJYZnd6UithMDVvaldS?=
 =?utf-8?B?WFFjeEttUnlPbE1BZHdCRWxleUxHRDBUcWlNR2tpckpaMFpza0J5ZzdrZWVa?=
 =?utf-8?B?NjNHWDN3TzNFTThKR2tWTXBJVXgrd0s1RHFhd3pHQTNqQVNRcTViZVJ0bDl4?=
 =?utf-8?B?RWVIMVlrZ25lZWJFOS92bGNvdVdtVTBEK0RGVS8yRFFQMjRmaU82K2VUd2h2?=
 =?utf-8?B?YXhUd2Uwc2xWejJua2dqVm1SM0hjclpiNnFhZ0UrZUdnQkwxNHVNNE1uMm1s?=
 =?utf-8?B?ZlVwVitSdk85NHQyQm5UcFhuS0xkS2g0WHR6RUNVZmFJeDJ2VjFwRkJQYzNV?=
 =?utf-8?B?TFh4YW9qZ3NJTjhQY2xJckltVWFwVlR4TVlCeUkyZXJoRHlHanZ6bXAxMTRq?=
 =?utf-8?B?dFFyRXk3NGxSaFcyYWpxKy9NS2JobjNnUnVvL1N1TE83MEVCaG82Um40S05P?=
 =?utf-8?B?SHVjNE4xc0UrRmY3aE52amNuRTg4UzZqZUREdjk1ejBQYUNNSTBYSlFFUHM1?=
 =?utf-8?B?OFkzeWlONWNNWWtnYS9lM24raXM5YktZK2liRXM3WGJZRkpsN3oySzViUml2?=
 =?utf-8?B?SGllRnFITWdGLzE3bmZuWDdJN2FpNWRlN3JnOHFWdFYwd3F4Mmc4OFV2Q2tL?=
 =?utf-8?B?ZGZkd2pCZ0ZSRVpVQ0JLSkl5VmZXZFRaS1ZFM1h1cmNxUTNYQjArZXIrQTZR?=
 =?utf-8?B?WERNRUVzeHQzVHJiQ0UvYjVmTnlabE5RdklNNDdVWlk3TDlnVDMyb0NiY2kz?=
 =?utf-8?B?NjVuUHpyV25ZUnVaZDR3a1hPMFBPL1hFSDdodzhleklKZjBxZUFjMk4wSU96?=
 =?utf-8?B?aUZzN0ZHUE9CRkFIUko1MWl3ZG5uNndaWFVvZExETThKQjJzZ0FyVGFQcEhn?=
 =?utf-8?B?cENjTlBKVjNwZkdIYkxkQzJCMEp2OHhEUU8wc0tLMUdFUFI3WFBJdjdpWmtn?=
 =?utf-8?B?RHhGYmlCODFOVFJ1NTUrT2k3dzlyaHcrWW9wUk9OZGlZRlZTaDNGOUZQSTAr?=
 =?utf-8?B?OWhVOUl5S0N0ZktyWFN6YXVDcTBRdW04N2Rka04zYU5WREFSWThmcWZIVjN3?=
 =?utf-8?B?VWNrTUxSRHlSd1BlU0NHYlkxTWE1Q0tIa0VIMVFKbjRaQ1orQjdHKytFVS9V?=
 =?utf-8?B?MTFIRkNSeTlrN0lUakJnSE1rNFE4cVRiKzJidW5BZG82NzZ5cVlvYm5manpw?=
 =?utf-8?B?NmV0SGVLVXQ5UXpaTXFyTTd0VXNLRUJ4WXo0RUoyc0gzM1N6VzA1ZDFGUW91?=
 =?utf-8?B?RXQ3QkgyRWhaRlRHL1NiaFZIVlcydUZkTXJhNUZnMlVtaERCb2UzamZCMXhn?=
 =?utf-8?B?b3V6V0JiZjdNaXdaRitJN1l3UGhuaUhkeUZ5L0NlRDhkTWZVemhPZnRwZGMx?=
 =?utf-8?B?NjNQc3ArczkyZEUrakw4NU84NWUydXFENWs1NkJPMnZMSDVxSVdUcnYvRFdW?=
 =?utf-8?Q?lFvgBKLB6d0pNtf4aMYSURY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d5846ae6-588c-422a-b143-08dad24d2f4f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2022 21:03:37.6287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WK8lk7+dVq4PdLdGEXE7CPZn0VLlSYXrQnvX6vNjVStxhSndRRxrtePgR9ry/BhKZGZg3e9my67O5AV91ubCv1zCg/DMnfocxXDVXfVmnEA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6054
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Do_not_parse_context_image_for_HSW_=28rev4=29?=
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

On Tue, Nov 29, 2022 at 07:19:11AM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  drm/i915/perf: Do not parse context image for HSW (rev4)
>URL:     [1]https://patchwork.freedesktop.org/series/111231/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111231v4/index.html
>
>     CI Bug Log - changes from CI_DRM_12440_full -> Patchwork_111231v4_full
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_111231v4_full absolutely
>   need to be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_111231v4_full, please notify your bug team to
>   allow them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>Participating hosts (10 -> 10)
>
>   No changes in participating hosts
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_111231v4_full:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@gem_mmap_offset@open-flood:
>
>          * shard-skl: [3]PASS -> [4]INCOMPLETE

This is unrelated since the changes in this patch are localized to a 
very specific OA use case. The above test does not exercise this path.

Umesh
>
>Known issues
