Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKzhFHWMoWnouAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 13:22:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B20D1B706D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 13:22:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBAF710E143;
	Fri, 27 Feb 2026 12:22:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="en94ETWy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D757210E143;
 Fri, 27 Feb 2026 12:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772194930; x=1803730930;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=08M9WGnm+EabKlSEbHRWiSiq1AeW9OVcbScwFTInuXo=;
 b=en94ETWyjn/3mmB2A/YTUSXZu8aui3Gvst9I6/h/jTe1MEA79dDJ6WZX
 hkXzmPue8dZK0d2f3xCWEv1l0ZGSjHR4KWaxSmA3rHRoEbNPw3iyCguxE
 kFbXbx0M0PuhCaMAMIsOw8D2qAEl2LTDQGYj0yP7dfw2/AY+DsXAIyKjk
 nP+eKOW6fDvZLbXChLo0mHMuaTLRWc4D2qYkwG8c79IrTq1elMzKfA5D9
 kMXVW3KuzHohe+KZ80YTB/lVDQOfoBvB6eeCXJol5jZmOjgkpH8dW/MTn
 3bMB5IaSYzYhgW/1WXl/XvxJCxu02MvoBWmjjDjfkh37NgjQt3fiG1Grx w==;
X-CSE-ConnectionGUID: iE630GhjTAO09b64pfccTA==
X-CSE-MsgGUID: fo3GxR7wRw+XQLVBGYD1Og==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="75876494"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="75876494"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 04:22:09 -0800
X-CSE-ConnectionGUID: YUyw/EGJQaezDcVVNsN5hg==
X-CSE-MsgGUID: s7U7O9O0T1S+clukWM1nZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="214741770"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 04:22:09 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 04:22:09 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Feb 2026 04:22:09 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.51) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 04:22:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wGk1A5v5OA7za/Cn6VhGqGBzOZPzpEmYj/7dSktTIjnZYJ6HyVFbNaNZWV39ARER2L+3VTmec86BmWoyQmI4UwxmpCaw+t5TT94rkmWQlPWPEMiuX84ji1TfO5wytEXCuVJ7CYlCF0pVG4tM0kzL+oTPXbeBWJGe0G6G6hGZkwCyBkEna/OiKueEKufemWMz0BNIX5rOKPlJGXSbMKVFeCgCMnFF7v2IfhBxv66UfYHiNcu/Ko1Fef4DgwWgqVHDmwlXVQ0jXTC8VakUZuOpHA5zKua5a0gWN4ELWMCZeH67St1ifokl90Hfi02FB7xPjV2kmAkgu/9e+snnpKD0hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZcR+HMW/WQdSmcWa59MeOPI531vS3jAazFWLQhAo2Is=;
 b=Qzheq2o0/FW0t36sj1QU/ws0JWbCniNqWmdXBpi/gcwO1zWQHLwYhNNR3ZP7Csv/Rs5VjchYp6aDcTU9KC8HCEFy66rcMwqgaswgF3oUTXYHza72ZdOkMZusDykFheNHQyLZJTIvspuKbKPAHdIZJ5yPpJ1GjPITePgW6w21Zp1pJZ6AbQ8FjTrXWIAP9OHgEb5deiWxp6hIp3ZbWHyM+yQGThYkFk70ynaxvuJRAjTev4g04KAcwRtR+1BGXXyj5APsn8pMfVD7YGlVml6VikAC8Yge/8V9u9fu4KVk08KxRHnlKM5ePp+sJX8osHJ4qHjMNFt/V2/Z2reNZP7f8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB8044.namprd11.prod.outlook.com (2603:10b6:806:2ef::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Fri, 27 Feb
 2026 12:22:07 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9632.017; Fri, 27 Feb 2026
 12:22:07 +0000
Message-ID: <adadf2d0-6efd-402f-9153-052907a4160d@intel.com>
Date: Fri, 27 Feb 2026 17:52:00 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/14] drm/i915/display: Add member to store AS SDP
 transmission time
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, <animesh.manna@intel.com>
References: <20260223134431.1639308-1-ankit.k.nautiyal@intel.com>
 <20260223134431.1639308-14-ankit.k.nautiyal@intel.com>
 <aaB8HU1QhhdMKIIV@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aaB8HU1QhhdMKIIV@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0059.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB8044:EE_
X-MS-Office365-Filtering-Correlation-Id: f6b0f793-d98f-411a-2a95-08de75fad284
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: QG7S/BVyfMlt5ObRaqlXiiTEKM567rnwR7/MrtYGK4wcKV2uKgIxS+/FHhiLHlVSqUR7ssneRbZomiAyshqqZilGpOaDmTj+zhqqYumvok3AjCcjQr0Hk1iXhH+MuJRAcaWowZ5EJLFN9sRN3APKOjPCpKXxkP5j+2w4vkWlkKFfXxTL1zXCYYK22GaKeWfNwXLudkZvh290yUW6SeoXlSVPvfj8xSMnNtUxDptbOyD6powJ0Lxk93bdLTapwzNeoJ3k6kH8Hz4Rkdnb4VssAXFLNkzCabV3reRCxv6feGqmFLlz2t80fGCvsAtF5Xzp9EdZb9HEoLl0QN/bw8VQnFRSYoW0XTmn2VVnPoJIyf+NHD3l+tTfTl7t5eSuFJRcjf2B4UW82akPgWPhYdG3/q3cBAVMHj9zUhS4Dtjbz7zxbgJoZsJdBplmyy2WG2Gebu7zru+9uWY7HCkj/nbwSh/ANdyHhrA0FUHsuQM3qZkvNCm/eUA9Jq+AjCsa+Y5tFptIX6XiI6w02caccyfY03CCpTNJgvz9jNISHa6JYmeFPtJQcdUveMzpMX4nBYSQAgMks/QUoy/7kaW3CJqwNI4UcKirYpgyiC9YkKTUSnmBgjRKhwttS+U85JUQYA+QXxMKGZGMTGZLbXlADoIN8hkJB69MmNqgjSbZLWsKKkHYBjU0rMEUMzQklXuOswCcaw1r9EJLJsuxV6U32GEEpWNqJ0/8+b0nXq8CKtskfWY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TlF3RUxXcUx2WkNVNVFXMC9pRWlGakNIZ3dxK0NSbkNEYlZvMUpRT3JrZUFs?=
 =?utf-8?B?MGhGOVlaSXU1UVVGZWhNcGRGVnRSNW1pM2dGaldUSlBWWlpmOGJuTVc5dFkw?=
 =?utf-8?B?UGZIQlN3RWVFRFNZS2lmRGdObVNLV2lZQi9sTnJPd1l4TUlsZ1lRTTBQT0ty?=
 =?utf-8?B?bmszdU1wYlEwT0x0S0RpQ2swKzBCbzE2dkZkcnJqVUs3QjVpQUMxakd0QjBp?=
 =?utf-8?B?eE5uNk9jK0RCWEEwdFEweTBxb0dBTjhtUlIrcWttOWY3dWhQR3JyVVA5VHJk?=
 =?utf-8?B?c2ViazIyNkMrbkhiY0FxcitxZnQ1TktqTmU2dG9kTGI0MWhUSVhoZTU2ZEFP?=
 =?utf-8?B?NEVpajM4a2lCMjd2dTBsaWo5YTRZbG0xaW5RS0oyenQrM0wxLzBmMmRNVXRz?=
 =?utf-8?B?QXhBaTZJTnJyVUgzYkF2azE0bDB0dXZhQWhoQlRXcTR4N3grMS8yYkQxZkk4?=
 =?utf-8?B?azF1QVdreEpqN0NoajNTTmUzempHUHNIcVFlQ3BENUlBejZaVThaaEN1bzhO?=
 =?utf-8?B?RnRlRTJDcVhyRFFJTkQ0SWFsbEZqSDA4QWUrZTFjaGRSRUJRdjFTWXhZaTV4?=
 =?utf-8?B?TFkyUkRrZlVUMFgvY2ozMlM1QjN2bjRBNFpaUEVlT1loTnRxR0RZNGl5Z3Ay?=
 =?utf-8?B?Z1BaNFQ5Vk8wdW94YUZCSGVRZFlhOHhoNGpVb3lQZlNBbnY4Y2g5QW12Ly9r?=
 =?utf-8?B?dHFxU0tTYVZmL2lZWTU1cDJkMy9tUklPWmYzNS9PdE9CQlJxc3doaTVRS05m?=
 =?utf-8?B?RjNWd3ZJeitGSUlWR3lscHQ4Q1lrSXNFclB1YWxxclM2d0dMWkRJS0xUV3lW?=
 =?utf-8?B?ZHFMSTVzM1dvakZXZlprMGZnQkpubzBoSmJXM3k0ZFg1ZWoweEY3L2UxVEpB?=
 =?utf-8?B?bnVYeUxsYldFN05zYjJIdVVGaitJaVNOREQrOWdiVHBiRU1CQ2V6MWFCRENi?=
 =?utf-8?B?Wkc2c2RPTGxNVjNCTnQ1QTBSSWRGLzF2ZzIyTnlqMHRuYTZQUDFveEh5MGxF?=
 =?utf-8?B?UFE1NWFwK3B1c0Vkd0prTnQ2VmJ2TUpORFJtc3ErT3BBN0RnTllkci9mNmpZ?=
 =?utf-8?B?MUNrL0IxWGlmUXRTVE9zSEFvby9kZ2tkK2oxYTJsMXo2L0JSdjVJTmsyWS9H?=
 =?utf-8?B?SmRCdmVsVlBKazBiVG4yenNvMTZVWnQvc1hLNDhoR0w1cUNsVmZGc1hOaU04?=
 =?utf-8?B?d0NUU0gyYXllbjZZTEdhVHJBTU5FMUsvQkQ3YjBiME1pUVBvb00zRFFaSUg0?=
 =?utf-8?B?MC9DT0VkQnVjK0JwNjNXWTNseUZWOGVXNlNIWG5jZkprZVVPNk1yQTJqS2h5?=
 =?utf-8?B?KzdFTjNod1pMTEhmVytCTDZXNzlabzZSbTh5VzdUVzZPREk3YXRzYy9QbkEv?=
 =?utf-8?B?eFFRWng2czlYeWF5dDV3M2tlTEhRL1dPOEJ1TU1JaGgreE9KRko5U01IM1RP?=
 =?utf-8?B?WHl2azhOWGhzV2tOckNGUGJNbGgybFF5bEMyM2xkNjRKYm5qZUpTMEUxSmdK?=
 =?utf-8?B?bGhlc0tyYVZybHB3SmlKZDBDYmhDd3Fjd2lYZEp1VS9jcTlvQjRQenZZRU9l?=
 =?utf-8?B?T0lXa3JJV0RpdSs2cjNnc0lIdi8vbjhNbUUvcTVNeEVnTS9MZ0VBNVB2dkhn?=
 =?utf-8?B?NVRBdEpndjdNWlVxQjQ0WXovVUxyQmVoaUUvSFFwTFhWMTk1NzE4MGEzR2hX?=
 =?utf-8?B?bzRpaU0zQTlQMVd4R1dGZTF0cEUyTlJjSGh3dGJoakZlTkFJUFVTalY5VHhF?=
 =?utf-8?B?ajZONDNmcDVXUVlwdmdjOStJTTE5ODE4b0hGS1VEMUExdXF4anlwR1JUbmg4?=
 =?utf-8?B?L2VvQ1BaUmxCTnJ5VXBhSjVYNndXOVhVWkloQyt2ZXJ3amNpVGhwZzN3RndU?=
 =?utf-8?B?RXBJUkg0VXJwTi8xcm1xTlhGVStRYjFTZ3VPdE9rVUNkYmtkSno1Qml0OE5G?=
 =?utf-8?B?eXkxWVEvTmdta0pTMzlXZExTN1JyajRjcWx0bFlpb3pnbmZiOWg3K3dOM0N3?=
 =?utf-8?B?dTdDMmdKVzk4UHdSSWVFb0NITHQrbm8wM0xCR2pRczJoSHFGenM1RHRuYWhT?=
 =?utf-8?B?aTQ5THJFS2hpaUIway9wYmM2ckg4Y01ndWtkdjdIZ3FCNFQwSWVIVStGMGs0?=
 =?utf-8?B?SGdIbjRLVFZhV3FEcEk1ekZqQldFVEF6d1lBODhhZWJjRVFEYXVzZGJpZ0p1?=
 =?utf-8?B?Q1hpQWFJTkhySHFvTkpZeVh2Yyt2Z1pKSjBQdVpQamllRlJtS3hJejZUdStm?=
 =?utf-8?B?QnRNcDVWYlp4UHNNSlA2YzRWN2VrVUU0bGJWUmdWeGY3ZGZFcVIycjR1ekw2?=
 =?utf-8?B?ZVJOd0lIWFRyUWdXYW9IRktsaVlyQlBnNHU1YXpHODZOdGk0dXNmR2UrV05l?=
 =?utf-8?Q?QQYADqwr8Wk6IquM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f6b0f793-d98f-411a-2a95-08de75fad284
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 12:22:07.1024 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 35qYrNqZAdTlT/94z5ybrRReMxlBdoaUqFKR9h1pcgsl3wJ+GFSK80RPYkKUAwbtwcj8mD6mDSAoXPSFlOEHmvKiySxvkxowWocff2jBZn8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8044
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 8B20D1B706D
X-Rspamd-Action: no action


On 2/26/2026 10:30 PM, Ville Syrjälä wrote:
> On Mon, Feb 23, 2026 at 07:14:30PM +0530, Ankit Nautiyal wrote:
>> AS SDP can be sent at two different positions T1 and T2.
>> These depend on the Panel Replay configuration and Adaptive Sync SDP
>> modes as per DP v2.1.
>> Currently we have configurations where SDP needs to be sent at T1 only.
>> However, to make way for supporting more PR and AS SDP configurations,
>> add a new member to store AS SDP transmission time in crtc_state.
>>
>> This is filled with T1 for now during panel_replay_compute_config() and
>> is used to set the MMIO register PR_ALPM and DPCD Panel_Replay_Config3
>> DPCD offsets.
>>
>> readout for this new member needs to be added along with other related
>> members.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_alpm.c     | 21 ++++++++++++++++++-
>>   .../drm/i915/display/intel_display_types.h    |  1 +
>>   drivers/gpu/drm/i915/display/intel_psr.c      |  7 +++++++
>>   3 files changed, 28 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
>> index b3334bc4d0f9..6eecd5ce4fad 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> @@ -365,6 +365,25 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>>   	crtc_state->has_lobf = true;
>>   }
>>   
>> +static int get_pr_alpm_as_sdp_transmission_time(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +
>> +	switch (crtc_state->pr_as_sdp_transmission) {
>> +	case AS_SDP_SETUP_TIME_T1:
>> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
>> +	case AS_SDP_SETUP_TIME_DYNAMIC:
>> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1_OR_T2;
>> +	case AS_SDP_SETUP_TIME_T2:
>> +		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T2;
>> +	default:
>> +		drm_dbg_kms(display->drm,
>> +			    "Missing case %d for AS SDP Position, going with T1 by default\n",
>> +			    crtc_state->pr_as_sdp_transmission);
> MISSING_CASE()
>
> There's no point in adding eloquent debug messages/etc into dead code.

Roger that. I think we were avoiding MISSING_CASE() some time back 
during transitioning to struct display, but that was long back.

Will use MISSING_CASE() here.


>
>> +		return AS_SDP_SETUP_TIME_T1;
>> +	}
>> +}
>> +
>>   static void lnl_alpm_configure(struct intel_dp *intel_dp,
>>   			       const struct intel_crtc_state *crtc_state)
>>   {
>> @@ -388,7 +407,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>>   			ALPM_CTL_AUX_LESS_WAKE_TIME(crtc_state->alpm_state.aux_less_wake_lines);
>>   
>>   		if (intel_dp->as_sdp_supported) {
>> -			u32 pr_alpm_ctl = PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
>> +			u32 pr_alpm_ctl = get_pr_alpm_as_sdp_transmission_time(crtc_state);
>>   
>>   			if (crtc_state->link_off_after_as_sdp_when_pr_active)
>>   				pr_alpm_ctl |= PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index e8e4af03a6a6..9065bf8bd6a5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1181,6 +1181,7 @@ struct intel_crtc_state {
>>   	bool has_panel_replay;
>>   	bool link_off_after_as_sdp_when_pr_active;
>>   	bool disable_as_sdp_when_pr_active;
>> +	int pr_as_sdp_transmission;
> I don't see much point of adding that if you only ever set
> it to one fixed value. Though I suppose the point was to make
> sure the DPCD and PR_ALPM_CTL register values stay in sync.
> We could also achieve that by replacing that crtc_state member
> with eg. just a simple function.

The idea was to get this computed in compute_config phase. Currently 
this is a fixed value T1, but if we ever want to change (e.g. 
dynamically change to t2) we might need to store it and perhaps will be 
used to configure other things.

But all this is premature optimization and as you said, we could just 
have a simple function.

>
>>   	bool wm_level_disabled;
>>   	bool pkg_c_latency_used;
>>   	/* Only used for state verification. */
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index e0e6ddbfaa2d..74242c93db87 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -779,6 +779,7 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
>>   		DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
>>   		DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
>>   	u8 panel_replay_config2 = DP_PANEL_REPLAY_CRC_VERIFICATION;
>> +	u8 panel_replay_config3 = crtc_state->pr_as_sdp_transmission;
>>   
>>   	if (crtc_state->has_sel_update)
>>   		val |= DP_PANEL_REPLAY_SU_ENABLE;
>> @@ -794,6 +795,9 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
>>   
>>   	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG2,
>>   			   panel_replay_config2);
>> +
>> +	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG3,
>> +			   panel_replay_config3);
> This is starting to look like someone should make this a burst write.

I can send a separate patch for this.


Regards,

Ankit

>
>>   }
>>   
>>   static void _psr_enable_sink(struct intel_dp *intel_dp,
>> @@ -1771,6 +1775,9 @@ static bool _panel_replay_compute_config(struct intel_crtc_state *crtc_state,
>>   	crtc_state->link_off_after_as_sdp_when_pr_active = compute_link_off_after_as_sdp_when_pr_active(connector);
>>   	crtc_state->disable_as_sdp_when_pr_active = compute_disable_as_sdp_when_pr_active(connector);
>>   
>> +	/* For now we use T1 as the transmission time */
>> +	crtc_state->pr_as_sdp_transmission = AS_SDP_SETUP_TIME_T1;
>> +
>>   	if (!intel_dp_is_edp(intel_dp))
>>   		return true;
>>   
>> -- 
>> 2.45.2
