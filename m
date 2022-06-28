Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B47B055E525
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 16:00:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE48711A712;
	Tue, 28 Jun 2022 13:59:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAFFF11399F;
 Tue, 28 Jun 2022 13:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656424797; x=1687960797;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=flnyLmyUpUQuQU2gLt6iYRLtpW06tQcw9HbMyItRBMo=;
 b=EnMKed6zQ6aoxjYFtWuh1f53xcLxqH8pZFE6mKRjCZXtPF638/wAhr3a
 9v3JLyPAUUK8dOoOZkXxTx5/B7p0Rs3HhEwpvamip9WGLGouKwFDTnshI
 5WscFDbcvdQJheNdQRpoFxS4WnvU9vJTLNKQ7co9oB8Kqwj8PFsHgPCln
 JCODyh4D6IOSljx/5vo3PfdAkYpOfhyNZIsOD3i6NpfwTSbylMGZAqZ6B
 wLoHiwApHi32l+NvtH4p9jPjIfHlHO1nqS2OASK2307ZoZsdgsjVA+RRY
 qD7wtJmXIbVhw/dJwDnHIj699isHUC+KcRGGHwLjwcMyc91LfG1pVywza A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="262156322"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="262156322"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 06:59:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="680056098"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Jun 2022 06:59:57 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 06:59:56 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 06:59:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 06:59:56 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 06:59:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ly0mR9P6swysoSXA+cRRIdhx5SSrhTz7FTy+RlzuqJ4vE+9HGs+AnfBxeYeBh6WzkkDmbCP3tS44Pp+uPqhaZKh1mGq4dRn1jrnvqVgiAyphH2qM1X1j9kxrcwChRlEQaMRvyxPA4EoOHfUxbigukK0er8T5Ei40NGSBGQ8Qb+YSzgFOnDl4+fvZ8dDE7jo/HqFA8Y36nURLYT3jKEh1TBcao1j0T6v6afuqnTF16EyNAT5DJlahMFllZ0AvCVVLxS9q0gZy6ah8+/bham1VBn+7kCYsWfgNWnEOFi/TMpOO5SNkPiDtx6YVAh1gxaRtEv56HIGC/Br72kWoQ0/aQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=012/wmqIUTwePQAZUzhnkEZpDzboDvzTaqT/McEZ1Bg=;
 b=b83HXARzD48/GDZfwGRLaUV2Vqd+5IgwCfGjwbIjjFjFTUy3hkbtXFFy8SydwBgZD28EqSXTnygs3E6AUmEq17Xc0sCj7SFBZZ3QVFTYeewedSBASgRtOcMgMaEPtQd3DmBraiEBj8MwCxbkmTx8jVJ6Rc5/S/U0bQ1QwxP04orEEdKUA42KZfIwaYD0i8wmvQx+R3WFoDJh+mLpH72v3PJnjCzB/RLMeRBxs+mTDYQj3ddEwelqy0CnL0AV+4IgP0yjscqtxqTJjypiIu4AziFYuFmjnV9ULcyFxR0URTsUU/cNmuBfguipIuU8df9I6Blp6BgpQJkfxMvpzqy85Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by BL1PR11MB5954.namprd11.prod.outlook.com (2603:10b6:208:385::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.16; Tue, 28 Jun
 2022 13:59:49 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::49da:18ae:2975:c398]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::49da:18ae:2975:c398%8]) with mapi id 15.20.5373.018; Tue, 28 Jun 2022
 13:59:49 +0000
Message-ID: <1eb06a00-9a46-0452-6a8d-45104dfcde96@intel.com>
Date: Tue, 28 Jun 2022 16:59:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, <igt-dev@lists.freedesktop.org>
References: <20220627161004.70153-1-matthew.auld@intel.com>
 <edb8ed97-fee9-1e86-9339-979fd97b3f95@intel.com>
 <5db0e882-3691-882f-23a4-86238b55401b@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <5db0e882-3691-882f-23a4-86238b55401b@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0068.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::13) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 13438bfb-76d2-42fc-c4ca-08da590e76f6
X-MS-TrafficTypeDiagnostic: BL1PR11MB5954:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DQJYqyi/Iy119sOXY3xuRYM2khKCn4wnD4rmWdgqQbKxOqIejLnHGmiY9aMuRKSOh7jld+JNCDHVgLTbzYcnIpwjXNkms/tGfMc3AsLFI4MUpE3pawtZAgq30BpKXRdjSK3/fVDgwpJiEL4Mn/TQcF4wCVzZKHRHY9QAQ+0eC9KsZpqxZ7Mi6HpPm+Z9805q/xqQd7zgflKXvJjtv1TtInKQFtWDoALUWAJ4NJXyQacxxbIe6pHAMDm0qzmMF34FR/buKKkZD1Sf1PnFlor7BlmCijDJ0PYQxqXsme0Q6Z0la71Yk9oQ5Fe6MBI/2T/yp6vdt2eti3pnc8976lGwFxa3HaB3SwzdsvHY4YXOSgdeAc07SAphdhFVQCpp0CIl7GZyvReabk3vIVZ7WxTzHrB9CV0m8oYpJNwxBDBbNUDNWUNfN+3wAbhgLiGyuIbDyXkK0sK4+YS098Nl6IBExFauuwC0lgy1O+eNgtZarDj3NuXkUeb9G+sDN1S6Nc2Kh1lS/wjrkR8UnF+5C1q2X6J11hKerCqk753+C/9ObwLxleh2pB+wg3TkmdW7ae5I/vW1+6rBHMPxmTwMFrP+GDxPGVIXprYjE874pmvLYsk+iMCnrr+2mCzP5fVdg9NRBdIJk69uulKKUeGTRHzeHs8hkwM9VQ3bNElOV2+6k34lvi99oMSo9PL5IIiYRqcqlY7xNcHLNTeb7ibuT1v8ekuoEDMA5R6Pm3o+Glg/zjYoth/IgSMLewp8cSjcgUropnsmUhAofKrpWkLtrDzbkLMN+aK7d35m8U4UXm7+ZRKjZX7LtH2tKTpa2BJ9X7fOmDSDBdE5u83FU5t/43GNAR0x5cVPFH4hPlHwhICDHSc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(396003)(366004)(39860400002)(136003)(8936002)(66556008)(53546011)(2616005)(6486002)(450100002)(4326008)(31696002)(31686004)(26005)(66946007)(41300700001)(5660300002)(6512007)(478600001)(82960400001)(83380400001)(6506007)(2906002)(36756003)(8676002)(66476007)(38100700002)(316002)(186003)(6666004)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0JEUWlLRStzajJGR3J5VHpDRFd1L1JqQ2U4L1pRSVBndEZ2RVlPdlMwWUJU?=
 =?utf-8?B?KzBLTW05WWozOVhKcVpoczhqUU1ZdjY5aUEydWhRUUlrSDlqcjJyMVRIeklQ?=
 =?utf-8?B?cnlUUUVOc285ZjNpMlZvSVVIT1dRYWVNUnl2VXpZR0I1K3cvMWFoVXpqdUI5?=
 =?utf-8?B?N24xaGQ4dkZOZ1BKTitSRGhRK2p3c1RoQXBSTHMzREFCUHNNeFVOK2prTzZE?=
 =?utf-8?B?UXBhN1BqZnRDekZVWHFzZEZobkU3SDF3V3ZYVjlsV01DdXVjKzY3YTFHQ0Zm?=
 =?utf-8?B?WHBHZW5HMFdOQ3FnUktGOHU4Uzg5bEEyQ1gxd2ZocGtmQ2N2d0x5K3JDam4z?=
 =?utf-8?B?cGNMcmp1Rm0xeXB4dDlscEttakZ2R1VxTTBxelRLTHlGOTBVVENHd21sd1JO?=
 =?utf-8?B?NmFZOVlJTWpLT3N4VGFLM09zNEliaDNSK0hZQWN3ZEU0ZmdmZWZYNmRrMVB2?=
 =?utf-8?B?QXhBVCtETFdPUXNnNnM4NnJWUDZPZ05aL1ZnVS82c0RxNXVhbVlSUnY5YkVi?=
 =?utf-8?B?SklNMXRnditKRTNBQnlLZGUwR2pUQnlUSlF4QytzYmI3R1JMNzg4eHZRLzMy?=
 =?utf-8?B?cXB2OGNpNnFpdmkzcGZPSEV5cEZXQWhPYUxQNmxRQ0NoSXRKMTVTakNJbWdW?=
 =?utf-8?B?Q2cyS1dLdW5YbTZmdDVNRUc0Z3JPSTVjKzJrekRhRlpUVjh1dWR5VlVkMmVw?=
 =?utf-8?B?OWVOR0x6ajZLY1F5dHdNMUNXS2RkZmdram5tbVhZZU1OWjlycHh0bDVHMXdV?=
 =?utf-8?B?bElKL3RhRU1tWFp6aWRzNmZvb05zYmRjZ3YrT3FmYmI3YjZobi8xZnJMVUJv?=
 =?utf-8?B?bWxvREV5L2FwNm5xdisvZTJ5NkFicHVQNTFCeEYwWWZSQkwyN2lzR3YzVU81?=
 =?utf-8?B?Q0NKeWFQdGIrcHpSWjZFRzZVQ2M0QXJFWXp1ZkVlMjNjdWt5U2NYM1M5ZGo3?=
 =?utf-8?B?ZC9yeFBBMHJiMDU1ejJnUmRsOWlrUklDUUpxQUFLYm5CWmlDb2N0ZzdDaXpS?=
 =?utf-8?B?QyszU1ZCQy9lUzVqNXZpcDRCL1FFM1RrQUY1Y3BMOWN4cnJac3pxdlg4TXJ4?=
 =?utf-8?B?dlZodllCUklDWnhISnVNUTQ5UUVjK2Z5S0tUMDNtV0daOTJmOE5RbjN6TldK?=
 =?utf-8?B?Sk45RGhqc1lRcU9qTFR1anZxRkJMa0VRT3ZCZ1hrSzBoOUxTbGhJZjdCOXdI?=
 =?utf-8?B?VGx2STVDQzFhMkZicjlEbUtrK1RXZzdkejUrSHNKb1NxSHV5WGhRcE93VlQ4?=
 =?utf-8?B?S2wyUWFKTXFaRmc1cmQvSlZUcGNWaCtWaDU0UHBuV1QrR1lnWTJzS1JFeG12?=
 =?utf-8?B?Zkd2U3N0OGFwc2tZNnFqa3dlS0dXMm1qajI0U0Jpc3JVRVpmZXcvUGN6QTRG?=
 =?utf-8?B?aU9sR21iU1lxNDNpVEtWVHdXMW40OXFaUmYzUHZkcWxCTjNTQ3ptd1JTTmJB?=
 =?utf-8?B?N2dCaGRvYlgrT1pzblVpbzZYY2Z0NnlqQ1V6VThMMStqVWR2TDE0Z3ZvdnlX?=
 =?utf-8?B?ZkV2UkhaVnZZanNqK3FPanZZTEdzL1pYUWg0TSt2TE1RcDdZSWpxTTVHMDli?=
 =?utf-8?B?T3p1R3Q1c3pML3YyQVBVdFZGa2NhbG5nb3ZRQTg2R3IyNDlmVGpTS0Jtd0t6?=
 =?utf-8?B?N0ZwZ1F0c3ovdUI5bHpvTXRMUjVuKzM2VXAvamx4cjdyT25hSHdlQjVhT2Zy?=
 =?utf-8?B?ZlJtakJYS0Zzckx6b2ZMcWhYdms4R3dOYlE2cW5JSHptYjZyc1NNOWJIcFNC?=
 =?utf-8?B?K3luaTZhekxBMksySFoyT0tjbzFoS2NZUjZ4QmE4L3RzUlYvakc1YzREQk9W?=
 =?utf-8?B?MG9aWWdVbkxCZVB6clhlbjYzQlR2QTJYRmxTY2pZSWlRd0dENUpmUE9kRGt0?=
 =?utf-8?B?SHhjYWVjSzdsSFdaNkRUN3NmTWNCdEg4MTY2TGowN0g0d3JzejlYV0NWdGhl?=
 =?utf-8?B?a0ltQWR6Z0laUlliNmUyVUg5bW11eFRJSGtkL1ZDWGUwd3E3UlFNdVIrbm5L?=
 =?utf-8?B?MzZwUWowTnZwV21KUm9PdHNrK0UrRXE4T01rbjZwTzNSd0tvdG9kY0QvL01T?=
 =?utf-8?B?T29PL01WVmxCUHpzSVFkOFhmUmp2WDZQblZTbjFsR0V4bXl6Yzd6WkdCcldJ?=
 =?utf-8?B?TnB4TEduWWVnOEhpSnRZRURMaTl2MSt5d1BORkdlQWl6Z3I4N3NLSmJrTUlz?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13438bfb-76d2-42fc-c4ca-08da590e76f6
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2022 13:59:48.9925 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8jZM4+kyF+Ct94RT03Zf1XtzZaD4GC5GYVy2Exf6F5oEW2hwRH7k1lETcii/YPmsgUm4+7SKeeGxfKdgfmd65etqrM74V3ECihWaFWE8tqQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5954
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/3] tests/i915/gem_eio: fix uaf
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



On 6/28/22 3:47 PM, Matthew Auld wrote:
> On 28/06/2022 11:24, Gwan-gyeong Mun wrote:
>> Looks good to me.
>>
>> Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>>
>> However, the use after free build issue did not occur only with the "$ 
>> meson build && ninja -C build" build command guided by the igt 
>> README.md. How did you check it?
> 
> Hmm, I assume it's just a difference in compiler version or so. I have: 
> gcc (GCC) 12.1.1 20220507 (Red Hat 12.1.1-1).
> 
Thanks for sharing your compiling environment info.
My gcc says its version is 11.1.0.
I'll try with the version you mentioned.

$ gcc -v
Using built-in specs.
COLLECT_GCC=gcc
COLLECT_LTO_WRAPPER=/usr/lib/gcc/x86_64-pc-linux-gnu/11.1.0/lto-wrapper
Target: x86_64-pc-linux-gnu
Configured with: /build/gcc/src/gcc/configure --prefix=/usr 
--libdir=/usr/lib --libexecdir=/usr/lib --mandir=/usr/share/man 
--infodir=/usr/share/info --with-bugurl=https://bugs.archlinux.org/ 
--enable-languages=c,c++,ada,fortran,go,lto,objc,obj-c++,d --with-isl 
--with-linker-hash-style=gnu --with-system-zlib --enable-__cxa_atexit 
--enable-cet=auto --enable-checking=release --enable-clocale=gnu 
--enable-default-pie --enable-default-ssp --enable-gnu-indirect-function 
--enable-gnu-unique-object --enable-install-libiberty 
--enable-linker-build-id --enable-lto --enable-multilib --enable-plugin 
--enable-shared --enable-threads=posix --disable-libssp 
--disable-libstdcxx-pch --disable-libunwind-exceptions --disable-werror 
gdc_include_dir=/usr/include/dlang/gdc
Thread model: posix
Supported LTO compression algorithms: zlib zstd
gcc version 11.1.0 (GCC)


Thanks,
G.G.

>>
>> Br,
>>
>> G.G.
>>
>>
>> On 6/27/22 7:10 PM, Matthew Auld wrote:
>>> ../tests/i915/gem_eio.c:277:20: warning: pointer ‘ctx’ used after 
>>> ‘free’ [-Wuse-after-free]
>>>    277 |         igt_assert(igt_sysfs_printf(ctx->debugfs, 
>>> "i915_drop_caches",
>>> ../lib/igt_core.h:667:20: note: in definition of macro ‘igt_assert’
>>>    667 |         do { if (!(expr)) \
>>>        |                    ^~~~
>>> ../tests/i915/gem_eio.c:274:9: note: call to ‘free’ here
>>>    274 |         free(ctx);
>>>
>>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>>> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>>> ---
>>>   tests/i915/gem_eio.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/tests/i915/gem_eio.c b/tests/i915/gem_eio.c
>>> index 913a21f9..6cbae6eb 100644
>>> --- a/tests/i915/gem_eio.c
>>> +++ b/tests/i915/gem_eio.c
>>> @@ -270,11 +270,11 @@ static void hang_handler(union sigval arg)
>>>             igt_nsec_elapsed(&ctx->delay) / 1000.0);
>>>       igt_assert_eq(timer_delete(ctx->timer), 0);
>>> -    free(ctx);
>>>       /* flush any excess work before we start timing our reset */
>>>       igt_assert(igt_sysfs_printf(ctx->debugfs, "i915_drop_caches",
>>>                       "%d", DROP_RCU));
>>> +    free(ctx);
>>>       igt_nsec_elapsed(ts);
>>>       igt_assert(igt_sysfs_printf(dir, "i915_wedged", "%llu", -1ull));
>>>
