Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE3B7CE76C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 21:11:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6847310E43F;
	Wed, 18 Oct 2023 19:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 876C810E43F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 19:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697656314; x=1729192314;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BwswuL8/U2eDeYT0IWIELtFNF35Bd86+VVd1+hiLvKw=;
 b=DBJYWtoHw5IUg7YQ3gIbCS+qbwjsYnnbsLSq0b/fS/Y3YqA170Zvdw9U
 1aqlcxskKvNBJyB6LL1N4AqlvOHW8WF903iNtLoQQ4cp/GjctsBz6eQ1h
 rIFgzACYRlvdzoYEYhwrdY2xmy9M6wc2jZcYP0V4q8GzuUm6fFUyzSLb8
 oNOKCCeUWq/MIRSE2Qj5zCg3/fFsAUUGZxLxQ3wISwI5dizx6HdKviJZV
 /VN7RqCcVmjHESLeaP7HmIWkEOIlFjFHVlpP93/hI0IK+tkir4lpJgGnY
 Q8glZLz00UklgyXMpgr6N3lhI/XaOUgka3ZjTPw+xljjxgRp2n8ZsqE13 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="388951480"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="388951480"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 12:11:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="900451719"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="900451719"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2023 12:09:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 12:11:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 18 Oct 2023 12:11:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 18 Oct 2023 12:11:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LZ06vVpVcaQwYy+URy9WCA2vlneUhPVm+NqkFwn4dWwuueS9iXLV3hyLcZjUcmikOu3AbhRovb0lBI2xFCughYess2GVZRwttlw1ZGnXbCLwvatyTfqadzXMK9291qg1oBYUgC+/lliI3czQyXqU4u2hrYmw5c/TIol8EwiFGlWA9Eay7377mNU6QX46VAL6OPEH3g/TOPFKcC1xvd9U7MWdq/J8mSZR7d2NWgaq5/0GiP8590QCQeB+GavcFf+AMxahc7iYFXQjg4z4VoasnIGykmK0Ten6gFjufSS3By3uE62WJL6WgCL16B3/r3PF5b89NTY9rmQZamb9i2uthQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t0vE/aYczCHkwsqHt9jbO0reDC3FUUn1XqE/H8HcjOo=;
 b=Uu1Hco+fi5TT1VPfUsIP2eS2gAC/AByv7mGNd2331SV8v9CR9wSkmeYPR43qG2DpytfsPxaY7twSl2aEIwJEca4m60iZl/urYqr2tXJgIzCGaIqgUok7bqQgL/mKLKUoIpWl9P0/fJOZLfbQ3GS/4IInqvcmJcppZYRgsyYxPimsw0GShJhc4tUdeIkAvW60X/Uqod8Fh6bcWca/di4khRaJfP8JJcVTq4+N7PNyLAsBDI20R9UsUak55MDv0FELVGb3rAxjxzKeOJh47fuRFYbLlaXoTluESmSpqTRqx1coGrX8sBJlamxcxYNL3i0KtV+ueDEaMQEXEnKN0JbCZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by CY5PR11MB6439.namprd11.prod.outlook.com (2603:10b6:930:34::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Wed, 18 Oct
 2023 19:10:55 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::5dc4:882d:948f:55d4]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::5dc4:882d:948f:55d4%6]) with mapi id 15.20.6886.034; Wed, 18 Oct 2023
 19:10:55 +0000
Message-ID: <c5a4f07e-1383-446c-8eb5-e473733e3b7a@intel.com>
Date: Wed, 18 Oct 2023 12:10:52 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
To: <linux-firmware@kernel.org>
References: <20231018190701.2388817-1-John.C.Harrison@Intel.com>
In-Reply-To: <20231018190701.2388817-1-John.C.Harrison@Intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0359.namprd04.prod.outlook.com
 (2603:10b6:303:8a::34) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|CY5PR11MB6439:EE_
X-MS-Office365-Filtering-Correlation-Id: 7cac6a99-cb7c-466d-3277-08dbd00df3f7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9u8kZNF4h6/NZuHRIAnJWdeTQy72RYW+vQJg2/JrnUALuHnOKzm1Cn93wsnblXWlxzf4JHlxPgkH5rMt9IpUmByYeOT8WSVl3bm2I4zOyEj8pJSEP+393znFNdEQ7UVDSR1hML06ckna0/gxsQWUYz2m0fm+ewHqyRTLLwXWNLElUKk2N/bttcXV7jaD69K63aEZKiDoM2WyXUp7Hg8IQIE8cD3v4UJFkCjr60PcJMNXhsEKyeRjQ+SpjYkozLT1F4K9eqRYTXOcPONtj+5kk58BB3SkkMcjkiJn7auK0vUmreVe/49jE31G4z0rbckW8LXhvpfME3p1KvSHjkz+mZcFcqMGaXEw94v16AQ0VYorpi24tQLk7hBBRc4XvCgHiQjuhAvUDhgn0YKN4ZDOIWRIxrDdwIj7bl7SHwA58dBpIZXNuyodd5HgnNx9nKDLcpekKATZ7fIvNbvtzFdJ5JMY0vJ5dmGxl4CKjk/D6grLAXKO1VsIO1wVZFmBGXG0oV8aQS+7Iur/W27kH7CtqPtIuuIabyH7blvud+fjmTa81GJ61/T83qvIHf/hjBpPMw2gR0qqboXeN7UBPSbe4D3BvzFfKpNMB0cH5YiyUU6wBk1ZHrZMegZdJBataeUDFgiaEOFcHtg8Ycz/fnkd4g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(136003)(376002)(396003)(39860400002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(478600001)(6486002)(66476007)(66556008)(6916009)(66946007)(36756003)(82960400001)(31696002)(26005)(2616005)(86362001)(83380400001)(6506007)(38100700002)(31686004)(53546011)(2906002)(6512007)(316002)(4001150100001)(41300700001)(6666004)(4326008)(5660300002)(8676002)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWNHOVkvRmp5L044eFcvTmo2YnlGQ0dta3pUMWxhQml6aFRhZFRkWFJOaXVT?=
 =?utf-8?B?RTM4cmkrZlI3M0ppZlNmUjZhWXNUSFQrenJTV3Mvc2xoTGZZYy84Z2ltaHdB?=
 =?utf-8?B?VU5vcEpEUmNndk5IU2VFRndjZHZTMGRvSXl5aVpTSW83OGg1RTV1a1Q3cmd5?=
 =?utf-8?B?aHBvWHIzUUxDK3dYWVVBZTJHc0RkemdjVXBZOUxNQnc1UUlMdWVVKzJ3d1hV?=
 =?utf-8?B?QWpDRXdvMzBCUTFteEZud2hkd3U0THFMZkZyZHp0aklna3RYMGl1aEpYQUtu?=
 =?utf-8?B?blg3ZDJYNVJDbVJoN2xXRDZvU3Q2OXpDZFpPRTZNMUpJLytiTnBpK0VyR0xS?=
 =?utf-8?B?SFNaQ093UnExcHRzaGNhVmhxaFFVM3VwaEVMVHg2WENJYjNjL3RhTlo2aGY1?=
 =?utf-8?B?c0JCTVdwZ1Ezd3liS2VLcXMvaTBvZUJKRFlmVWN5NzBjV3N5THJ5ZC9Yb1BU?=
 =?utf-8?B?dllXVFlvUnBTZkFjWno4UmtNTmF0TVF4VEMzM0w5cHI0TVFwNENWVk9TcjJ3?=
 =?utf-8?B?NHNxRDhtV1dvU0ZPZUlCNGxTZCtpejJmRjhvc0MyWEtsb2U5SjEwT3R1a2Nv?=
 =?utf-8?B?ZTZ0UlRWaXoyMGlqYjU0eGtZaGNraGRHTmtNSE5xUWh5Wjc3djZZeGx0d2pE?=
 =?utf-8?B?cmoxc0VOYkpzc1dyTHNyZ3cvLzNQUXo0RStqd2t6eUlEbXltcFc1Z1FRTUk0?=
 =?utf-8?B?cytQdWJEWjV2N2dadjlaMHhKVWhjQ3RmZTZCOEd1dmlzdldOenF1SnlMaDBr?=
 =?utf-8?B?WkwzZkpidUtKR0NXVGMyQldYMmVvS2ZyQ3pyb0E0S3NEWTlOK0Fmb2ZjUGJr?=
 =?utf-8?B?VXBBRVkvcXVVZ1NhdDg3OStsMmo4QUJucWtUSmhxVEFlUDBZQ3VjclJxNTJh?=
 =?utf-8?B?SzFPVkJGVlNmdVRpVVIrWmM2cWt6MjJzTldKUU5KLzJ3emNkc0lyUWpTRHVl?=
 =?utf-8?B?UEtrTmtyRzZ5Q04wUVBSZ2hkZ2x2cFR5eS9QRWQ0cnpVdGZYaUxqUWN0TWJy?=
 =?utf-8?B?UG5SWVpwRkFqUVJoL0RXWXhSM1hXNnZrMTc1SnhCNHRhMHlWTGgvYWw1cVQy?=
 =?utf-8?B?NlJod1I3SEt1azUwTEc0NDVDeTB6TFpia2JxRm1qL2J1RmEvOWxEL01ldE1m?=
 =?utf-8?B?MlNKM3hBNVY0SDA0OU1FV1Rya0EvSlFNYy9BNjRCOGJ6cTNyU0RRYWJTNkls?=
 =?utf-8?B?VFg3bXJYQlQwRTU4NDZvM3FVd0tmOGRLY3JDbWhTbmVwTFpGQng5bEhJV0Fv?=
 =?utf-8?B?UTBYVzhYbFpHSnlCOXVoVkVtVHlaMXBuOXJzUUV2R05UWVlyM0NNZVB4VE5L?=
 =?utf-8?B?dmFoUVNkOXMyTGRVMDIzRVF0bWFDdVl1eXFRbFdqMjlZb2Z2b0kxYTg0Q0dn?=
 =?utf-8?B?bXpKQUdCRzRuOXZOT2I3VDIvdE1CZERXLytodmpRampxSVQzNE1kaWcyNk13?=
 =?utf-8?B?TEZhYldLUjlDajAxem5yWjNmUmpKaUJ5WmFhZlpKM0IzZmkrQUJ2a05BY0Ev?=
 =?utf-8?B?dnowOS9zZWg1dWdCV0xhWnZ4bUpKT0ZucW4zQmdVZlc1eWo3MEVrN0dUTFVT?=
 =?utf-8?B?di9PaW94b2F0UVYzY1IrQ3ZzUGwxRFV5eFN6a3M1Q0d1RWtySHBCcnBDRVVL?=
 =?utf-8?B?NmpMR2hsbngrVFNTODBPelg3aTdjalNrcmduTjczMXF3RFJUSTZhSWx6dXoz?=
 =?utf-8?B?b3ZiT1VsZzJlR2dLbG9XV1NicFRyS3pVSW1HQTlHdWJjY0dHYVlkaUFMc3lJ?=
 =?utf-8?B?ZFQ5U2RadWJYUm16Ty95eEtRc09GK0w4TUpadnRSZFlFYThkMzZEY1NYdjdW?=
 =?utf-8?B?Wit3WVhHc0tCWWhIaXpWK2dCejYxdC9nTEZXR3c0SVMyRFF5bFQyVGdyeG96?=
 =?utf-8?B?UFF1UjlzVWdWcS9Oa3VpTDdhWk1udGltZFlMUTdyUWIzemNVVlJ4Tmt6bnht?=
 =?utf-8?B?alIwUmsrSnVNOG5QN2ZIelJ6ZkJ5dHRjbjZvV3RIcVRVbVpvWHpVYlEyNUZq?=
 =?utf-8?B?VGZUTXZKM0UzWDhJN1RFVVlYdVpCdE9yMWMzY2ptbmx2R2N1SFA3ZTlON3ox?=
 =?utf-8?B?b1NvK3ZJcldrdGNMMzJJREdPOW9QNk5lSGZYeVlCdHRubGxJdGRxanQ4dDIz?=
 =?utf-8?B?WTI1NXdXc2taZmYreEE2M2FWMlZUZ3kyNHl1TFoxd2dITGdGVjNIS0QzdlFH?=
 =?utf-8?B?Vnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cac6a99-cb7c-466d-3277-08dbd00df3f7
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2023 19:10:55.0367 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gk3n3evyPe54gdk2TAEXXg05+Z4FMTMmhGbVmm0O5BwFs0FCWXA1XLoP5Ge6w4aHN0unFCOoGZg7ml9hZn5zlOqhe5vIcKC82ZxMQ5B/bKA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6439
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [CI] PR for new GuC v70.13.1
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
Cc: jwboyer@kernel.org, intel-gfx@lists.freedesktop.org, kyle@kernel.org,
 ben@decadent.org.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Apologies, I sent this with the wrong subject. Please ignore. Will 
resend with the correct subject.

John.


On 10/18/2023 12:07, John.C.Harrison@Intel.com wrote:
> The following changes since commit 7727f7e3b3358713c7c91c64a835e80c331a6b8b:
>
>    Merge branch 'patch-1696561325' into 'main' (2023-10-06 03:04:57 +0000)
>
> are available in the Git repository at:
>
>    git://anongit.freedesktop.org/drm/drm-firmware guc_70.13.1
>
> for you to fetch changes up to 44a9510c94ac0334931b6c89dd240ffe5bf1e5fa:
>
>    i915: Add GuC v70.13.1 for DG2, TGL, ADL-P and MTL (2023-10-13 11:34:26 -0700)
>
> ----------------------------------------------------------------
> John Harrison (1):
>        i915: Add GuC v70.13.1 for DG2, TGL, ADL-P and MTL
>
>   WHENCE               |   8 ++++----
>   i915/adlp_guc_70.bin | Bin 297984 -> 342848 bytes
>   i915/dg2_guc_70.bin  | Bin 385856 -> 443200 bytes
>   i915/mtl_guc_70.bin  | Bin 308032 -> 365376 bytes
>   i915/tgl_guc_70.bin  | Bin 285888 -> 330304 bytes
>   5 files changed, 4 insertions(+), 4 deletions(-)

