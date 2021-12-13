Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 057B247351B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 20:36:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C386789ACC;
	Mon, 13 Dec 2021 19:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BEEC10E8A7
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 19:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639424210; x=1670960210;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qCCk9dJjpHeIh5OclK/Gz5eiktGSdsrMtaDo8OM2TGY=;
 b=DSeY90r6wj+vtlhzlxTB2qD5pyePEnCq79VSLmRbveNWAwd8Cb47Douy
 dXiNGkc9KP1HZV1S+Y/H9oYK2hPrS7R4NxYyWZSUFkWPfaWzQ7sTkr6jF
 lTT0ouYf9k0acGmHULtDhUrNQrZlQezNHJ1XBMpnYLEt1PmcyfjTmi503
 muTZb9wMBVO9WBygwGoIbPQcvWOSElbbh6t0vWI+keF/+6MdzLRLLWSX6
 /QrBskysE3LAW41fCAlR9kCvMWusY8ggBRvkVZ2wzLnjqdjQDhPg2NTGb
 65+zBoIv/m7ymt1kxXJ+YUd6bVyvxfu0JeNCDiN3kO8BGT4A19lLLv54k Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="262944117"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="262944117"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 11:36:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="505038692"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga007.jf.intel.com with ESMTP; 13 Dec 2021 11:36:48 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 11:36:48 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 11:36:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 11:36:47 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 11:36:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sc6OjXXkKk17QL47fYZMmnMeq4ub+FQRXpGZAtDtkS8+zdlG/O1oFM0TfjJd1qSeH1zoErPIZZ20RTFVY+2DX8B7gNUMh7f9URI3QIrju/Bf9Yff9Z2UmrFAxq5N6qR2x4mQVUu4K11myCbNt8P4X6fXhoqjn9hVleUPJ21K/EbF28HnA/iJbw327+Hq97YBbcDsnA/2VcTckeLTicUFijMg2HRN4whRG9s4sfg5wB2oeHTaeYEmF/AEHrng7EN0RhmRHHGbqWxgm36EgNjyx4OjWlnYkT99lpyvTW0RDyrF8D+GHfbeeooD3fHGELzEJPtfgld2bZyNxTnP+tpVJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y0HZN+NbfEjH49SUPPpjQ2IzqbOK+X+kgeLl3xo1Rs0=;
 b=nw5bdWuWKyJfVw43NeHy8xXWUAqq3DnoTblrR9MaaUtKkxWNhLubIBzeBdiJCUPyOAQphE2U2I/20MliuzWyr1S2R1EuJyJfs4JvMG+b2mSqet8sbHnu1t9JWnKWxWSwpLf7rynd/r+xo0a/pStOcZdUrE3Jnze49WCuSA8cfKoVzH3mQuZK3Ndn+sj20Kcz5Wt43kbDRrUUaN8IpcOg63ZjmeKP2R9Ivk5y06o7Bf+YIJt4H/0tnyBzdG/BgGiMf8GUiItQcDMFYqVCpOKYTbGFC7XcY58guhAyW4JJrlpBFDrgybFrw7wvjrg1soMtimhnZsG3lit0JRQPtIp2pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y0HZN+NbfEjH49SUPPpjQ2IzqbOK+X+kgeLl3xo1Rs0=;
 b=oUdq66D/IQl1QH2RIGbPaYw63B4Rpg6frzft2bMuJzwkSJnvNs+xH8lS1pyAyyYTq4/mnA81/Mg1alz0WrYqCIH+SNUR/ocTORHngX1w7oyeuX9FLIE5bezrzIC3IfdkA4MSrfRYEO6ahrhJPOmSa8dWVfWdxYivavUsL0Se7ug=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB2572.namprd11.prod.outlook.com (2603:10b6:5:c8::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.12; Mon, 13 Dec 2021 19:36:43 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::d91a:c903:855e:5f24]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::d91a:c903:855e:5f24%5]) with mapi id 15.20.4778.018; Mon, 13 Dec 2021
 19:36:43 +0000
Message-ID: <c89ffd48-e9f2-9370-824a-f3481b35c1a9@intel.com>
Date: Mon, 13 Dec 2021 11:36:40 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.2
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20211211000756.1698923-1-daniele.ceraolospurio@intel.com>
 <163926072881.10520.7032285550521688572@emeril.freedesktop.org>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <163926072881.10520.7032285550521688572@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0192.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::17) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dd0e3890-3080-4729-3e4f-08d9be6fe46d
X-MS-TrafficTypeDiagnostic: DM6PR11MB2572:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB2572A956371CAD6523005D33F4749@DM6PR11MB2572.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xGlgfIXsQvd8v8evWXxaoiMtPFxW7idMowX1w9/MBMxHNqH7Acx/OIADtSttOzuArbkCj/stC2BivL5/HFAPhyz2oZz4/oVwjQUq2L41Dr0vscSSlxEp+8qjWtYXSJFDSNM/IjwBXD15s+mhB8zm2DZUVWhxFlkzOAb31LZMGVSgUEKDtA5CpyAb34Tp7KGlc04rQhpeifIBfGNpSYqmnHkCVyXYIKzIguPsMDjjfzBYttjL33vGs8WHVH0xkjoinXlTTSN1a295kDExKnSQDu2g4AmzSOWR34PhY1NpPlGOtBZS6SLf/LqvCX7JnwHLRss4pq76OIXlqkzroYW2gISd1nnnBmTGGY1FsE9k/IjqXYbz1nz7yRuU0QyX9C/J6HF5HMh9GlK9sipB8MBhDP+FZ1YOHuP98GD7Qz1KOGil/YBOHvXRexjEhDk4GRgLBfcQn9axUoI4Jb8ASNclONVUjqmzQ/k6jybQZlPBIxjf9gsihIHLKNJC0hDxd38okT5Ku6Z2cS3dGeftyCQgqORdCx0DwmdEYZXGo4dqdfi5HuL3Vg/9C8Ljf7sK71/Gn5ZNUdZWKrhiljbdlFaOzvRnEf2mj3I2A0Ve2kl/9nznESh7PIBCG9T4zh1dgrkIL6thU9ujZEPXghlPIS+3pUb4Y6JjuXr1naRzjOk/iDXXsU7GJEpgOn/8UevdDhtOEgFF/+xd1FeN6HqYU/DRwT+cC4buBVkGDhT3TvTrrV2NFTQbme9umm997aYyaWinsr3Rg6UfOsyQzRARa64+xUMkLl62Kh885YRleX3suVhv4SHwTHMqJ7oU/KKJqFnG5086PlpRq8qTFGc7oWJ6wakyMI9P/Lz2t2RTD5PBsPlt619GoXjhS3sDO+YfZ+JAG9F6os+NUDCmomKopsyKQilsEernhTgnQHuwsQOO6Nk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(186003)(6916009)(30864003)(53546011)(966005)(5660300002)(36756003)(82960400001)(31686004)(38100700002)(2906002)(31696002)(6512007)(316002)(26005)(2616005)(83380400001)(508600001)(66476007)(6506007)(66946007)(66556008)(86362001)(6486002)(13750500001)(135533001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YzB3T3ljcWF3bktxb0liWlMzL0lsNU5EMXYzMkJVS0dWVVdVZ0hmK0lQSEsy?=
 =?utf-8?B?dFdyYmZxTlRabnNXaUFhNFJVM2FnNDNuMnBXaTJIM2FzMHdqMWNPcWIxc0V6?=
 =?utf-8?B?YXdkellWeHMzd212WHVmcjlWZkVOeXFTeisveW9DZzl5RnUxd0cxRzQvWFBR?=
 =?utf-8?B?SzVOa1Q5UjR2WDMrYWpLTkl0LzJicDdiVXZQNUkzMEI5ZVlnU0JkRGhZUUpJ?=
 =?utf-8?B?a0ZvZmZBdTFNVndYTnJqSlhXYUFlUHRUWjR4d08ydnptWmg2K1B1MkpLRnZ4?=
 =?utf-8?B?UlFqS2hWbUpObi9zT3g2RkFEa3Fwa2VRNjJGa1FMOHV3VUx2eEpNWFFSOUNP?=
 =?utf-8?B?c0V3bUs2MVFaZGtvb3FpRmQ3V3A3blNURDhQdTd6SVlSeHowWjBuelZuaTBX?=
 =?utf-8?B?NHFSaDNQY1pwSlBOMnFGcDF2d3JvWU5OZXBKNlJNYndrOTRBcWdnU2FJNEFr?=
 =?utf-8?B?RnhuTUZucDU1Rnh5aFRBSnErL1ZDWEJULzdqK0hMSmF5c1NrZjVNeHRmaWYy?=
 =?utf-8?B?RjE4eGdyK1dWd0hwZnpseFluanBrbWlFU3JwR1ZTS0xGUVdxV2JKMU5xRzdF?=
 =?utf-8?B?UDdPWUFWU0taWDZKdW9Hd25XbFFJeHVycmdLNS8ycGZxRGxETVljSzNqSm5s?=
 =?utf-8?B?RFpSNlV3REg4V3dvc3lvWnlGYXY0WlFXUUNaY284amljVndxS0RkQXk4ZEow?=
 =?utf-8?B?NGIyQkJRQ3FSM3RKcnByNy95Nm8rVXZ6SE04L2Q4dDRhN3huOFdsOFF3NTN5?=
 =?utf-8?B?QnNLREg4Z1FVWHhMSmF3cWNJQXRLelkvNDVXQks1ekdhUGphTVlVbkpWdTVC?=
 =?utf-8?B?bjNUTGNSc3hhTTB5akt3UlYzbXlaUHBjd0FMeXhuSU5wSnFYcll1RG55WUNX?=
 =?utf-8?B?VWJWc1paS3dJRHdNVmlEbVlyNXVKeUk5TzhEeDA0UEMwakpOZEVaaVM5Ly92?=
 =?utf-8?B?NVVRVTMrVmlEMGZMeE11alZPTW4xQU1pb0ZSd1hVNzllQlp4WTFZYlh2WTlz?=
 =?utf-8?B?Ni90K3ZlVGtLOEtyZnprbGpZc0U0d3djRUZNSmxsWGZwUXlnWXMrOXdBcE8z?=
 =?utf-8?B?UEpuYWt1Vjl1aWh4SDlZdkJONmpYekFLcVBkR05IanlUSktlYWZYRStEbWV2?=
 =?utf-8?B?UGRBSVlMVEQ4RzNhcjFpVGtoY05VblNrcmZYSlFDOU9kMHB3R0cxMlJDUXNp?=
 =?utf-8?B?SlRVRzRhRzg3ZjNnZ29rNU5wekpRU3NLaTVHR3JybGNTeHQ2UmZsMnV0YkJF?=
 =?utf-8?B?UEhyNDFma2ppSUc3N1dFZkg1MDJtc0FSRFBFM2s1TkQydmgwWGluak9wODFP?=
 =?utf-8?B?QWJCZE5kYlk3T1FQSzkzMzZjWHRqeTRrZEZWZ2NjRkFjWUcreEFFb25tNEZ4?=
 =?utf-8?B?MG1PclZMZVF6UmpRTHQ5OU9CQWx0c3A1bnM0NFNTUkNqS1FtMHYxdkowSWQ4?=
 =?utf-8?B?VytOYWVZeHM4d294cU1oRVFoWUhNQ2JyRUlZMGRDRWxvT3NDejMxY2kvcTFy?=
 =?utf-8?B?MWt5KzM0T2Npc2Z1c1YzYkg3WjBRV21PSmlPUmlqeXFlN2R4QzdsMklrWTNE?=
 =?utf-8?B?V2hPN3lWOGdrNHkwYnNtSXlINU55anBBUTMrcjE3b2djL3IveGF4dGFBTW1U?=
 =?utf-8?B?aWsyKzhQZmdXT2J3aFRKZ25XY0hoMUg4UjNwN1pLRVhEV0pzY0dYRTB5WW5D?=
 =?utf-8?B?K3hrMjFuTmxiMWhZVDBQRkFiWWZQN08ybDVncWdlbUxTeWVVbTk3RCtyTG1j?=
 =?utf-8?B?Wk1HMFd6b1JXdFdUT2wvQzU4dVZZaUR6VUZITmEzUFJpS0VsQVUrYkFMWlBY?=
 =?utf-8?B?UENEUHhQUHVkVHNEQkJYL3VVWUZWblpjOXFBQ2d1a29MWEx5dmFhQ1NYU3oz?=
 =?utf-8?B?bzVWUkFqa3BWYnJJLzk0L3BMODRVaDVicFJtNVdydXJ6QUlaSzlCZEczbmhR?=
 =?utf-8?B?dDdZU3RrWVhCcTVpMnhrTGtTVFhzK0Frek9iTXNxb2xhdThPb3NvbUdYVDlD?=
 =?utf-8?B?a3NCaWhSanBiT3BXZFNOM3c1VEY2NFJlOFhvVnFpQmJOcUtOZlNtUFhWeHdG?=
 =?utf-8?B?RklLZ3Y4cFVBY1lmOWM2YUdYZllWSlRuMkh2MUNsc3ZBZ1MyQlRueUZBVFVR?=
 =?utf-8?B?Si8vbm9aVkc2aWptVnFHVmVLNlJDYW5GbXJ5OVMvdWFIYTU0Wlg4Q0FocDhM?=
 =?utf-8?B?bWt1bWJXK01FOFhra0x6VmhFNEVlendLR2h4ZUZMb0lHcVNwUW92a3ZSQzFx?=
 =?utf-8?B?dko3UjkwL0x5aFdTcUtiajVubk5BPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dd0e3890-3080-4729-3e4f-08d9be6fe46d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2021 19:36:43.4522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J0llQMIGu0mQf93Cr9YEH/Qrj7S8kiOfRXMXLNcEFWkr5yiBq2Tt5NImlJdWog/mVj56xp0poGOkvazxDmiUtqAe1NcEEsLZ+EP+CYS8lqc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2572
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Support_bigger_GuC_RSA_keys?=
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



On 12/11/2021 2:12 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915: Support bigger GuC RSA keys
> *URL:* 	https://patchwork.freedesktop.org/series/97891/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/index.html
>
>
>   CI Bug Log - changes from CI_DRM_10988_full -> Patchwork_21830_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_21830_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21830_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (10 -> 10)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_21830_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_plane_cursor@pipe-a-viewport-size-64:
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk1/igt@kms_plane_cursor@pipe-a-viewport-size-64.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk9/igt@kms_plane_cursor@pipe-a-viewport-size-64.html>
>

This is unrelated. The series only changes GuC/HuC loading code and 
that's off by default in GLK.

Daniele

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_21830_full that come from 
> known issues:
>
>
>       CI changes
>
>
>         Issues hit
>
>   * boot:
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk1/boot.html>)
>         -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk8/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk1/boot.html>)
>         ([i915#4392])
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_ctx_isolation@preservation-s3@vcs0:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>         ([i915#180]) +5 similar issues
>  *
>
>     igt@gem_ctx_sseu@engines:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-tglb3/igt@gem_ctx_sseu@engines.html>
>         ([i915#280])
>  *
>
>     igt@gem_exec_capture@pi@rcs0:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl8/igt@gem_exec_capture@pi@rcs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-skl6/igt@gem_exec_capture@pi@rcs0.html>
>         ([i915#4547])
>  *
>
>     igt@gem_exec_fair@basic-none@vcs1:
>
>      o
>
>         shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html>
>         ([i915#2842])
>
>      o
>
>         shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html>
>         ([i915#2842])
>
>  *
>
>     igt@gem_exec_fair@basic-pace@bcs0:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html>
>         ([i915#2842])
>  *
>
>     igt@gem_exec_fair@basic-pace@rcs0:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html>
>         ([i915#2842])
>  *
>
>     igt@gem_exec_whisper@basic-fds-priority:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk1/igt@gem_exec_whisper@basic-fds-priority.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk9/igt@gem_exec_whisper@basic-fds-priority.html>
>         ([i915#118]) +1 similar issue
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-tglb8/igt@gem_huc_copy@huc-copy.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-tglb7/igt@gem_huc_copy@huc-copy.html>
>         ([i915#2190])
>  *
>
>     igt@gem_lmem_swapping@parallel-random-verify:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl6/igt@gem_lmem_swapping@parallel-random-verify.html>
>         ([fdo#109271] / [i915#4613]) +2 similar issues
>  *
>
>     igt@gem_lmem_swapping@verify:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-apl1/igt@gem_lmem_swapping@verify.html>
>         ([fdo#109271] / [i915#4613])
>  *
>
>     igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html>
>         ([fdo#109271] / [i915#1937])
>  *
>
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>
>      o
>
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>         ([fdo#109271] / [i915#3777])
>
>      o
>
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>         ([fdo#109271] / [i915#3777]) +2 similar issues
>
>  *
>
>     igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +4 similar issues
>  *
>
>     igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-apl1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +5 similar issues
>  *
>
>     igt@kms_cdclk@mode-transition:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-apl1/igt@kms_cdclk@mode-transition.html>
>         ([fdo#109271]) +116 similar issues
>  *
>
>     igt@kms_chamelium@hdmi-audio:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-apl4/igt@kms_chamelium@hdmi-audio.html>
>         ([fdo#109271] / [fdo#111827]) +10 similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-b-ctm-0-25:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl1/igt@kms_color_chamelium@pipe-b-ctm-0-25.html>
>         ([fdo#109271] / [fdo#111827]) +13 similar issues
>  *
>
>     igt@kms_content_protection@atomic-dpms:
>
>       o shard-kbl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl6/igt@kms_content_protection@atomic-dpms.html>
>         ([i915#1319])
>  *
>
>     igt@kms_content_protection@uevent:
>
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl6/igt@kms_content_protection@uevent.html>
>         ([i915#2105])
>  *
>
>     igt@kms_cursor_crc@pipe-c-cursor-suspend:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html>
>         ([i915#180]) +1 similar issue
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         ([i915#2346])
>  *
>
>     igt@kms_fbcon_fbt@fbc-suspend:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#180] / [i915#636])
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html>
>         ([i915#79]) +1 similar issue
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html>
>         ([i915#79])
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html>
>         ([i915#3701])
>  *
>
>     igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs:
>
>       o shard-apl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-apl6/igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs.html>
>         ([i915#1226])
>  *
>
>     igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html>
>         ([fdo#109271]) +174 similar issues
>  *
>
>     igt@kms_hdr@bpc-switch-dpms:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html>
>         ([i915#1188])
>  *
>
>     igt@kms_pipe_crc_basic@read-crc-pipe-d:
>
>      o
>
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl2/igt@kms_pipe_crc_basic@read-crc-pipe-d.html>
>         ([fdo#109271] / [i915#533])
>
>      o
>
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-apl4/igt@kms_pipe_crc_basic@read-crc-pipe-d.html>
>         ([fdo#109271] / [i915#533])
>
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>         ([i915#265])
>  *
>
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         ([i915#265])
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html>
>         ([fdo#108145] / [i915#265]) +1 similar issue
>  *
>
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html>
>         ([fdo#109271] / [i915#658]) +5 similar issues
>  *
>
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html>
>         ([fdo#109271] / [i915#658]) +2 similar issues
>  *
>
>     igt@kms_writeback@writeback-check-output:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl6/igt@kms_writeback@writeback-check-output.html>
>         ([fdo#109271] / [i915#2437])
>  *
>
>     igt@perf@polling-parameterized:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl8/igt@perf@polling-parameterized.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-skl6/igt@perf@polling-parameterized.html>
>         ([i915#1542])
>  *
>
>     igt@sysfs_clients@split-50:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl6/igt@sysfs_clients@split-50.html>
>         ([fdo#109271] / [i915#2994]) +1 similar issue
>
>
>         Possible fixes
>
>  *
>
>     igt@feature_discovery@psr2:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb4/igt@feature_discovery@psr2.html>
>         ([i915#658]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-iclb2/igt@feature_discovery@psr2.html>
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         +3 similar issues
>  *
>
>     igt@gem_exec_fair@basic-sync@rcs0:
>
>       o shard-kbl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl3/igt@gem_exec_fair@basic-sync@rcs0.html>
>         ([fdo#109271]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl3/igt@gem_exec_fair@basic-sync@rcs0.html>
>         +1 similar issue
>  *
>
>     igt@gem_exec_fair@basic-throttle@rcs0:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         ([i915#2849]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html>
>  *
>
>     igt@gem_exec_whisper@basic-contexts-all:
>
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk4/igt@gem_exec_whisper@basic-contexts-all.html>
>         ([i915#118]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-glk7/igt@gem_exec_whisper@basic-contexts-all.html>
>  *
>
>     igt@i915_pm_backlight@basic-brightness:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@i915_pm_backlight@basic-brightness.html>
>         ([i915#3012]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html>
>  *
>
>     igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html>
>         ([i915#1845]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html>
>         +6 similar issues
>  *
>
>     igt@kms_color@pipe-b-ctm-negative:
>
>       o {shard-rkl}: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-6/igt@kms_color@pipe-b-ctm-negative.html>,
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_color@pipe-b-ctm-negative.html>)
>         ([i915#1149] / [i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-rkl-6/igt@kms_color@pipe-b-ctm-negative.html>
>  *
>
>     igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html>
>         ([fdo#112022] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html>
>         +1 similar issue
>  *
>
>     igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html>
>         ([fdo#111825] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html>
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         ([i915#2346] / [i915#533]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>  *
>
>     igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
>
>       o {shard-rkl}: (SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html>,
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html>)
>         ([fdo#111825] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-rkl-6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html>
>  *
>
>     igt@kms_fbcon_fbt@fbc-suspend:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#1849]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html>
>         +5 similar issues
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>
>      o
>
>         shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         +7 similar issues
>
>      o
>
>         shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         +3 similar issues
>
>  *
>
>     igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html>
>         ([i915#2122]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html>
>         +1 similar issue
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
>
>       o {shard-rkl}: (SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html>)
>         ([i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html>
>         +3 similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:
>
>       o {shard-rkl}: (SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html>,
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html>)
>         ([i915#1849] / [i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html>
>  *
>
>     igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html>
>         ([i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html>
>         +1 similar issue
>  *
>
>     igt@kms_invalid_mode@bad-vsync-end:
>
>       o {shard-rkl}: (SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_invalid_mode@bad-vsync-end.html>,
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_invalid_mode@bad-vsync-end.html>)
>         ([i915#4278]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html>
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html>
>         ([i915#1849] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html>
>         +1 similar issue
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>         ([fdo#108145] / [i915#265]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>         +1 similar issue
>  *
>
>     igt@kms_psr@primary_blt:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_psr@primary_blt.html>
>         ([i915#1072]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-rkl-6/igt@kms_psr@primary_blt.html>
>  *
>
>     igt@kms_psr@psr2_primary_mmap_cpu:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html>
>         ([fdo#109441]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html>
>         +2 similar issues
>  *
>
>     igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
>
>       o {shard-rkl}: (SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html>)
>         ([i915#1845]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-rkl-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html>
>         +1 similar issue
>  *
>
>     igt@kms_setmode@basic:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl2/igt@kms_setmode@basic.html>
>         ([i915#31]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-apl4/igt@kms_setmode@basic.html>
>  *
>
>     igt@kms_vblank@pipe-a-ts-continuation-suspend:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>         ([i915#180] / [i915#295]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>  *
>
>     igt@perf_pmu@module-unload:
>
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl10/igt@perf_pmu@module-unload.html>
>         ([i915#1982] / [i915#262]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-skl6/igt@perf_pmu@module-unload.html>
>  *
>
>     igt@sysfs_heartbeat_interval@mixed@rcs0:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl1/igt@sysfs_heartbeat_interval@mixed@rcs0.html>
>         ([i915#1731]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21830/shard-skl10/igt@sysfs_heartbeat_interval@mixed@rcs0.html>
>
>
>         Warnings
>
>   * igt@i915_pm_rc6_residency@rc6-fence:
>       o shard-iclb: [WARN][171] ([i915#1804] / [i915#26
>

