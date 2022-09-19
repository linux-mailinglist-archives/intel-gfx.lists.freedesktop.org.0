Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5495BD646
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 23:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBDED10E147;
	Mon, 19 Sep 2022 21:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A1B10E146
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 21:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663622480; x=1695158480;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zH/H44ZJssZN2ZMqNQWcqZamNDoGdjo4o14ULz9WZMY=;
 b=OhmR0ltfJvC+KS7IW2+8s7P6WpNOMfCIC6qt8tXtpCR7nqj2I6/o4A2b
 v0AHciyqe7mpCqfeHmWqiytvI0fGXwREKmapvuySjtK4d9dCy8BavBhUf
 g3K+YxOkaximInG+6bwfMcB5OZc9VCfK56j5xCuM2Fq27/yqUGp64aeqK
 dJVNaN+jSUy5FoCztLOXJXwLtMWZkbjGB7raoamNcHQQwX1Flxt22jm6n
 npCeOKgYfW9N64ZSUIGtmWXe9rooCqJU1TvwmA8ngD+Z0pAhLpIq8W9xQ
 wwa3eeZKSZjmQj1GE3zanfFb6I8QhyvQ9Nd/tLH2EX8+Q9Ud++pS6L11C w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="286571689"
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="286571689"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 14:21:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="794012236"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 19 Sep 2022 14:21:19 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 19 Sep 2022 14:21:19 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 19 Sep 2022 14:21:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 19 Sep 2022 14:21:18 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 19 Sep 2022 14:21:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cB+j/rTMjiN8ypyju+Vr8L4VKTYh7OZCJCwG/6wQaHWJFM0+fgn3RuHN+2uCi0sJ9PGgcdO6pZU/7QM+aqOzI0mIPyPT4CcQbWqEOdOaX1KB6WovoWSRWebnB9FEWKPVfOGt61uSDAVtqvueZeA6i5HC1SO31GiFDU+4aw+caD+Q3smR0kxOZQoifWjoqxBwxaeFMTq9DgNwJgTM0fUMmi1ro8uYNbiP87Zgyn6v4kwISr/UzAdrmZJP8S3tEFVZshUd4xmYrkmiMeD6xkDA9Opv491VyvtiL9hh9eyA7NtdudRN0RqMsgakBg0aHhSrI0JbexKUZFuvbmotjz45qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1NN66LVL8jLXlx5VtFd1eE9ydlA9LEPxtErTli+T+DI=;
 b=Egq+oFoq1qGixsH0J+RfPBW8yIPwt3cVwdVPKtJW9vXPFWCVctt64Q6Smvd9Gn5jde6uNGMMffXcpf9j/MCnWWPtBmT0o0uvia3tbJafXhS8KM0ZiPWJgz2Gn8OtBf+13leuEn6bI1fMqYVPr5+tL/fx0Kmv1sLw5y/KyNmQ2IBKlfPlw9G8A0YtBjExV5ZVEHHrwL1ruYRzBVjs3Lhu5mq6Ivw8xAn448YdUUklaBKgLRY933U0am/ZkxExUT88ffOCFcTlJd+b7wxEkHvYe2ul/aZ8T6OoY3wzt3O9IiX6DcRIzpUNYEOlFBJFElPwP4cHdzWITFFa1uMtkEfgsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BL1PR11MB5415.namprd11.prod.outlook.com (2603:10b6:208:315::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Mon, 19 Sep
 2022 21:21:17 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9c80:295f:7c50:625f]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9c80:295f:7c50:625f%4]) with mapi id 15.20.5632.021; Mon, 19 Sep 2022
 21:21:16 +0000
Date: Mon, 19 Sep 2022 14:21:07 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YyjdQ0rV1EoAofTP@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-17-umesh.nerlige.ramappa@intel.com>
 <875yhn526p.wl-ashutosh.dixit@intel.com>
 <YyTGxJ7LCYqnKoKb@unerlige-ril>
 <87zgezum74.wl-ashutosh.dixit@intel.com>
 <YyTbrRSAwlZEUrm+@unerlige-ril>
 <87wna3uja4.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87wna3uja4.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR03CA0086.namprd03.prod.outlook.com
 (2603:10b6:a03:331::31) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|BL1PR11MB5415:EE_
X-MS-Office365-Filtering-Correlation-Id: c09994ab-0d56-4e03-b3fb-08da9a84e34e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XtFgKtgCoKbF8E+JhfgoMtIXh0xxpv/8Bzn0YXroncg0gIdCPnt0n2Gl1mvchg0ujQ8sjzJyIeeTlEauV6lggBNZ77NPWepLxK5+V+9z5tefU0knmx+TRzOoBJXlMRZJiUlPlFDUjKLDCrugssGHZARwFiCo8l5/LqLdNKJp63YEze+Ls9hEDmw031hLasMIlLsjhUVhguhKJPTU5g6sIHV2S4otKRrhZa4Cup3q0UY6wl6AiweFWgwjHboKgBhbZFmyFhFvIWa7q5bMQ9TrDFIdcfWE1vU5b+22CIKRCh5NDSFzGHmSYpQ474OKDz5ebCaSI3NLujhEDU1pdXF4vH0mFhr1HH+jSDgzuW7ZqjLP45KGKJtnNHhLfKBcEtNweK6Dt2d/74bbgRXFuCgoXYD4wA9QqyG5K6Z119DN5Oylj9BpXQVA3kaS7bx2yO5NhXUF8ghDmfcXWBO7eLsMOVT5tK+o2PfnOHVxHyqTwFT/g6XS6I9Xw1egf1ISB+o0vHfKQoJ6T7hKEvjDbGzx9prH9CmHFRlJIvodh4XTnvaGloANif7jNiVT2icEWfCHDP1ENEEDwfrBsDq6wHgWv/IS/oFa38b7wPboF0t7fK6IxFPO6JgrcAx67W2JdH2YO40eRhyoJMxvNlTcVB3LeeE956jZuJqhQz133YyQrQg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(346002)(396003)(136003)(366004)(39860400002)(451199015)(83380400001)(5660300002)(6636002)(316002)(33716001)(186003)(8936002)(26005)(6512007)(86362001)(38100700002)(6862004)(9686003)(6486002)(4326008)(6506007)(2906002)(478600001)(82960400001)(66556008)(8676002)(966005)(66476007)(66946007)(107886003)(6666004)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFpLUDNPR1ppZklkZnViQ2p6OWNCelBZMWtMY2p0aVg2cGFPd2ZoN0ptNEpG?=
 =?utf-8?B?Z2ZmaVFZSUZlWDdWeXJtSmNXWVEyR0szdHNTRTRhUW5EOERjKzArc21UNWpE?=
 =?utf-8?B?YmhjUzIrQXVFbFNSUno2MnFBVklsOTZLUk1MOXoxdjJjcDBvd1QwOUNjN0Er?=
 =?utf-8?B?RzlJUUZzbEZHVU1aempGdnQ5em5wQ2w4c1hYbm0wUjZzYWhFM0FiRVd6WW1S?=
 =?utf-8?B?MVJCU1haSG5kNTM0UmV4V0xJalUvK0tsQm9vTTcxcFVGa1llRFRXeDF0YnZq?=
 =?utf-8?B?Y2hubGt3ayt1UytsQUNLcW5iM3NwSVpvVHI0YndzSTJOMEo2SCsxdXVBNFgv?=
 =?utf-8?B?Z0ZaU0o4RFA4Q0ZNUG43V04yZ3hzMU5uVGtYVVVqUHpjNWV1a3pnNFE1OFBG?=
 =?utf-8?B?MVdHa1NDYllnMVZCSEl1YlBVVjNGNHVrTXZxdzJ6aEJYaUZUREgrVU5jR2gv?=
 =?utf-8?B?Y08rd21xK1FTN3k3L0U3U3RKV2s1aS9QeXowMm5rWFlwSzhUZThGQnFwMGY2?=
 =?utf-8?B?b0NoUXBTSlZ5SzA0cmJ0Q1gzVkdnVDVwZWNmck5zZDdrQmlkS1FpUGJ4WjZy?=
 =?utf-8?B?SFhuWDh4VndINmp0QlIyME0xOU5SaXJJK3FLUm0rcDJXcDVzNFFZZnBZWUtQ?=
 =?utf-8?B?ZXNYeUdUTk9TS0xRMkl3dU5zN0xwMWFaL2V6ZDgwUmdOTkxyWDdiK3R3YnlB?=
 =?utf-8?B?dDBXd1JIOUV2ZVh6VGU4eThXZjh1QTAvUGdNY3lzUTdmVklnQUc2YTN3MWtB?=
 =?utf-8?B?V2JNZjk0MmwrRXFPZExmSjRtRWdVUnNMR2QrUGtEWWZ4cGdvZGpoMjh4UndC?=
 =?utf-8?B?a1haOTBZVmZUTDFKSHE2ckdPbWt2aSsyQTNJckFqeFdrYmNlbzV6Yi9YbjJG?=
 =?utf-8?B?ZkdLSk02cWVTSHJTSmZJT1hpZ3lzREUzZzdWSTJySzdscjlmRzdzQ0dvRzZG?=
 =?utf-8?B?ZTY5OXNmQ21sMXlXeE1BZTREV0ZTZzVqN3Jaa0Z3dVdER0FoTzNsWDdxK0E2?=
 =?utf-8?B?bkdiTXFlbFp5UHY0NnY0MlFjUlZGYzBiNCtDY0JHVGl4WTBmKzZlcE5ybXpt?=
 =?utf-8?B?NmZJN3U3N2JuL3poUUxCdkkvdXMwcFBqdk5ybUZUREFnZVJOVkFXellJMWVZ?=
 =?utf-8?B?aGUzZzBrZjZDalRRK2ZqanFqU3pDc2pmTnRFNHNpaGFHMlNVSUZNZkwzWEtj?=
 =?utf-8?B?dDVnaExWRkY3MTNWUG9XYmw2S2V4S2lQZnV2ZWR6clNENCtEYjhWazN4YnRM?=
 =?utf-8?B?U2RiTXZOenBrNnNhRWlwckJJY25oSGNpT2Q4WXhwcjdxSlFvNWxCd1ovWGh1?=
 =?utf-8?B?eGlDaEtIRVMvOHlIbDRJMHdIMDhoR0VhRXNEeElMamZhb295UEVzUjI1NGV4?=
 =?utf-8?B?TW4rTmQ1Nk1oQzlHdks2anl4NzB3MkxldkJBSnd1V1FsTVZiN1AxMS9IVzhk?=
 =?utf-8?B?TVpnb1prUmF0d2E0RU5Hb1cvUXRFRlNrMklUcjFMUmErdTAwZlBRMGp4UVpN?=
 =?utf-8?B?TmI2TlJJOXJyVnFGeVFJME9DaDlrWTQ5eUtkSlFwZVl2OURWeWRLQ0NlSCtI?=
 =?utf-8?B?dmpTOXl4Ti9VbFpGSFJWcTVITVcyUG5qMDZFZTAyQVhjclFWZmZra0tWei9t?=
 =?utf-8?B?aGlRMEYvaW9laktxMnBSS0FaVmRRS3FldGFBRStRZ3EzWTNsYnRYRFF1TzM2?=
 =?utf-8?B?ZEZNTWxaalRNTWdNVzluUUhDcE5oc3ZsVTArN3h1MGdsY1pMczdRS0pqcWJ6?=
 =?utf-8?B?Zk81L2dSbUljN1dxS1ZOc0p1cHRUeU1tdHY4U2RiN0lYbUovL2pTK0wrS0xq?=
 =?utf-8?B?bnhBUXh3a0paYjU2cndBVUdOZVdlTC9GNGtKUzRBUy9hNDYwdVlUbFVYZkhm?=
 =?utf-8?B?RjZvbUd6dUJRRFVUeVd4ZWdsT3B6c21CNncvazNaRlUrNWM3SE94d3Q3eWZ5?=
 =?utf-8?B?M1F2RDl2SEpHRS93THk1VUtCVFlUQlpSMlU0UHlmOU5Ybi9HQnZQV2w0aGZ6?=
 =?utf-8?B?WGVrZktwUlpOVFhxOXA1cTlSYkJ4b1pEcUd3OFRrZVZzejZIcFI5TXZHeFRF?=
 =?utf-8?B?WWpSazRBQktmWnNySGxkM1hXNFUvc2x2WDJUWWc4TUpRczNSeFdQTDFDejVz?=
 =?utf-8?B?NTNBVGlLVjVyZG00aHJmQ1hpUzdoc1ZNTU1TbjZQUmFqOEY0blhUKzU2VHRV?=
 =?utf-8?Q?6FuWDWZCWKadiyNrA1FPffM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c09994ab-0d56-4e03-b3fb-08da9a84e34e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 21:21:16.7386 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6jaqgWOu2F7YYQyOruEIJqo6xm6nRloN1H/rT7RkHQVPnAuwfLefG53ZKxWoblkByuVyzoqWrs5UU+eoju3b98cAAcBFxE5wj15TfRuJKV4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5415
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 16/19] drm/i915/perf: Apply Wa_18013179988
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

On Fri, Sep 16, 2022 at 02:00:19PM -0700, Dixit, Ashutosh wrote:
>On Fri, 16 Sep 2022 13:25:17 -0700, Umesh Nerlige Ramappa wrote:
>>
>> On Fri, Sep 16, 2022 at 12:57:19PM -0700, Dixit, Ashutosh wrote:
>> > On Fri, 16 Sep 2022 11:56:04 -0700, Umesh Nerlige Ramappa wrote:
>> >>
>> >> On Thu, Sep 15, 2022 at 10:16:30PM -0700, Dixit, Ashutosh wrote:
>> >> > On Tue, 23 Aug 2022 13:41:52 -0700, Umesh Nerlige Ramappa wrote:
>> >> >>
>> >> >
>> >> > Hi Umesh,
>> >> >
>> >> >> OA reports in the OA buffer contain an OA timestamp field that helps
>> >> >> user calculate delta between 2 OA reports. The calculation relies on the
>> >> >> CS timestamp frequency to convert the timestamp value to nanoseconds.
>> >> >> The CS timestamp frequency is a function of the CTC_SHIFT value in
>> >> >> RPM_CONFIG0.
>> >> >>
>> >> >> In DG2, OA unit assumes that the CTC_SHIFT is 3, instead of using the
>> >> >> actual value from RPM_CONFIG0. At the user level, this results in an
>> >> >> error in calculating delta between 2 OA reports since the OA timestamp
>> >> >> is not shifted in the same manner as CS timestamp.
>> >> >>
>> >> >> To resolve this, return actual OA timestamp frequency to the user in
>> >> >> i915_getparam_ioctl.
>> >> >
>> >> > Rather than exposing actual OA timestamp frequency to userspace (with the
>> >> > corresponding uapi change, specially if it's only DG2 and not all future
>> >> > products) questions about a couple of other options:
>> >> >
>> >> > Option 1. Can we set CTC_SHIFT in RPM_CONFIG0 to 3, so change GT freq to be the
>> >> >          same as OA freq :-)
>> >> >
>> >> >   The HSD seems to mention this:
>> >> >   Is setting CTC SHIFT to 0b11 on driver init an acceptable W/A?
>> >> >   Note: Changing the shift setting on live driver may break apps that are
>> >> >   currently running (including desktop manager).
>> >> >
>> >> > Option 2. Is it possible to correct the timestamps in OA report headers to
>> >> >          compensate for the difference between OA and GT frequencies (say when
>> >> >          copying OA data to userspace)?
>> >> >
>> >> >	  Though not sure if this is preferable to having userspace do this.
>> >>
>> >> It does affect other platforms too. There's no guarantee on what the
>> >> CTC_SHIFT value would be for different platforms, so user would have to at
>> >> least query that somehow (maybe from i915). It's simpler for user to use
>> >> the exported OA frequency since it is also backwards compatible.
>> >
>> > Is Option 2 above feasible since it would stop propagating the change to
>> > various UMD's?
>>
>> Hmm, there is logic today that squashes context ids when doing oa buffer
>> filtering, but it does that on selective reports (i.e. if a gem_context is
>> passed).
>>
>> For this issue: for a 16MB OA buffer with 256 byte reports, that would be
>> an additional write of 262144 in the kmd (to smem). For 20us sampled OA
>> reports, it would be approx. 195 KB/s. Shouldn't be too much. Only 2
>> concerns:
>>
>> - the mmapped use case may break, but I don't see that being upstreamed.
>> We may have divergent solutions for upstream and internal.
>> - blocking/polling tests in IGT will be sensitive to this change on some
>> platforms and may need to be bolstered.
>
>If this correction/compensation in the kernel works out, even for internal
>too we could do the following:
>
>* For non-mmaped case, do the correction in the kernel and expose OA freq
>  == GT freq (in the getparam ioctl)
>* For mmaped case expose the actual OA freq (!= GT freq)
>
>This will restrict the divergence only to the mmaped case (which we will
>probably not be able to upstream).
>
>>
>> I will give it a shot and get back,

We cannot tweak this in the OA report header since that will be out of 
sync with the counters in the report. The other issue here is that the 
bug also applies to MI_REPORT_PERF_COUNT, and KMD cannot do anything to 
fix that. I would think this interface is the clean way to do this.

Thanks,
Umesh

>>
>> Thanks,
>> Umesh
>>
>> >
>> >> https://patchwork.freedesktop.org/patch/498917/?series=107633&rev=3 is
>> >> consumed by GPUvis. That reminds me, I should include the UMD links for the
>> >> patches with uapi changes.
>> >
>> > I was thinking more about UMD's which analayze OA data and who till now are
>> > probably assuming OA freq == GT freq and will now have to drop that
>> > assumption. So not sure how widespread would be these changes in
>> > the (multiple different?) UMD(s).
>> >
>> > Thanks.
>> > --
>> > Ashutosh
