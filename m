Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 278183C7B20
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 03:40:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D3A26E153;
	Wed, 14 Jul 2021 01:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A0A46E153;
 Wed, 14 Jul 2021 01:40:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="197454962"
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="197454962"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 18:40:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="494004087"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 13 Jul 2021 18:40:51 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 13 Jul 2021 18:40:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 13 Jul 2021 18:40:51 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 13 Jul 2021 18:40:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dDRmyuXgDTUBl8THix8k55f0WmJp5VvzV7fdrBDvrYJt+WzQCL+Ttp71SwvIzvL6Y+wAApxo3A4QoCDkJl48nrxOmFC3YLXKrRgH+Y4dU0QBONvY7R89IFevNXC7SpbqEeDf38KugMLHZe736ISlZoYPlOpYa+zk7L8NGObK7Uc9ZXahvJZ6hYKY1473a4pPqB0Yl5Ep0FvmIVgHsOnfR84oe2zaR3eBM/Xh+fEWM3X9pRPDDU0RtR44byFZxlCLPSiELZJNqtDgO5HSW5RSFGjbG2rLmr/OKBY97bQagvrpTzg6/CMWskvZmU+JSD33PQiQTTPwdPMxuhpevc68pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ei/mD/OZt2xniMaDrnBJvC4chNM6m2/4NIyE9+hnh+M=;
 b=FmzT3kU0ws1vl/siRASt+pgYFURz6z8KtSWLyPkxy6N48ZkeYMt0ty8x9lzNz9ezaohhIS5dsJCs9IanBHFUoQU3Nx/d8ugQEW+MJdZaghhTWAkwFfDUO+sy0d3nsYcQgWZyNCbtb0MpJal0kSujGuRqi5d0nbDGdsqrOugFWFyh7IBR0BfQHykZHaUkGT0oWIX/LegChdkaBLSID1RCkIj1re4GDI+CptcOjYbBnPIsONhDdDHSCYx4k/UiTnVNlfyu52qqfudgJKYQ81MeZNhMfJNwgUILm08qjvyIl5bqKXpZDdbYI8L7r83xmkRg5LfHzc8ZPLpV4gxose7UfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ei/mD/OZt2xniMaDrnBJvC4chNM6m2/4NIyE9+hnh+M=;
 b=TeCPsJQyIYrJ+5NbPonq3tCB80QeEU6fI2AqLpHjFGekJphiyOouEs9KZABNmko2iEzlNfXH+kKzO/oe2f/RtmMawTb1eOBGH8goXhMW1uQLSUY6NafxSAW2JTSOuSxjSQ9J0pT5p4O/10uCQa/JuWhIdWuxDwfD47hoT5UTh+Q=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO6PR11MB5634.namprd11.prod.outlook.com (2603:10b6:5:35d::20)
 by CO6PR11MB5585.namprd11.prod.outlook.com (2603:10b6:5:356::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.20; Wed, 14 Jul
 2021 01:40:50 +0000
Received: from CO6PR11MB5634.namprd11.prod.outlook.com
 ([fe80::5d5e:b6bf:aafa:ecd4]) by CO6PR11MB5634.namprd11.prod.outlook.com
 ([fe80::5d5e:b6bf:aafa:ecd4%9]) with mapi id 15.20.4308.027; Wed, 14 Jul 2021
 01:40:50 +0000
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>
References: <20210710012026.19705-1-vinay.belgaumkar@intel.com>
 <20210710012026.19705-7-vinay.belgaumkar@intel.com>
 <d561e568-5e4e-f038-9d99-75d75a43951a@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
Message-ID: <e486e152-1327-37a9-3653-d0909044ba21@intel.com>
Date: Tue, 13 Jul 2021 18:40:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.11.0
In-Reply-To: <d561e568-5e4e-f038-9d99-75d75a43951a@intel.com>
Content-Language: en-US
X-ClientProxiedBy: MWHPR1601CA0015.namprd16.prod.outlook.com
 (2603:10b6:300:da::25) To CO6PR11MB5634.namprd11.prod.outlook.com
 (2603:10b6:5:35d::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.71] (99.88.121.38) by
 MWHPR1601CA0015.namprd16.prod.outlook.com (2603:10b6:300:da::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.20 via Frontend
 Transport; Wed, 14 Jul 2021 01:40:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 80eb5255-8348-4e5d-328c-08d9466868d9
X-MS-TrafficTypeDiagnostic: CO6PR11MB5585:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO6PR11MB55851E365CD6B142F071290785139@CO6PR11MB5585.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: V+CihIy2C28F/MFos4y6RiCAJow8gvYjABc0+lgSnqNWArMlqcqXATQgMOXGLDAI1lJuZ17rlKoPrIp3t0K3lGnxPyi+ER93FSYbDUQC/uU37eXLrmwqcjIvsygj5QS8myIZpRDH5bE8wBOCiihNcMe8mvX12iuzz7W9sOKknt865buD/3DndjWFZMiVspLzNLFXAzUMzoYxQOhUd0BNxO49vDptwkpOYi39OJN+KBXZ+oXOaiTuxEdPy2Npy/i+tsbjNxQZZMvgQzGdbqHptJ3Q9xKbkb1peeDyo6rW+DOdvGy8C4Hy2U2sFFe7UunM0XMyT9x56ScUIp8ii9CMycQZpDlNH+CQUyYl6eDQ4xIol6XIJMzBEY++z1Y5euGc4inayPcQhaOh3MD6kJN10iLGJP8q7imc+0sx/yQ/jXI0DYN3lCusAWGW6sR1YV51UEwwEeUDD/iwQnhbGovLXvhpvC9CrxEctlaLmnKdnWdXX/9iAzBTqLyLt1eijFNLkd3EprFnYp6/rhnDM3Ebi6qejycXUos/hO3e0SH3KyjE3Mhb08p7OqGTkpFLpEKHCz8xsTRW3tsP2P0pPicDcFL66+Ns06kd015EoP3dQdq8lzZAzjw2gkp/BdwCDf8pzULfK3Q1u5hsA+Gdae1zdrPw2U21h6IWkJ8hjW6ikIROMgeZO0lTeFz+hhOiahBg/oCsFYcW0XKCR6tniylWEgs4xFAnnUqKpq1F0vZ0ZJNBrVZPzKOeHV7BYGEOEc87
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5634.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(136003)(366004)(376002)(39860400002)(186003)(6486002)(86362001)(316002)(16576012)(83380400001)(450100002)(8936002)(5660300002)(26005)(4326008)(107886003)(53546011)(31696002)(8676002)(66556008)(2616005)(38100700002)(956004)(36756003)(478600001)(2906002)(31686004)(66946007)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmJlUG5tcnluRSs3THFBUmZ6YTUrTDVMdyt4K2I0Vis4c3RSR1lXZjBVQTZT?=
 =?utf-8?B?ZGhET1lYY3ZmTkR1RHVxMis3RGRIL0N1Q3hibzZ5ZHVvVk4xbVZOaisrKzVo?=
 =?utf-8?B?Y1Nid3FZajBDUG5iZmZ2SGZzRUo2Mkl0ZVg0Z25zMUowUHhvLzNRUWJmSTND?=
 =?utf-8?B?amZjRjZWYlp4UTBDM0VQaXR3VExVazE4dnpML1IvbGZXMnJneTdpV2grRXpY?=
 =?utf-8?B?ZzdSMDFHSkpvUnZ6NXZEczg4YStiejEvTGtVMHdlRGpyT0tHK1ZMbThwZnJT?=
 =?utf-8?B?dFQwdVVveTdiNzVta0lXd09nK3hYanNrd3NWZkpQQURmdVNya1p4cG1WTXlG?=
 =?utf-8?B?dWZ2QlBEOGhod1Jna2dPTldGOGxoOGE0WERpeDE4aWV2ZlBvdWhMS1ZGcGNs?=
 =?utf-8?B?L0VRUXJUeG0rQU5SdE51OFFnQkZCMEQ3TEQrVXlTRk1FLzdTSnExbERFOTNS?=
 =?utf-8?B?SHd1OEM2SXZWL0NjdlF1ZnAwZEU3QmpOazh3VURJWTAvYzYwS3kzaWMwbU9x?=
 =?utf-8?B?ZmdPcms0Y1gxMW05NUdHY1RKSkE4ZjhRVUxaZzM3QnZaaytJVmgxdE9MQ3Bn?=
 =?utf-8?B?SUNsZ3pPbVJVUmZoSFNYZ0dLNVhuN2UwaGYyMWE0MlhRYnRiSFlLM1lXREJy?=
 =?utf-8?B?dlE3dEFGWXNiQ3I2QWtOLytPak4rT28zeDV0Unc0ZnhMSmRUUkZZTmRkVmRk?=
 =?utf-8?B?MTlHRXRsSCtxWTlYc1NTbVhEZEFjRWl5WVdIckxBbURwTXE5TFR5a2VIMU42?=
 =?utf-8?B?Q05VdjROUURaTm5OVTFzNXdrUkFUZy8xS0lzWDBnOTdaS0tYVmxRc0lJM0Mr?=
 =?utf-8?B?UW56QmVWT1QvZE9YRjlCakZOWlFkUDJ6VzVnRGVPR3EybHRRVnRTemhyTGYw?=
 =?utf-8?B?VHBiOEx3OFNHZEVJNEtwK21OcmtRbitBWlkwemxlRDdKMTNucDZTWlFlMWdl?=
 =?utf-8?B?L0hBZnNxblZJUkJ3SlI4MHBZVDhZSm1JTlkrTkFVbFdoUk1vUU1IVnRVSVow?=
 =?utf-8?B?S2syeWEydGRKRTlON0ZmVXZVQUh2VEFWcnNvRnd4Z2FkU2N6VFI2bFlsM3M3?=
 =?utf-8?B?TklLQzR6b2FmSmtnSXU1QWV1U3F3eG82bXRjNjNnWWhYUlVvZGx0dmx1RGI5?=
 =?utf-8?B?bXVPWmlCWnN4OFNaOUR5My8xdmM5dFQ4dUxTUGJQbGFKTk9rSmRoek5yTWRl?=
 =?utf-8?B?OGltTTlBdGw5RVdCcjUxWVkySUc1a3lSZUhNSmx4anJpS3k3Z0VPUnlod1A5?=
 =?utf-8?B?aDU4c3lESmhZQU5aMXIxQ1RaVHRrMW1reUV2QVdkekZwbWR1UTVuTDl5dzFH?=
 =?utf-8?B?Y2FsTXF4Uk15U0tHMG9yaWczUm43Q0ZaUlJwbnFuZkZWeVRlbWg3MVlCNFBZ?=
 =?utf-8?B?Qk04NzJvNUMvWlZlMkRWU2k3MERwaUJhZXl4eTUzU3h5NWNpeHVzTkp0dTNC?=
 =?utf-8?B?bU1GZVIvZWpxM1ZWam5FdmQzYmQ0aEVVWWdDTmwvb3lBU1l5dklRRkpmRjVB?=
 =?utf-8?B?S0NsUHFad254SjBsRmJiOEtUeWVKVldFMGdQUlowVzFxSDRCaWNIM3JRRmFM?=
 =?utf-8?B?VGJ1clRlSEpuRmhtTDlVd0Q0WTVBNjhkaSt3YVJUcVhxV1NRTk9xZHlwdW15?=
 =?utf-8?B?czN6ajJCb0YxbEVyeFlJekVXMFA2OURmTlZtWTA0dWJ5aXY3dCtybHRJUUV0?=
 =?utf-8?B?REFYMGsvZDl3WHY2ZmY4S1h6eFFkb0ZwN1FCWVpqYi9YRUd2bXNtSjFYaCsy?=
 =?utf-8?Q?kGxWClx9KJji3UkXWccBlf1DD77wmtSUKYC11qt?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80eb5255-8348-4e5d-328c-08d9466868d9
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5634.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2021 01:40:50.0030 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9VlnTPUe+4ikWMqnvm072aMVHLO+4BiYSksF9J2rdKv8XV1iACFMuQKZy23wcy3v4+/jC+AAFHB8RnT+KHblFr9/M+sI5RNIXbNFxKPeSbw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5585
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/16] drm/i915/guc/slpc: Allocate,
 initialize and release slpc
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA3LzEwLzIwMjEgOTowNSBBTSwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPiAKPiAKPiBP
biAxMC4wNy4yMDIxIDAzOjIwLCBWaW5heSBCZWxnYXVta2FyIHdyb3RlOgo+PiBBbGxvY2F0ZSBk
YXRhIHN0cnVjdHVyZXMgZm9yIFNMUEMgYW5kIGZ1bmN0aW9ucyBmb3IKPj4gaW5pdGlhbGl6aW5n
IG9uIGhvc3Qgc2lkZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogVmluYXkgQmVsZ2F1bWthciA8dmlu
YXkuYmVsZ2F1bWthckBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFN1bmRhcmVzYW4gU3Vq
YXJpdGhhIDxzdWphcml0aGEuc3VuZGFyZXNhbkBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jICAgICAgfCAxMSArKysrKysrCj4+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3NscGMuYyB8IDM2ICsrKysrKysr
KysrKysrKysrKysrLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19z
bHBjLmggfCAyMCArKysrKysrKysrKysKPj4gICAzIGZpbGVzIGNoYW5nZWQsIDY2IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3VjLmMKPj4gaW5kZXggOWQ2MWIyZDU0ZGU0Li44Mjg2M2E5YmM4ZTggMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jCj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jCj4+IEBAIC0zMzYsNiArMzM2LDEyIEBAIGlu
dCBpbnRlbF9ndWNfaW5pdChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4+ICAgCQkJZ290byBlcnJf
Y3Q7Cj4+ICAgCX0KPj4gICAKPj4gKwlpZiAoaW50ZWxfZ3VjX3NscGNfaXNfdXNlZChndWMpKSB7
Cj4+ICsJCXJldCA9IGludGVsX2d1Y19zbHBjX2luaXQoJmd1Yy0+c2xwYyk7Cj4+ICsJCWlmIChy
ZXQpCj4+ICsJCQlnb3RvIGVycl9zdWJtaXNzaW9uOwo+PiArCX0KPj4gKwo+PiAgIAkvKiBub3cg
dGhhdCBldmVyeXRoaW5nIGlzIHBlcm1hLXBpbm5lZCwgaW5pdGlhbGl6ZSB0aGUgcGFyYW1ldGVy
cyAqLwo+PiAgIAlndWNfaW5pdF9wYXJhbXMoZ3VjKTsKPj4gICAKPj4gQEAgLTM0Niw2ICszNTIs
OCBAQCBpbnQgaW50ZWxfZ3VjX2luaXQoc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+PiAgIAo+PiAg
IAlyZXR1cm4gMDsKPj4gICAKPj4gK2Vycl9zdWJtaXNzaW9uOgo+PiArCWludGVsX2d1Y19zdWJt
aXNzaW9uX2ZpbmkoZ3VjKTsKPj4gICBlcnJfY3Q6Cj4+ICAgCWludGVsX2d1Y19jdF9maW5pKCZn
dWMtPmN0KTsKPj4gICBlcnJfYWRzOgo+PiBAQCAtMzY4LDYgKzM3Niw5IEBAIHZvaWQgaW50ZWxf
Z3VjX2Zpbmkoc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+PiAgIAo+PiAgIAlpOTE1X2dndHRfZGlz
YWJsZV9ndWMoZ3QtPmdndHQpOwo+PiAgIAo+PiArCWlmIChpbnRlbF9ndWNfc2xwY19pc191c2Vk
KGd1YykpCj4+ICsJCWludGVsX2d1Y19zbHBjX2ZpbmkoJmd1Yy0+c2xwYyk7Cj4+ICsKPj4gICAJ
aWYgKGludGVsX2d1Y19zdWJtaXNzaW9uX2lzX3VzZWQoZ3VjKSkKPj4gICAJCWludGVsX2d1Y19z
dWJtaXNzaW9uX2ZpbmkoZ3VjKTsKPj4gICAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zbHBjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfc2xwYy5jCj4+IGluZGV4IGMxZjU2OWQyMzAwZC4uOTRlMmYxOTk1MWFhIDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc2xwYy5j
Cj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zbHBjLmMKPj4g
QEAgLTQsMTEgKzQsNDEgQEAKPj4gICAgKiBDb3B5cmlnaHQgwqkgMjAyMCBJbnRlbCBDb3Jwb3Jh
dGlvbgo+PiAgICAqLwo+PiAgIAo+PiArI2luY2x1ZGUgPGFzbS9tc3ItaW5kZXguaD4KPiAKPiBo
bW0sIHdoYXQgZXhhY3RseSBpcyBuZWVkZWQgZnJvbSB0aGlzIGhlYWRlciA/CgpXYXMgYmVpbmcg
dXNlZCBpbiBhIHByZXZpb3VzIHZlcnNpb24gZm9yIE1TUiByZWFkcywgcmVtb3ZlZC4KCj4gCj4+
ICsKPj4gKyNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgo+PiArI2luY2x1ZGUgImd0L2ludGVsX3Jw
cy5oIgo+PiArCj4+ICsjaW5jbHVkZSAiaTkxNV9kcnYuaCIKPj4gICAjaW5jbHVkZSAiaW50ZWxf
Z3VjX3NscGMuaCIKPj4gKyNpbmNsdWRlICJpbnRlbF9wbS5oIgo+PiArCj4+ICtzdGF0aWMgaW5s
aW5lIHN0cnVjdCBpbnRlbF9ndWMgKnNscGNfdG9fZ3VjKHN0cnVjdCBpbnRlbF9ndWNfc2xwYyAq
c2xwYykKPj4gK3sKPj4gKwlyZXR1cm4gY29udGFpbmVyX29mKHNscGMsIHN0cnVjdCBpbnRlbF9n
dWMsIHNscGMpOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgaW50IHNscGNfc2hhcmVkX2RhdGFfaW5p
dChzdHJ1Y3QgaW50ZWxfZ3VjX3NscGMgKnNscGMpCj4+ICt7Cj4+ICsJc3RydWN0IGludGVsX2d1
YyAqZ3VjID0gc2xwY190b19ndWMoc2xwYyk7Cj4+ICsJaW50IGVycjsKPj4gKwl1MzIgc2l6ZSA9
IFBBR0VfQUxJR04oc2l6ZW9mKHN0cnVjdCBzbHBjX3NoYXJlZF9kYXRhKSk7Cj4gCj4gbW92ZSBl
cnIgZGVjbCBoZXJlCj4gCj4+ICsKPj4gKwllcnIgPSBpbnRlbF9ndWNfYWxsb2NhdGVfYW5kX21h
cF92bWEoZ3VjLCBzaXplLCAmc2xwYy0+dm1hLCAmc2xwYy0+dmFkZHIpOwo+PiArCWlmICh1bmxp
a2VseShlcnIpKSB7Cj4+ICsJCURSTV9FUlJPUigiRmFpbGVkIHRvIGFsbG9jYXRlIHNscGMgc3Ry
dWN0IChlcnI9JWQpXG4iLCBlcnIpOwo+IAo+IHMvc2xwYy9TTFBDCj4gCj4gYW5kIHVzZSBkcm1f
ZXJyIGluc3RlYWQKPiBhbmQgeW91IG1heSBhbHNvIHdhbnQgdG8gcHJpbnQgZXJyb3IgYXMgJXBl
CgphZGRlZC4KCj4gCj4+ICsJCWk5MTVfdm1hX3VucGluX2FuZF9yZWxlYXNlKCZzbHBjLT52bWEs
IEk5MTVfVk1BX1JFTEVBU0VfTUFQKTsKPiAKPiBkbyB5b3UgcmVhbGx5IG5lZWQgdGhpcyA/Cgpy
ZW1vdmVkLgo+IAo+PiArCQlyZXR1cm4gZXJyOwo+PiArCX0KPj4gKwo+PiArCXJldHVybiBlcnI7
Cj4+ICt9Cj4+ICAgCj4+ICAgaW50IGludGVsX2d1Y19zbHBjX2luaXQoc3RydWN0IGludGVsX2d1
Y19zbHBjICpzbHBjKQo+PiAgIHsKPj4gLQlyZXR1cm4gMDsKPj4gKwlHRU1fQlVHX09OKHNscGMt
PnZtYSk7Cj4+ICsKPj4gKwlyZXR1cm4gc2xwY19zaGFyZWRfZGF0YV9pbml0KHNscGMpOwo+PiAg
IH0KPj4gICAKPj4gICAvKgo+PiBAQCAtMzEsNCArNjEsOCBAQCBpbnQgaW50ZWxfZ3VjX3NscGNf
ZW5hYmxlKHN0cnVjdCBpbnRlbF9ndWNfc2xwYyAqc2xwYykKPj4gICAKPj4gICB2b2lkIGludGVs
X2d1Y19zbHBjX2Zpbmkoc3RydWN0IGludGVsX2d1Y19zbHBjICpzbHBjKQo+PiAgIHsKPj4gKwlp
ZiAoIXNscGMtPnZtYSkKPj4gKwkJcmV0dXJuOwo+PiArCj4+ICsJaTkxNV92bWFfdW5waW5fYW5k
X3JlbGVhc2UoJnNscGMtPnZtYSwgSTkxNV9WTUFfUkVMRUFTRV9NQVApOwo+PiAgIH0KPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zbHBjLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc2xwYy5oCj4+IGluZGV4IDk4MDM2
NDU5YTFhMy4uYTI2NDNiOTA0MTY1IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF9ndWNfc2xwYy5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Y19zbHBjLmgKPj4gQEAgLTMsMTIgKzMsMzIgQEAKPj4gICAgKgo+PiAgICAq
IENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCj4+ICAgICovCj4+ICsKPiAKPiBz
aG91bGQgYmUgZml4ZWQgaW4gZWFybGllciBwYXRjaAo+IAo+PiAgICNpZm5kZWYgX0lOVEVMX0dV
Q19TTFBDX0hfCj4+ICAgI2RlZmluZSBfSU5URUxfR1VDX1NMUENfSF8KPj4gICAKPj4gKyNpbmNs
dWRlIDxsaW51eC9tdXRleC5oPgo+PiAgICNpbmNsdWRlICJpbnRlbF9ndWNfc2xwY19md2lmLmgi
Cj4+ICAgCj4+ICAgc3RydWN0IGludGVsX2d1Y19zbHBjIHsKPj4gKwkvKlByb3RlY3RzIGFjY2Vz
cyB0byB2bWEgYW5kIFNMUEMgYWN0aW9ucyAqLwo+IAo+IGhtbSwgbWlzc2luZyBtdXRleCA7KQoK
UmVtb3ZlZC4KCj4gCj4+ICsJc3RydWN0IGk5MTVfdm1hICp2bWE7Cj4+ICsJdm9pZCAqdmFkZHI7
Cj4gCj4gbm8gbmVlZCB0byBiZSB2b2lkLCBkZWZpbmUgaXQgYXMgcHRyIHRvIHNscGNfc2hhcmVk
X2RhdGEKPiAKPj4gKwo+PiArCS8qIHBsYXRmb3JtIGZyZXF1ZW5jeSBsaW1pdHMgKi8KPj4gKwl1
MzIgbWluX2ZyZXE7Cj4+ICsJdTMyIHJwMF9mcmVxOwo+PiArCXUzMiBycDFfZnJlcTsKPj4gKwo+
PiArCS8qIGZyZXF1ZW5jeSBzb2Z0bGltaXRzICovCj4+ICsJdTMyIG1pbl9mcmVxX3NvZnRsaW1p
dDsKPj4gKwl1MzIgbWF4X2ZyZXFfc29mdGxpbWl0Owo+PiArCj4+ICsJc3RydWN0IHsKPj4gKwkJ
dTMyIHBhcmFtX2lkOwo+PiArCQl1MzIgcGFyYW1fdmFsdWU7Cj4+ICsJCXUzMiBwYXJhbV9vdmVy
cmlkZTsKPj4gKwl9IGRlYnVnOwo+IAo+IGNhbiB5b3UgYWRkIGFsbCB0aGVzZSBleHRyYSBmaWVs
ZHMgaW4gcGF0Y2hlcyB3aGljaCB3aWxsIG5lZWQgdGhlbT8KPiAKPiBNaWNoYWwKCkRvbmUuCgpU
aGFua3MsClZpbmF5LgoKPiAKPj4gICB9Owo+PiAgIAo+PiAgIGludCBpbnRlbF9ndWNfc2xwY19p
bml0KHN0cnVjdCBpbnRlbF9ndWNfc2xwYyAqc2xwYyk7Cj4+Cj4gCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
