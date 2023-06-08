Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB827279C6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 10:15:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2668B10E214;
	Thu,  8 Jun 2023 08:15:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8EFB10E214
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 08:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686212097; x=1717748097;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NoHDXl4l6JUTpsJQgoybLzsTPep8Neme4IHSiYV7aik=;
 b=GB3YrhwyCHYFgN4tjwjAxzofXifKJ/BfCSfGJutD3HKCcQJN0KGHuVVx
 tJU5o0RCCruGorybFtJSrDZI4c8OQdDzjzTvpakHYFx2QG8tN4QuXfaYO
 QNC+DDRiLQ63EnzHvuTqupGpFSIYeQjM5Pox99yQQ98tPVPXeG+O6vsh9
 HnPlXqSD9geDsQsahACGXhaLEl1zSrg6+Iz7QOd0L4RyHBjjHHXYRqp8E
 g4XEaf5CAc1l2Pe4kP8be1q4h2xz1h6X3N4oWMkjYAIJ+NOtC+xhv/Qfh
 wzv9BR6xSd0mCH5U+r5dwYHFmyYt+tSE6tMQiki9YCJuFkXlvJLlv2dOS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="337601617"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="337601617"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 01:14:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="713028104"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="713028104"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 08 Jun 2023 01:14:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 01:14:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 01:14:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 01:14:55 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 01:14:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l1bDSsIw71fjjpEZAkuTw3m7MGTv0ZPDZ7g3eEdYjzGHJUNatWX79AqEC5tlWHliPE0rcVnFvUEsZYezfT9THvP2ffT6Qo08KsvGrEnxvmqA82xy/KXF8UZu9a5/bK/Q6MfPhYBl6bErKwu3xjJAH5B2XeIIolQHmDNWoiRBVK7xm0fuWFnItg1PhGhU/bpKR47CMfeOrsLFuixbpx3/9gD2NV4ltxZ2o2cy+a96EeC3oYr0J+2ThUGKlqUfPXA2qqXekMO2LhO+lAw7DqK5JSggKHNmbr7K5ADUoAfKdH7TLL/zFCGRUfLXHXooEhtv3bQYS36qHuF4AesFaoLtnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NoHDXl4l6JUTpsJQgoybLzsTPep8Neme4IHSiYV7aik=;
 b=f93JTLtvommcFGawnKULSll/2AfI4mZsCMvN9azmUIPjD7noT5WTBQR4GSfaWzTU7nchiSuJM/bQBI+W7NSFJThxSmoc724GpyGWuuN3VRV6HJMPH29011fH1XhFjCtFIUkHle+mpmX2M1T0V6K5cS8vYuhsR8V7C7g9ZYi3zqRAFYNe/svSn7BdiOuXyRJFY7YkwGssnF0e3qb8Sn4Dh7AXE/C5UR2bTNbdpUk3MhDXv6pO9qsd8YtuA9GmJcc/wrBiNCCrk1qJzx54OvP+1/LlgmH2duRVm2mfuEVDlTW5QaKBFRSBNYW6a6FNkC6sU5QiFiITAonsoZkMrlppTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5549.namprd11.prod.outlook.com (2603:10b6:5:388::7) by
 DM4PR11MB6190.namprd11.prod.outlook.com (2603:10b6:8:ad::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.33; Thu, 8 Jun 2023 08:14:53 +0000
Received: from DM4PR11MB5549.namprd11.prod.outlook.com
 ([fe80::2168:21bf:526a:8caf]) by DM4PR11MB5549.namprd11.prod.outlook.com
 ([fe80::2168:21bf:526a:8caf%4]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 08:14:53 +0000
From: "Wang, Zhi A" <zhi.a.wang@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Zhi Wang
 <zhi.wang.linux@gmail.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKclyBGaS5DSS5DSEVDS1BBVENIOiB3YXJuaW5nIGZv?=
 =?utf-8?B?ciBkcm0vaTkxNS9ndnQ6IHJlbW92ZSB1bnVzZWQgdmFyaWFibGUgZ21hX2Jv?=
 =?utf-8?Q?ttom_in_command_parser_(rev2)?=
Thread-Index: AQHZlXQpWr8YB8+llkq2+hZrVJlYDq98SxoAgARMI7A=
Date: Thu, 8 Jun 2023 08:14:53 +0000
Message-ID: <DM4PR11MB554984018E367E6291C67DD7CA50A@DM4PR11MB5549.namprd11.prod.outlook.com>
References: <20230531020411.18987-1-zhi.a.wang@intel.com>
 <168555222135.17615.4107362582795659089@emeril.freedesktop.org>
 <87h6rpdcfx.fsf@intel.com> <87wn0iase9.fsf@intel.com>
In-Reply-To: <87wn0iase9.fsf@intel.com>
Accept-Language: en-FI, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5549:EE_|DM4PR11MB6190:EE_
x-ms-office365-filtering-correlation-id: 574945c8-dea3-4e14-db6c-08db67f87017
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hy1Y76b8uUghC0NKrbZPv0oozL5guHY55ryzHiY+0+QERqsN3HXijZencNSN+4lpArc3YaGu82MN23imBOVXgXIN6ZdlJJTY9TCU3S/IDr+syZyVGlsAEyjc4a0h1Jr9FSX1NJAqciLyvGN3K3A7WOhgj+5IjjOSYU3RcOkpcgMzB2bq4EzlFtYnN/WajSSC0k4OAqPOhdN5qXYGBpU7vBzQQGXnkPlvlN07Gxw4YN52RAN8SbupZQ61a+8JFG6iRyObsEwSEjitcHJWSHvFnclvxH/cOJE0C7aY/sBWVQ2oaZSdA8gHk13zXV7RE17wRctK7CapzUUJLJj7jIO/fBVzIW4i02196E9yaBbODrZfK90fmxNzOFQrbCaXktEaF1cCxLOdPthY4n6P0owNDBtVhlNm9NvB43f1wiYccTsuXo91bkzY27loGYmhBJHVEsLMrURRvf9KfECHAs51dJhajR40dtbAbRWSegltAt6sKYhxDR1r9g1zU5bK+oowWTYfteHM8upgLDual7EoG31iMbwgwPa/V2tZcP6TQ8xDekAe2ZEStGBH4GuO0T8U
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5549.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(396003)(366004)(136003)(346002)(451199021)(83380400001)(2906002)(86362001)(33656002)(82960400001)(122000001)(38100700002)(966005)(52536014)(316002)(7696005)(41300700001)(5660300002)(38070700005)(8936002)(478600001)(110136005)(55016003)(66446008)(66556008)(66476007)(71200400001)(64756008)(76116006)(4326008)(6506007)(53546011)(9686003)(66946007)(26005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SnJpaUcxQTBjaHhSblFpRTFUdkxxU3dQdHAveVdrNmpuRS9WZHV6cWY0T3Zx?=
 =?utf-8?B?bnVRUkRNd0drTG9WRGVPem9QQkp5d05TSHo1TFJJSmc4cW4rRlhwRm9wM1ly?=
 =?utf-8?B?akxtK0EwVkhHZDdhU0pUYXFMWXBUNlJnS052K1N0VENiUVlLeDc4M3U2Z0Zn?=
 =?utf-8?B?K09DWXhnN0FJRUxKU3RCNkhOTzJRSkNmbFdkd2swcHZQUkpLLy9MSW5lcU9L?=
 =?utf-8?B?Nm8xNDBiMVJvcXlwM1hIMU9xdERMeEZjOFlJaGErNW9ncTFxMXRrVm1KanlQ?=
 =?utf-8?B?VXBuRlBmUk1FM3FOQ09CelhUcnVmdnlmNC9PckdST2JUQlM4cFVzMncwS1JW?=
 =?utf-8?B?TzhhUWZWcFFlcmZwR21lb21UNE50OEx6d0xCRDdZTzd6aWJnMjA1UTZDcVVw?=
 =?utf-8?B?ajlwYVR1S3lud2xPanpsZXlMbHZOOWxwM1VZZE1XMW1DeDMwc2pka1RRUUxC?=
 =?utf-8?B?RjdnUHlJUWptdkpiNjJkMG4ycWhxZmthYko5YTkvRnFBQ0dDbzhZRForRkRs?=
 =?utf-8?B?M25jaFFubEV2SzZnOHlzRlpIcHFjN1pIVmV3cUZiQlJ5aGg2RjhPTTRlNTNj?=
 =?utf-8?B?STZLUTIxdm80bys0VGg4WG5uTjNKekg2SVVOdjhJaWlFMlpjY1R1aTk1S1R1?=
 =?utf-8?B?ZVJSMmk4VDRDWk03cnZSaXoxNWFYeHk2amFGMU5pZU1yNHFncEU1L0VENTNP?=
 =?utf-8?B?Y1pleS96OWhhS3FkNjhoNDlsWjUvZkkyZVRJYjdsd0hhMEV2bk9sSUJadGtN?=
 =?utf-8?B?T0dlSjVscTFmNGt1WEVuWVVOL3ZNdnkvWGwwVnhTSUxsbCtMaElWRTNWckdH?=
 =?utf-8?B?QjZMNmxJRnF2azI4MUJXeDR4cElqTUd0V1YrejZRdG1FYVRuWDFncHpybmdB?=
 =?utf-8?B?YitsSzJ6czhBTVJkWFhDajQ1ei9FY0JkQldIS3l1N1ZndG1lQ0tLbjRUOS9D?=
 =?utf-8?B?SVk0KzdaWDZqMHNVK0RIb3ZZaDEyM0sxWi9acGdDa2dFWjc1bGJMRTVZR2hW?=
 =?utf-8?B?SzhlQmMwbk9IemFDQUE4TFFwU21kT3dDcXpqbE5YckczZkFjMVl0MC9RSVND?=
 =?utf-8?B?amVMbEtJZXRQbjByMUNrZ0tuMi9VMi9GQU8yWlJFU0VUSHJzMUF0MkxJbC9l?=
 =?utf-8?B?eVc1VXUwdm9zL0tIS1d1UE5lRWJLU2MxZGg3UUJPcWdJTGVzUS9wU1lKTE1B?=
 =?utf-8?B?TlF4ZnN2THo3ZmNLelhOS2dzOHEwQ1hTTDlpb201UUJnTjBxYjN1ZzVTSWdQ?=
 =?utf-8?B?dGxZNkRIU2hpeVNXeENISzdBWFdHTUhlYlRyOFVNNUV4UHFBSHdhR3VyVjdm?=
 =?utf-8?B?UEJCWndVQmFjVE5CdVJoTzZ5WUJBa0lKZ2tSSHllYjhlcERuWjBLOWVHRzNL?=
 =?utf-8?B?M1Q5K2JIaHdyZ2ZHL043SG5jdlk1MXVyQWlsakQvZ1B5WmlCcG0yNGRseThr?=
 =?utf-8?B?OEFrWE9KcHF0eGhXRkl3c2t1S3E0MjFHSXdnWnBUaDVpZlRjRU9ud0syVmxM?=
 =?utf-8?B?clNXK0JlaytLVFgyTlFOM3JhT3FwajhvSjhWSzFyb1IyRDZKR0FmWHJ2L0VO?=
 =?utf-8?B?OVZqTnFxMDFDK2YvcXNxTVp4Rms4bkduUC9xSzk1dnp5a21rbDRWeXlCM29P?=
 =?utf-8?B?d012MzN5OVRpTkFtSjV4anowT1hENENTcnV6dVpmSUpQNDk0UjFWdjU5d3c1?=
 =?utf-8?B?dUxPdklhek1ERjRBMGI1Z29BRFVQb00zTU9MSVBXS2pnK0hIVFpESnIxaFdv?=
 =?utf-8?B?VkoxZG9IanhsSE54NG01SEVpblRJQy9BMnVDZlNKbE5GYUlUK0thQk8zZUtY?=
 =?utf-8?B?NjI3MzhBeUl6K3VlWEZzRjlEbUw5T0hxZm96dSszU1BRSHhWN1N6ZWRHMmZF?=
 =?utf-8?B?Z1JkOXAxY0dXTlMxUjVIbXpGOFJjaFFocENtOTJKbDRFek1lTzk0bkVzNDAw?=
 =?utf-8?B?Y3c2ekRNNDVTajFtV3kza215c215TFRqTzg1R3gvNnR0cDhUV2hkb0pTVDFM?=
 =?utf-8?B?Y0pFaE9mZ2R5UUduNmFEazZrUjZHRFNTaENBY0RkR1BOd0h0Q1Zkc3VuZVd1?=
 =?utf-8?B?a05uTHR6U2drcm9hM3pZR2paL3k2YThBUXR2b01obGszZm04T0JRWGZMdVVY?=
 =?utf-8?Q?EycP/NIMD7cTj1tNiGzI/M+ym?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5549.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 574945c8-dea3-4e14-db6c-08db67f87017
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 08:14:53.3085 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yt3MhdH4zJvtPUw1c9cfjTxMMAgUKNjWXk/TNKJdUiMc7G12VnYiLvX6QMp92V+iPvj6F/sxz96/ip2TY5wUAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6190
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_remove_unused_variable_gma=5Fbottom_in_comm?=
 =?utf-8?q?and_parser_=28rev2=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSmFuaToNCg0KUGxlYXNlIHRha2UgdGhlIDx6aGkuYS53YW5nQGludGVsLmNvbT4gYXMgbXkg
Uy1PLUIgc2luY2UgdGhpcyBpcyBhIHBhdGNoIGFib3V0IEdWVC1nLiBJIHN0aWxsIGRvbid0IGtu
b3cgd2h5IG15IGludGVsIGVtYWlsIHNtdHAgZG9lc24ndCB3b3JrLg0KDQpUaGFua3MsDQpaaGku
DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEphbmkgTmlrdWxh
DQpTZW50OiBNb25kYXksIEp1bmUgNSwgMjAyMyAxMDozNiBQTQ0KVG86IFpoaSBXYW5nIDx6aGku
d2FuZy5saW51eEBnbWFpbC5jb20+DQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIOKclyBGaS5DSS5DSEVDS1BBVENIOiB3YXJuaW5n
IGZvciBkcm0vaTkxNS9ndnQ6IHJlbW92ZSB1bnVzZWQgdmFyaWFibGUgZ21hX2JvdHRvbSBpbiBj
b21tYW5kIHBhcnNlciAocmV2MikNCg0KT24gRnJpLCAwMiBKdW4gMjAyMywgSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6DQo+IE9uIFdlZCwgMzEgTWF5IDIw
MjMsIFBhdGNod29yayA8cGF0Y2h3b3JrQGVtZXJpbC5mcmVlZGVza3RvcC5vcmc+IHdyb3RlOg0K
Pj4gPT0gU2VyaWVzIERldGFpbHMgPT0NCj4+DQo+PiBTZXJpZXM6IGRybS9pOTE1L2d2dDogcmVt
b3ZlIHVudXNlZCB2YXJpYWJsZSBnbWFfYm90dG9tIGluIGNvbW1hbmQgcGFyc2VyIChyZXYyKQ0K
Pj4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzExODUx
Mi8NCj4+IFN0YXRlIDogd2FybmluZw0KPj4NCj4+ID09IFN1bW1hcnkgPT0NCj4+DQo+PiBFcnJv
cjogZGltIGNoZWNrcGF0Y2ggZmFpbGVkDQo+PiBjNjg3OGFiMDFiZTkgZHJtL2k5MTUvZ3Z0OiBy
ZW1vdmUgdW51c2VkIHZhcmlhYmxlIGdtYV9ib3R0b20gaW4gDQo+PiBjb21tYW5kIHBhcnNlcg0K
Pj4gLTo2MzogV0FSTklORzpGUk9NX1NJR05fT0ZGX01JU01BVENIOiBGcm9tOi9TaWduZWQtb2Zm
LWJ5OiBlbWFpbCBhZGRyZXNzIG1pc21hdGNoOiAnRnJvbTogWmhpIFdhbmcgPHpoaS53YW5nLmxp
bnV4QGdtYWlsLmNvbT4nICE9ICdTaWduZWQtb2ZmLWJ5OiBaaGkgV2FuZyA8emhpLmEud2FuZ0Bp
bnRlbC5jb20+Jw0KPg0KPiBJIGNhbiBmaXggdGhpcyB3aGlsZSBhcHBseWluZywgYnV0IHBsZWFz
ZSBpbmRpY2F0ZSB3aGV0aGVyIHlvdSANCj4gaW50ZW5kZWQgdG8gaGF2ZSBGcm9tOiBaaGkgV2Fu
ZyA8emhpLmEud2FuZ0BpbnRlbC5jb20+IG9yIA0KPiBTaWduZWQtb2ZmLWJ5OiBaaGkgV2FuZyA8
emhpLndhbmcubGludXhAZ21haWwuY29tPi4NCg0KUGluZy4gSSBjYW4ndCBhcHBseSB0aGlzIHdp
dGggdGhpcyB3YXJuaW5nLCBhbmQgSSBjYW4ndCBmaXggU2lnbmVkLW9mZi1ieSB1bmxlc3MgeW91
IHRlbGwgbWUgd2hhdCB0byBkby4NCg0KDQpCUiwNCkphbmkuDQoNCg0KLS0NCkphbmkgTmlrdWxh
LCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXINCg==
