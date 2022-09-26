Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EA25EAF4D
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 20:11:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8475F10E080;
	Mon, 26 Sep 2022 18:11:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21BB810E080
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 18:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664215880; x=1695751880;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1P9hyc4XZtntVZEu+aQ9O9g4maaO9HkOJ0sWmLD0aks=;
 b=A3BsJUjBbo/l2fx3h6G15sMy+1RKNFDVqfeRiQlk2i850DKMGkvuCiQT
 GWav7MPmHHL3t92xjVLTJ2GdEcuDDbnffPQQtZgscvbCve5LwTdcRhjK4
 jiipdjWul9DwrjJchNnoED7sr8ph0eL33lEZUhorzvC8EuQSGFrH9JIhL
 p/juJ3Fv6TlJnG5NrFRfhjNJMnCWplVFaTG4AEavzQ51uj83LtapML+LH
 dA4hfdOufYpWN0iEWjGvLRJrBBjQJiqAGnERdPlvvWsejlEQTeuEnGh6E
 g5sp9YRw/BLi/4olozScOuO+sB2J6nooqiCzVP0QrfRtZr3aFHhDRxQEN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="299823348"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="299823348"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 11:11:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="654375258"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="654375258"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 26 Sep 2022 11:11:15 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 11:11:14 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 11:11:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 26 Sep 2022 11:11:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 26 Sep 2022 11:11:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vb8xwa4Yuj1Apl8Agg3Pt2LoFpXqUZLuH4cQjY1BVQEVHeywmu/OYod2rYQcZERh3hp3XWzKe/O7jXsNxOsFGy0PFYHnp5R/KafnZi9Cu7Z7ST02OMx9wwFXgNjzf6Me0xAh22sM87gS2LIUt/PiDwQnWuU0G9fJ0p2C5HfPeLYlDJnYuymtoTGsUHsr6iRYLIwxr3+BYTxdqgt2UQpWkS00EFSsseZ/eFudQifgMHbmTl/VqgF2S7t4kDsKcvT1X/5fqnO5JMmCo8O8DPpvGvbcrcMwGxpr1znfKq2xTDxo9FHJqoRBjQGKVQzD6zXw4p4FmOlOhYO3+rvOcvLv+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1P9hyc4XZtntVZEu+aQ9O9g4maaO9HkOJ0sWmLD0aks=;
 b=loHxWSiNfWBD+ACXboyz97hFWc/UrGsgGyhg9/D2kMPH16mOuPVKCs9zv+vgRzOBmJnExGi+HT89S4DrjLOID3iktmS07o3K5KhkV5THldQQHTPtsPZAKPkLPpUWyJ28jUuobmLJsfghSPRUYziYShXWQl6FC9UYEGBCkB5HLAt64Y1dx5NNCSRgnQC5HaQjydJ4amwhZG3UaLVE6278TBL4xzhFrelBDlUv0HW0BA29wGgWsN1s5kpt+3krudTwOZ9LBMwCFSCiROOikKcXytcfiWOXGVPDhNRgCTyVwWUSwLia3aLFTYQ1+7ByhqPMmiqt5XAnyJ3B1jbHEFtQDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SA2PR11MB5146.namprd11.prod.outlook.com (2603:10b6:806:116::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 18:11:12 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e918:ab50:e851:612d]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e918:ab50:e851:612d%7]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 18:11:12 +0000
Date: Mon, 26 Sep 2022 11:11:10 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YzHrPpHFV2z5WTZs@unerlige-ril>
References: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>
 <20220923201154.283784-3-umesh.nerlige.ramappa@intel.com>
 <87mtap8ldv.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87mtap8ldv.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR07CA0072.namprd07.prod.outlook.com
 (2603:10b6:a03:60::49) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SA2PR11MB5146:EE_
X-MS-Office365-Filtering-Correlation-Id: 565b47db-39a8-4e08-6bb8-08da9fea7ecf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7BqLYttU0aD90cjSzCnJsu8q8xAh7/XwZ8jdGhSWfhkWgqJDxqhpSmN5d553RVNcFeTf3z5L+G7/+FibIcefN0qDoni8zxvWZvy21r/mR3TiYUrmDg5zUi6+zndcpMrcP8cVIwbIJaoLJq+F3tFIMp+0zrrzl4Rr1RpmMei1K6rdlXbLCUZoqkyrx/TlzJoz2VmncilRh3qnsOJ5nVAMhQyWzRAHiMA0LhMrduUoexeX6ek+Q5Jknf2TeF+UbHgIAkGwQwLS/5l6PWCb/LefdKEKILlUTKQjliYk8gGgGMZJJNy/azNzMyYG+vr3KcSQQ096mXq2kUt2AOaf5CVvG1+dR5HpqajJ9/j9awy2RgOthOfQFb94lYHHIpMB4lF2KtRDSb9VWSLy3Ao+cbgpGiiEEkpKQLhzxDqnwV3iYYegX00oo6HSvJYtgqim0wZ/iZL9sdsD0wgRz03b2HY6VkKZ5yTNCEMyDblhNjZxfnSWszC+W7jcFO/qo9PIsLmJneKBO67S+mqJi1pxQHpE5STKltuRCmP5jADlzYQFViKdcp/x8piZkobLCF/uV7IhsrqY21WKVfl8eyaRf9DcsZr500LFc2D3iScIF3Vaiy4FQK8JGfoROVenY4p6R4MQh9BO8LQC6cAs3DQot/1H6ptteNMT8OkGtyXrabmXq0dN/g85p6E1tJDlSMAEpt8/Aq9lclxKmn5lBJ1aT6s3eA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(366004)(376002)(346002)(39860400002)(396003)(451199015)(8936002)(6862004)(86362001)(4744005)(5660300002)(2906002)(83380400001)(41300700001)(6636002)(9686003)(6512007)(186003)(26005)(478600001)(6486002)(66946007)(4326008)(82960400001)(66556008)(66476007)(8676002)(316002)(38100700002)(54906003)(6506007)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QnlRWHVMZFBHSmpMUHp2amZUVnlLSzg1a2I5RmJhV1hoNS9RK2oyZit2Z2Vq?=
 =?utf-8?B?UmFOa1ZKRm1uU1FVM205ZVYrTXkyNmlFRWFsZ0lMMnp3dmgzNXZkRkphcWo0?=
 =?utf-8?B?TFZqeXlDaThZMy9sWmY1RFB3SWxsajNKbVNKUVU4dkR5MTU3aFM5dXh4a0Yx?=
 =?utf-8?B?TThiQUMwOWlycW00aFlhUm9SbjV5WURkckVvRUZhaGdKbXA4WGZpYnZxcHE5?=
 =?utf-8?B?SUFJc1JUcERlREd5SEdBL3pNYUI2NkVKak9rWG4vU1NueXIrdzNUZ0xoUHFq?=
 =?utf-8?B?cHpDbVM2NGJ1WElML3F4K0pqZkpFVXplMHRiY1NmTk0yZnBWN0x5RlFWVjdN?=
 =?utf-8?B?UXJTaTd1ZUxHZG9ySXpWR3J6UHpWMk9nR295LzFWZi9xN3o3dDA0Z3pBQlRl?=
 =?utf-8?B?b3JNTkZlVzNvVmxZVDUydnNIRmtoOG5JbmxieHFUL1Mxd0NVRVBUTkhRQmNh?=
 =?utf-8?B?WDM1cFQvZEZzQ0lzM0I3NVQyU1hNdUxTYktDQUgxWjFPb3QrYmJNaGw3SUtI?=
 =?utf-8?B?VE91aG9LdkVTbHFpVnM2bWs5RGdBMENtTkJza3JpTmcrTmJiUnN0VWNsdVJz?=
 =?utf-8?B?YTB2RENiVWxmNzhHVTE2aHN1QXJ1UUQ3NGNCcUZNZTYxQlFoaWNmMG1CRnp4?=
 =?utf-8?B?QllYMm53Yk5OR1BnWWdPd2FyYVJXTXJyQlRPRnFOM2YraVZ6cHNMdm9hdkNP?=
 =?utf-8?B?STJveHdQV1QwK0xTY3o1c3Mza3prTlJrTVJqUUVJSVdOZGEyNzZlOEJvVlVn?=
 =?utf-8?B?aHFlWjd3TFM3Wjk3ZXEwNkdYbmNnY1dKb3ZCdnIzeFN0Q293ME93TDBNN05U?=
 =?utf-8?B?SjFEdkc3MlIzQWR4ZFZTbmVOamhJTThweklxb3BJcDl0YWtrUlY1Ry8rbnow?=
 =?utf-8?B?LzZFRkVRUmx4dlJDSnhpcElzRHdUUHVPNDVSWDExVVMxUFBwdkN1SEJWVTJy?=
 =?utf-8?B?Q0ttKzNNVkNENFZmUEc4NWZBSkxwc1pyZ2Uva05mUlRPQjh4bkI2a0liRTZP?=
 =?utf-8?B?SklXbitBY0VPcExtZUpJNTVnMnN3Y2cvMklUR3Q4aDV6QlphTlV5eERzZU95?=
 =?utf-8?B?NGRaU1EzNHJkZVlrUU1tUHlmaXo1T2x1RU1Hdnl5SmFGczBTVDA3djgvRmZJ?=
 =?utf-8?B?dlRTaGJKWEJna1VmcHBBLzNWTmpId21VRkJmVU85OGNhS3NKNXJjWks3L1VB?=
 =?utf-8?B?RnMyZ1UrV1Y3T1IwZkQrN0o4d0cwTXRVRm5vRkhyOWZIaTNNdnJXcGlhbUFN?=
 =?utf-8?B?Vnh5dU5YdHRLK085OEtpU1ZzdjgxT0pqNDMxN1ZCak5ZaXJ0T1JrUG1kQjdP?=
 =?utf-8?B?WnZ6eVo2VGN1MXRON1ZYNjhGanprQ0ZubE1kakNDa3hxZ0h2WE96V0tZK2Fo?=
 =?utf-8?B?TGo3Yjk0dGFQMkExZklsMHNlbXNzaGJKZlBBemhBZ0VEU2dOVjVJKzdRRUEr?=
 =?utf-8?B?MTdlMWtmWWJxUXBudFZkKzJaTVBoUzZsQyt5ajhBQ1EydHZDQld4dkF0WTgz?=
 =?utf-8?B?MXZZSm5JYU5PRlozQ2QrRVpmMFoyb0hsSVFsR1BpeXF1KzF5SWtwNkkwWndw?=
 =?utf-8?B?QmZ0VCtZNGNZcUVJdjlBWlAxYzhEdy9YbCs5bVpSZlVnNnFkR0hBenNDSVpw?=
 =?utf-8?B?bEhiQ0hiSDJBT2gxY1dSSVJvRnBaSzB0ZGttZzg4bkx0ZnltRGpUOGdNVUtZ?=
 =?utf-8?B?M1kzRkh4NWlMUTd0Q2gyYlVUQnNjKzl2TWI4SHQ4Z1BocHBpdmxwQ1NCMzAy?=
 =?utf-8?B?OHp6TVRSMjY0TUtxWDFHMnlOSHh0TTN4bXVkY2t1YmJJWmVhaHBwc2lrVGIr?=
 =?utf-8?B?ZEJjQ29NS1crRTczSUxXM1grOC9OUmk2MXNZWC9rbFcwRUFSdzBWN25KM0ZD?=
 =?utf-8?B?Y1ZXNkRxV1l3dCtGMGFjOVdvRGxvOVQxTzVIZnhNZm1qaGc5QVE4SkwwMER5?=
 =?utf-8?B?bmorVXoyeGl5S2dwUVZOMERkdks5d3Q4NHFySTNGUHdzZmNZblZQK0g3Yzgx?=
 =?utf-8?B?L2QxMnE1M0hKZnNUWWhVaVFaK25HV3ZZcEUweTBVWWxVbDBURjlXelJIbW5o?=
 =?utf-8?B?NWpsVFc4aFZQVklVL3JOZE9ML1M1dmJnUkxUbHErdHVHMGxLblpmVWNVeFNK?=
 =?utf-8?B?TWZXYlZYMS9HbmZZWDlyeldhYnR1NVRmVHpqNFRFMUg0c2MrRHpGM25GNy9S?=
 =?utf-8?Q?VgUlBZihSGvVMewR1BOvRh8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 565b47db-39a8-4e08-6bb8-08da9fea7ecf
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 18:11:12.6282 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gq76cPyc/o2TR97fBzQShP5nsMJKDxqaikj78VAIEU0Ll2PYXgzARmtBfSArCQFmfAauIq4ofiLbLKb6mz+JHVBknLtj7R5XsngVjNwAgOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5146
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 02/15] drm/i915/perf: Add OAG and OAR
 formats for DG2
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

On Fri, Sep 23, 2022 at 09:08:28PM -0700, Dixit, Ashutosh wrote:
>On Fri, 23 Sep 2022 13:11:41 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Commit title probably now "Add 32 bit OAG and OAR formats for DG2"?

Yes, will update.

>
>> Add new OA formats for DG2. Some of the newer OA formats are not
>> multples of 64 bytes and are not powers of 2. For those formats, adjust
>> hw_tail accordingly when checking for new reports.
>
>We are not touching hw_tail now, should we delete this from the commit
>message?

will remove,

Thanks,
Umesh

>
>Thanks.
>--
>Ashutosh
