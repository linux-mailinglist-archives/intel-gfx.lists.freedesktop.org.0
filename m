Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A78B710EE3
	for <lists+intel-gfx@lfdr.de>; Thu, 25 May 2023 16:59:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2CA410E16E;
	Thu, 25 May 2023 14:59:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8373010E16E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 May 2023 14:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685026775; x=1716562775;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=/9Dibd8g9RZulnlR0m9qpoqR24Mg4BiSJm3EGk7aiqk=;
 b=QFxzo9cXeQBhrMBjIanUN+/ZhG0KjZFZXZdACSuSQQLkr4Vhdc5ucEGW
 KdfzWGhbw1Ti1WRBGxpk70IWk1qmlSXGj5A+PbN7gkyY+ZYKXYSBXZcwK
 ZhdTSPDG/FHfU5lZgYs8VYIdYIUxlx7iRf1oiHxMwuENRR5B+zOwfxyOS
 hTz8xgzybUVkEThy+G4fGEr/27Z0ILJ0RBb5L0BMivdWDuJVrjpbgL35Q
 PLEDcjgfqfg9B4pdubC1JjeIYLrakUazxLHxES1MIM6q03aiE6qCOyJSj
 i+FUHGZZQ0JOjavn6bSortwTd34RVWaXqFdSNpFchFXMuiEfpjq/gIU8w A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="440264413"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="440264413"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 07:59:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="704828167"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="704828167"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 25 May 2023 07:58:58 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 25 May 2023 07:58:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 25 May 2023 07:58:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 25 May 2023 07:58:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KA2/avzXPPtAtsCD7qGsqdN3cxmym/Z5UhcIosQv1c5/MvfewWikhZvoeRIwx/NnurVcnUn9W4i39N/FM5kVp55sRbJlGotR5+ko1ntesYgrOUHe4HSwVReI2GwsE/NwVUUzTMu7rnubSjWhsgq5Wq5ORr5WKN82TPbHz9v+eeoRDjTpn1Ev3umArboWQ98VlWgdw2pxlC6umQ0EhtnTty4vSWsaiXGTqJYJonjCSyvtH70z6xLAVTx34EDFDSK9c32xkPEYEednivbY8bwTMvuLUqef3VIUpp26pWoPnEQBCkqHwK4o87wCk8R6MbYwGMUMYh5haSkftrocIKSRlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9qFD20Wi78+NB1gLWjykbopzs2uT/BZGhtPvCX86I7k=;
 b=hS9qLgGsy3a9t+9RZyvZxJRLPVtNK7YgvWF8SeyrgHus3w/Zzv+Lx/5uYkOJmeBSTcXnUhM20AoAdX/oqwR1YXa9ST3yjGw4JvaHmOwQp0LTORI7GzvSx5vD9Z0ydiqNB25cXmQ0GJbHeGr5JGkoCsCM68lxDO8d/+s7imTCvYBAqapL329v0uUKsuF5SyYFb8LcUD5wl3yptw+6wOHUrEMiGbt0b965e1pUYj89/sLm0O0hrNjZ4Z8p4uyk0J78yt2pXJM0H2aD0OTk1GRe4CLEz0jeoHCXgdy1Q0UxJP8kyNO3/VXdxNPp5qzqelofSyc+JDeBfFJasSVQlYm10w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA1PR11MB8543.namprd11.prod.outlook.com (2603:10b6:806:3ac::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.17; Thu, 25 May
 2023 14:58:55 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68%4]) with mapi id 15.20.6433.015; Thu, 25 May 2023
 14:58:55 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CO1PR11MB49622FFEE558583ACB8CD5BFF6469@CO1PR11MB4962.namprd11.prod.outlook.com>
References: <20230524230342.411273-1-vinod.govindapillai@intel.com>
 <20230524230342.411273-8-vinod.govindapillai@intel.com>
 <168502360445.3319.5262709654872376821@gjsousa-mobl2>
 <CO1PR11MB49622FFEE558583ACB8CD5BFF6469@CO1PR11MB4962.namprd11.prod.outlook.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 25 May 2023 11:58:50 -0300
Message-ID: <168502673063.3319.14912816760874614033@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR13CA0082.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::27) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA1PR11MB8543:EE_
X-MS-Office365-Filtering-Correlation-Id: a840bfdf-6307-49a9-41de-08db5d308fc3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1dJBBePNzet0N9PvsLNJhFFKCsHSvyGd4nVEERLYuZDE7mpQ87LWeP28h3+OukPvxu45pUax7j8xApHPgAk2d4kNsEtO/PXVPpLNFWahFU6wu8WhmTHXfNxVwTFTs0cO0ciPqAlU+kjshk+dEtsYeilS0XCrMq4lOZE72IiqKWJUMe0F30qPVBTFFfBCMV1+YF71So+aH3VktQzWpfeDxlf+1YHgzdfYbbLKDzGdLALwUztQHq0WmxBchA44rxVYDe+xY32svYISPnu5YqdvM+VpZp0mui99uHpUd55NqaxwkHY5mxJ7hQRIIq03wwjthSXV+4UVhsZCM/1EpG+oHF8ZGIRRLf/CSq3qHXCDbATvbCK3MxV5lOSkZ685A9eIgVtwvBfU0Qvl4cjaSAUuj10Cxd0Ha6H2kXtQCl4ovFGcXAUPTzWdZCeVczRuSMJt/9jARJ9Gtrl+z7CGWdd80AL6asGuoZ2zaX1WGik8VvyTcVXWtp+lYlmzrL2Jwdn6068piSkpfua1V2gFygGuNVahlZ5Cy/LcnVKoQht5m0y3bvmwRnOgSUCoU3nDKjy8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(136003)(366004)(396003)(346002)(39860400002)(451199021)(83380400001)(41300700001)(6486002)(316002)(6666004)(33716001)(86362001)(186003)(26005)(4744005)(2906002)(6506007)(9686003)(6512007)(107886003)(44832011)(8676002)(8936002)(5660300002)(82960400001)(478600001)(38100700002)(54906003)(66476007)(66556008)(4326008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTRXVk10dG1hYTRDUElPVkNOSUZIT3FSck1YcXBKMFhuTCtjM0ZHdEN6SEFu?=
 =?utf-8?B?NjlPei9FV056UWpqWUxEVlU4R1BFUWFrQ2g2dnh2WDVicWVyR3p6Wm9ESFJH?=
 =?utf-8?B?dThlS01OMHBmZzFXNWcvNDJhSENnRFcxM2wzZjJJM3hiRjZhQlBYcjdILytX?=
 =?utf-8?B?aThmelEwc1I2b1prRzBxMXZ1QkdaRm5RUjlPQXltN2FscmdZcENXVTZveGRT?=
 =?utf-8?B?cCtLS1AzRVgza25PSDM3bzZMRDdDZ2ZpNitaYXh2ZW1LYkp5dVdZRTFSWW9K?=
 =?utf-8?B?aWtyTlE1V2dqNEx2WWFrMDl5emd1Si9qODBVTjVXT1NGN0NnV2Y3UXF5ME5L?=
 =?utf-8?B?YTAxTEU5TUxVMHRFTDVQWHVwdWZiMHFDSjBHVURRMFVzdjFVT2U4NG43aGVY?=
 =?utf-8?B?cXBPMGFFRWpBNVppTTFQUW1BK2Z3N3lDSzNaSXUrek5BV3dFNmJXSkp6a2ZW?=
 =?utf-8?B?UFVqbHo0aHA3eUJVTDRHY3d4Sk5tU245N2tDNWZIVy9LSklZUmx4Um5BZml2?=
 =?utf-8?B?bzgrZ3MyWmF0MTJwa1VEaHZHUEdVcmNveXBmQ0ZBK0M3bVhmVXNhZ09SZWZR?=
 =?utf-8?B?NGl4bDFhRzZkcWxSelM3S2F0S1o2WUZSZnBGZkhxK21QSUprSXQ1OFBRQnBh?=
 =?utf-8?B?NW9sZWxEQUJjY0pIQ1RzaHZlZzVhMWJkWStDbWQrNEdsTGVobXN0aGFyZlNx?=
 =?utf-8?B?TEEwSm03aGdrV2N0THVmU2JXTHFibFFXQjF5YU9jaWxEOEt3aGRFK2Y2a1p1?=
 =?utf-8?B?eG9GR3BBV0hiR2FodERkNjg3L2FxSTdzc0d0UUdmU0tac1dwY2ppclhKN0VB?=
 =?utf-8?B?RUdCbHpMc0F5S2Y4NHJocmZsVkwwMzdoN0JpNXBOQXpaK3ZxMEFrb1ExNEFz?=
 =?utf-8?B?RWV5aFVyNFJLWk9tNlV3eUpDZUFubHJ4WTV5OTZxbzhHREZ5UTFNaVZpNFpy?=
 =?utf-8?B?bnZ2K25rK1BpTm1HOS9JbUE3TFFWY0o2Q3Z4U2tyVE9VUXdGQW9NVVVScitS?=
 =?utf-8?B?dVBLTlN2a0cwLzNlZk1CSG5NNFQ5Y3lqczZVbzMxN3JNL0FDSGNycC9JL2hh?=
 =?utf-8?B?c1ZPODhXd0dKdS9CbWxFb0daRnFxUlROTEpXWWVXZEdNZC9FeHZ4NktxQ2lH?=
 =?utf-8?B?ZVFwS0JEdUtYb2NLckllM25OTlhSMUQwWElRRjNUdi9zVHJLQ3RoNXZXS3Y5?=
 =?utf-8?B?eU1HWGFFLytwREZPcWtFOHRqUzc1ZkFMYi80c0dGeUdqTlR0dTJJTzVLLzNY?=
 =?utf-8?B?SC82TC9YZzhiUUNlK2dseXhkejJQc1B1ZHNNcWRKQVQxTVJXQUtXcC8rOGZJ?=
 =?utf-8?B?ZUdMNEt3M0NGeDBRekk4Lzh3SFFrN1VJaWVsT01nSGtFQ0tmZ2Izb2c1QkMy?=
 =?utf-8?B?cHRrV2NtU3l4Sks3SDRSYTN6ZzZiaXJqRjB2clVUcWU3cnBwRlNkczd2cjF3?=
 =?utf-8?B?ZW5IeE4vWCt0OVE0V280bEZvSERXUEhiWGJwU29DODBFZm9uNUY3Y2pack53?=
 =?utf-8?B?N0o4ZEkwUEgyaFRKRmxqUGhoTnk0Zm5ST0hiK1V5RkV5dVBEaC85a1FNRTcy?=
 =?utf-8?B?R0E0b3FYUDhGd0pTdHJLL0NvVHJhb21uV29QZVZtekk1ZkdmM0dRSlc4cmJj?=
 =?utf-8?B?S0N4VXlPS1pBQ2JOS21WRzhtWjFFNXlYY2dUUFpoRnJsZWsrT1czbGpRaW5S?=
 =?utf-8?B?QlIveTdMTDliMTZ1YUp1YXlxcjlscXFaRkcxa3FweitndERnT1lMRGRqc3ha?=
 =?utf-8?B?b0JKVUxQUTdzNXZqMUN6Vm4zR2NDemwzOHEzdDRkTnNOYkxHNDFObnpqT0xC?=
 =?utf-8?B?ckplRUIzS0x6dW1sMDN5djJxNGNIN3BBd2ZjVEFGUkFKTFhqM3krK01pWGNJ?=
 =?utf-8?B?U0FuUlFtR3BwUzE3L2N1VUpyOEgwaHh1YmdqR2NXakdLSzFiaFdtQ3phdWIz?=
 =?utf-8?B?SXl6UHE1NENLTDRYUlpJdDg4TkY1Q2hsTHg2Zmk5eFBKQnFMNUFWclo5anZC?=
 =?utf-8?B?Mm5FaDdUQVdoRGlVY1JxSUh2SytQb2krdTNOK1dGMXhqdSszYW1yUTlaRFNw?=
 =?utf-8?B?cVFSS3FyZWt2UElSanQ4akJyZndvMEN1ZDRrTmpFNVZWSHRTUjRtZGVITTNE?=
 =?utf-8?B?ZHp4Tm9FVlhkaDVyMzFWVDF5RVBvUTdUUVVWeU82dDc5T2VXOGNGRHJvcDVK?=
 =?utf-8?B?TUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a840bfdf-6307-49a9-41de-08db5d308fc3
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2023 14:58:55.6477 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9B5+fvGz6XxHBXsLgblReE/NPDx8vkfKr5Y95oKaNxfgvt1eAwvRMYkVwCNZf1iXxIefvfL2ymv04IhNphQGbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8543
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 7/7] drm/i915/mtl: Add support for PM
 DEMAND
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Govindapillai, Vinod (2023-05-25 11:31:05-03:00)
>   Hi
>
> (...)
>
>   Can only the phys change without impacting other parameters here?

Not sure to be honest, but, if so, I think we would covering cases like
that with the proposed change. IMO, if we depend on PHYs being
active/non-active, we should track that to in pmdemand_needs_update() be
safe.

One scenario I could think of is an update to switch connectors while
keeping current pipe configuration.

--
Gustavo Sousa
