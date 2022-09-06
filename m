Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AADA5AE3F7
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 11:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCB1E10E5FF;
	Tue,  6 Sep 2022 09:16:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0173410E5FF
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 09:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662455774; x=1693991774;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UkvVkg84Pby4vHUhUAHC2w1P2AJ+i018z0sKlAD9WXk=;
 b=H6fIlB+tB0PTc5JqPkMj6dl8GPG6WwbF9SFMsvFpyUZVAAEV8miEHupx
 cnWXEhoKMgqxmVIaXYzL4e0tC1260u0Ndc0rjnV13GwxpeqVog4/2TO1L
 5PE2fPdMfnEAhUd+Zt32QNLtXKho4s3I9YcL/LgQ28R8WjmUdtbNM2UB0
 Zy7fdAahb0WFXfOx5Rx1NrU5buObx0hu2m9wgFpORdyvsqft6+Ok6bRCQ
 x8+rUTNSGiyWY5SDSId7933sLU09hLS9n4NRju2ov+NwU6LWJ5dLr0h9q
 twLlJNZu8+c/IGjZMXrwhUZxjQbDYXpTLwPATn9rTEZksnGRDQ027Tcsq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="283541408"
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="283541408"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 02:16:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="789617487"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 06 Sep 2022 02:16:13 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 02:16:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 02:16:13 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 02:16:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n9VOCpfwY/rHKmee44hYUKhuOYhQrviNazkupKspYaVRJRAnht2Ei41/SnnWt5Sty7zQC/pqiojqNuj7anl2lP2sMweoE8Jv6wVarDRJl3GrTtNpooQZFcpUaWqrtqPdlsizOUrq3nt/+SAhb7cdpNPMdhT8Kft38+lXzTfAv5Msg8NG9m/PqsWE0gds0T6jwknGt/0S2C4AZHDF6+e0w86RH4PlZx9x1iFOyOgk7pb/FZsYOUOpySsuQ+by5+VTdb9kBGfywMm62S90O9TDtLpTr/g385o4QG1AAiELbdJ9SMplY015+Tb9yUVpTm3rc+uusuSif/bKFpc1h5nXjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UkvVkg84Pby4vHUhUAHC2w1P2AJ+i018z0sKlAD9WXk=;
 b=nx+MOQ5ylpeVT4km5KQTzTglOMTcS4b5YpjINGY85t5fMHQbOQPYZ0Si807euKWnqvhyvAbFimkhMj3DuoyE5QhOPggVhApGWTyod/Xukjpine7TxKxfyuWj4hTMAR0dRk1If1xA4vGFPbCyF368a46iB3HJch1JWHAFB9yg7Z1vBnZ9pu8U//MpU5uRBp/qpQtxyaG1qc7yYnf46n92TdJ6GluTbTwrhwjD/qe//QXH7sig2v+y4VuiN3AvcbnKijrF24x2Qyb7SeMo9j4C3+nzrFgsmnITbjvA3aO9OU1N/5wxoNh+Bo6c2YNOWAfD0YWcZScm5vAUDFvsyNFQEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 (2603:10b6:301:51::10) by CO1PR11MB4785.namprd11.prod.outlook.com
 (2603:10b6:303:6f::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Tue, 6 Sep
 2022 09:16:11 +0000
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::549e:abb2:40dc:6591]) by MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::549e:abb2:40dc:6591%9]) with mapi id 15.20.5588.015; Tue, 6 Sep 2022
 09:16:11 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915/psr: Disable PSR2 when SDP is sent on prior
 line
Thread-Index: AQHYwRG1FoLWjRscq0+HvJv0rekXn63SIF7g
Date: Tue, 6 Sep 2022 09:16:11 +0000
Message-ID: <MWHPR1101MB21571CA3E928BCC7C9973125EF7E9@MWHPR1101MB2157.namprd11.prod.outlook.com>
References: <20220905102355.176622-1-jouni.hogander@intel.com>
 <20220905102355.176622-3-jouni.hogander@intel.com>
In-Reply-To: <20220905102355.176622-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 57420bd9-2c75-4661-fbab-08da8fe870aa
x-ms-traffictypediagnostic: CO1PR11MB4785:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F1+dCj+mTu2PUlFpxlQM4el/9m8E5zW1WIirXirhrfZIogUVixF/EE3V3wkvjyENPEz8E1cx/GnfcMBH0Zc2W5+36FovOZ5UyQAbiAnoMfyKjBX4oljUYHa3Y4H4mWhCwtSsizVto8XlLCs5lpqv/ZsYxmRFnk2bk/G9QFtMSjYxOJLc2Il6o0KSpGpeJSMEBC3CUeZPmi441V+2Y2kBWFdd/FAFM3UffVM1ZyvuKTFF/7olah6n/JUPvQQr6jKfszPSrLUyvbgR5uOf0Df8A/epjDoogpk1AndVr2UNwmXrlA1lF02XeLDW/5G5058G1ewgbn05Bx0nO0nuUeeoVvFlInBT2m2/iiAX8aagxUDWoXPg0o06MVSeUcoWd+D36WGJn+atUnBocsvCxlP7kSKWc8mokq3vZa8XS/1YgbGyuuB+rqSXhdZroAEOYc72g65wh48i2KYx9ORXT4cxVEyA7KYKMyJFm0rkKe/1Fg3tJBh3sM73D5KQyYzK5FXb1ncVke61EeMqAD4yPR4la0DZ0IJAJ4Fe3MpzJf7Ww+10YzFAAdwr871HbmK2BQJZKuEjnOwLe4KdECFy2R0Hoe+LOnYdf5dTNLkmKVvwsZzubFBl0UfsapxH+Iiwp2rDolFFYB/VB8VZVF2TxmUxtQHPxukcvYkp04lJKKohlqIXi+ZZd/GnU8sfSYQCDMMGq2rgHg1szwwFnyERfldYeam4P/NnjknaB8yUzZ1VAClxQEMPA6aZN9PATyNe9H5upzB0HWANdOR+BOSRwnXIxA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1101MB2157.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(136003)(39860400002)(346002)(366004)(376002)(66446008)(86362001)(64756008)(33656002)(66556008)(76116006)(8676002)(4326008)(66476007)(66946007)(122000001)(38100700002)(38070700005)(82960400001)(41300700001)(83380400001)(9686003)(66574015)(53546011)(7696005)(6506007)(107886003)(26005)(478600001)(71200400001)(55016003)(110136005)(2906002)(316002)(186003)(8936002)(5660300002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bnYwUFZLR2RlL0tPejBsT2ZPQlIvdk1iYnNib3ZLRjEwakFUek5sTHBNbjNw?=
 =?utf-8?B?WUNoZTU3dnYxbVFFaE81cWlsOEl3Y1NBTGI0OEtvMTI0a0E5NVdwRG9abXBU?=
 =?utf-8?B?TS9adEZPZnM5c2xxVW9Ob3ArRmx6c2FKVHZkV0xKdythQnlWcXZRM3NwWi9U?=
 =?utf-8?B?RFlwMlZGTktTS2xHNE5mYmtMWWdqTnZYb21obU1FaEpDdkw1MlRQdzFXRzcw?=
 =?utf-8?B?MlE4MDFTblorZnVkTU03eStMeU9BSGV6VFJLeUIxUlVqNlljMkh0TkRVY2VO?=
 =?utf-8?B?c1dkZWdVQzlJeERNQW5acGZoRUhJYk1OZHRQWDZRSVFxMm10TDVIcEdkWllh?=
 =?utf-8?B?dzNoZ29KVkZQWURUWjlVRHZlOUljMG42eVYyUmlSMXlsMU1hNFhWSys0dXJz?=
 =?utf-8?B?YzhvUHJoNzByWWMvSVVSNHRIbllEUVRaOVdBZitNNFAycGllYWN0UFZFdlNM?=
 =?utf-8?B?OGtOOUlkaCtWNjRTWk1mNHdjcnBrMllhbGZEQ0E4Y2RadDFMVERqbmNucUxh?=
 =?utf-8?B?NW81M3VoTjhyTFZ3OThJeDIvRFVzWlRKVyswWWNwOTc0dGRrSVpUbnV0NktS?=
 =?utf-8?B?RW1ENWh3WWNBbkNnYUlWenNzRDZ1L1ByNXMrV3Y2L2JaSmxMZFIyVjZFT3Vi?=
 =?utf-8?B?SkxOb3l2TXA0WnFNU2w3RHl1Vm5LTHdTL2VocWxtM2t3RUI4MkdUY0plQ0Jo?=
 =?utf-8?B?ejErZEloejNtYnpJaWRXKytJSFl5S3VlWTU4Y3hlaUtIMDJRVWtsS09VUkN2?=
 =?utf-8?B?d0plTWlkNkdEdkkrcXR0eG9JamxwQ2U2Mk5IN3FVODlNL0JaSWxMekpMeEZ5?=
 =?utf-8?B?Nlk4RHZaSENhOHdkbWxxemJZbkFyQ0FLbW9OYXlROWx3SDdBMlFFWlM1R0h5?=
 =?utf-8?B?UWNvTzBLUEcwUkdENU9ObmV1alNuWFdEZS9OR0pJcmVWZ2hTU0JoV0RDOHBR?=
 =?utf-8?B?anVnMlpMcFJBSkNQTjVSKy9xZDZNenUra083SkJacE5ITG1QekorYm1UaWE3?=
 =?utf-8?B?b1FCTENUVTNBc2tvVzhxeGdRdkpvU3B5SlkzQVJ4MWZrQmdMMXp3UjFEMUpT?=
 =?utf-8?B?UzQvcWZzcXhsbklOU1lOMmZZcmQ2dXlKTTUxQy90UmxkQXdZWGVTRGhib1hw?=
 =?utf-8?B?SjNWa2loZ2FPeDhYTTBVZDA3ZWhtTTUwZ0hNR0UwaWprVUNkL3BRYWpaZ1hx?=
 =?utf-8?B?c2svQU90cTFpRWRwNjlYMUFUZUlZMUFTYmFJc0lZSm5JS2NUeUY5WUhya0Ix?=
 =?utf-8?B?bXNPdk1TVlJ5bFZzbGQ2MXZZMXFsVys1SGVWUUtFYVdEdW9Ka3lHM3Z5YjJa?=
 =?utf-8?B?cWU2aDdOeHEyS2xaa001cnJyeDl6YkNTcEJUNmZRQTF2aG1waDVudi9XeVN3?=
 =?utf-8?B?a2RHZ1dzM04zMUduZXR3eXNUai96VkZTMnloQkxRUTVOMVpwMDMzbDlrRHh4?=
 =?utf-8?B?SFMrVVFUcEQrYnRqVE5UeGQwOXRvK2FwRm9iNkJncjBzQk5zUGROUUFKUHFN?=
 =?utf-8?B?bWU3UnBwN0JPVGxEa3lBNkovMkVaYnprN2g1MHB1SmZxU0UyZ3ArMDh0WlZZ?=
 =?utf-8?B?cEd2azdvQzJSdW5sNmlhM3A0Uy81OGYrWUxWZm1Yai9kYTlDaVdMR3hWTXJB?=
 =?utf-8?B?dWhPMW0xK3ZMazJzSHpTT3hvYmZjU2locGgzOE9CV216NnVNLzN6Y1g1d1Fz?=
 =?utf-8?B?K2liWUxWeUdyVWJ1M2RvVW1YMnZMNk11OEc0WnpPWUwxdG9zYTJwaVlKYmZC?=
 =?utf-8?B?SjNoVTZiV291bVUzNnFUTzhIUHJpd0l6dHF5eGRORGdwNkxlalRQZEpkek53?=
 =?utf-8?B?VzBnZzE2VUJOdjl1clpmYXNVZm04cUNBVGFid3FnVUptSzN4SFRXUzVHaU5t?=
 =?utf-8?B?OHMvRDZJOGVaQVYyeUhwNHpGdkF6TlJaN2JsMDU1RDgrWlRrZXRXUlp1bmhs?=
 =?utf-8?B?aHVRWTVsK2pRNjVTcTFTR1RzSC9ZemVxUlk0RmNETUptbGJIcXZhd2s0Mklq?=
 =?utf-8?B?eThMa1ZnN3NTRzlQd0FkMFhlcm1BVk95VlR1bE12YU1JVG1CVXpRZ3JlcE9L?=
 =?utf-8?B?R0VJNmNLMHkyUWVUYzI0L3lJTE03a0VsSGdvQXJuSHlFNlp3Nzk0dURGWDhF?=
 =?utf-8?Q?O26/OP4OJ/L+FkoBMOebNt1Yz?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1101MB2157.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57420bd9-2c75-4661-fbab-08da8fe870aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2022 09:16:11.1628 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OrJMGYpzD+nxmkOsR1tsov7+zeOe0Nnu68cz3A63GQq4HLNrUtPu6z9KT/ZyXAkbRX4BVcPRoaqzlkf/0wNSxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4785
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/psr: Disable PSR2 when SDP is
 sent on prior line
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBTZXB0ZW1iZXIgNSwgMjAy
MiAxOjI0IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBI
b2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgU291emEsIEpvc2UgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMi8yXSBkcm0vaTkxNS9wc3I6IERpc2FibGUgUFNSMiB3
aGVuIFNEUCBpcyBzZW50IG9uIHByaW9yIGxpbmUNCj4gDQo+IFNlbGVjdGl2ZSB1cGRhdGUgZG9l
c24ndCB3b3JrIGlmIFNVIHN0YXJ0IGFkZHJlc3MgaXMgMCBhbmQgc3RhcnQvZW5kIFNEUCBpcw0K
PiBjb25maWd1cmVkIHRvIGJlIHNlbnQgcHJpb3IgdG8gU1Ugc3RhcnQvZW5kIGxpbmVzLiBQU1Iy
IGhhcyB0byBiZSBkaXNhYmxlZCBpbiB0aGlzDQo+IGNhc2UgZm9yIEFsZGVyIExha2UuDQo+IA0K
PiBIU0RFUzogMjIwMTIyNzkxMTMNCj4gDQo+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPg0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+DQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29t
Pg0KDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMgfCAzICsrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
IGluZGV4IDZmMDNiZjE2ZDZmNC4uOTBkN2NkZDc0M2JlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTgxMSw3ICs4MTEsOCBAQCBzdGF0aWMg
Ym9vbA0KPiBfY29tcHV0ZV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZV9pbmRpY2F0aW9uKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZA0KPiAgCWlmICgoaGJsYW5rX25zIC0gcmVxX25zKSA+IDEwMCkN
Cj4gIAkJcmV0dXJuIHRydWU7DQo+IA0KPiAtCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAx
MyB8fCBpbnRlbF9kcC0+ZWRwX2RwY2RbMF0gPA0KPiBEUF9FRFBfMTRiKQ0KPiArCS8qIE5vdCBz
dXBwb3J0ZWQgPDEzIC8gV2FfMjIwMTIyNzkxMTM6YWRsLXAgKi8NCj4gKwlpZiAoRElTUExBWV9W
RVIoZGV2X3ByaXYpIDw9IDEzIHx8IGludGVsX2RwLT5lZHBfZHBjZFswXSA8DQo+IERQX0VEUF8x
NGIpDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gDQo+ICAJY3J0Y19zdGF0ZS0+cmVxX3BzcjJfc2Rw
X3ByaW9yX3NjYW5saW5lID0gdHJ1ZTsNCj4gLS0NCj4gMi4zNC4xDQoNCg==
