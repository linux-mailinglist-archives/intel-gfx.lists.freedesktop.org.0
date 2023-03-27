Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D93516CA201
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 13:04:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7427E10E0F3;
	Mon, 27 Mar 2023 11:04:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29BDD10E087
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 11:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679915051; x=1711451051;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8STzsWHjGUf4EUZMWtTL7FMBV20mvb/oTOUut/pFpdM=;
 b=iex391Dl3gNjZPu31DtQU9rXeJE+CsOLH+9wV06fJaral5a8jHgK8wLu
 Yqk8IIwX5nqmHrYDhna6VE3dH8PrYLb74aWXpvO5vhudDxSnSZKrwpbyS
 HHqm8LgS2SvuZQ53S9I3Flxm4JKrapTVR7mx6dfl7S3OYTs2nmLTDjsgm
 tniscOTObNAXjA7S45bxk6dQkzEQu1xrJel4ObIpUu9u9rL9HGK5ng95a
 wxxXp08Rd44WSmB0v4S71VAUUiNs6Ym7+N8i4Gmwo/fbHouxHnZiRdT4N
 kbqsqq2lhNZGwYSFNh8egAIdcRjEMwJxGgJ/fji5xuujklTaSuU7LZ9k0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="320636038"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="320636038"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 04:04:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="857612854"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="857612854"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 27 Mar 2023 04:04:10 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 04:04:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 04:04:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 04:04:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CnWAg/+5Jx8FqmjUsyiCyJnPyBKZNRe4gBfLwRhxFGHQCf/M/5QYAc7m7Hg7LIU+7OkBVqtd1ZefM6NAtaWAqCaR1gmfltsBnahE+qhuW2Wc9IxtK/lGQjlYjM2BPjH+vxHj3kofLIK2ODP3gBZB5TPZqDpr3F1Mygqi2JfTI+tkcRbpTiOHUYPayc/eit9M8g/0mGzLEHGSabbZ4dEt7CmDZ/2gI6HKaWiCY5P0IpD1Z33TjO4R7lN7V1ula6bs8IJbkyK4dN74nXzLuTotDGeyf7GrDJbe9E2lNPVQnclJ4L44Pa9y8iPUf77D7wRr0hlRUoarbS+8HhdPubluCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8STzsWHjGUf4EUZMWtTL7FMBV20mvb/oTOUut/pFpdM=;
 b=DWFUzMq2TuXlf8xcDE4fa70+yNHozusLsAUpPOU04FI6GyxXxVWjD3Eq2k0cI3Req6eywHVIsPHoiqrWXjIUWYSdd+6nGc3HQ60k9S9drIg3vgCIm3nUAYYO0T052rLpO3JQYXrLZKU6i9KP99ewfJDTfFsI5izGXLSH/ImERfWbjeuLeu54q0gpCVMsbVbCOyZyf+7dmHUSw+hMPzNmZQ4c27thrcFTXUh9+modfmG83OCRPSpsLmvEmJjphk1/YvcWrPW43PLM15pF4SC1lzwG1juTxaiMc85kZdS17lMP9UdHTtvsdGCes79jOm4WA+bLK91Cra54wIp39kaPvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by MN2PR11MB4710.namprd11.prod.outlook.com (2603:10b6:208:262::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Mon, 27 Mar
 2023 11:04:07 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%6]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 11:04:07 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 13/29] drm/i915/tc: Add TC PHY hooks to
 connect/disconnect the PHY
Thread-Index: AQHZXZLipXBUuZhHLU6syBzLmNbuGq8OfHTw
Date: Mon, 27 Mar 2023 11:04:06 +0000
Message-ID: <MW4PR11MB7054682B7208A7160C47BB72EF8B9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-14-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-14-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|MN2PR11MB4710:EE_
x-ms-office365-filtering-correlation-id: 57d2912c-e8be-425f-552c-08db2eb2fbd4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kMB2/tv8Xxzh/pLQ9CfArqmfhv9Ji/sdFr3txC834MuR0mxb1dexGoBstABK4+ygcv/W8O2PxbF9ulXfFlUavksHHOqN04uY/iNHtXYIdtNLT9Eeq0t2ynJ4gdX3LE2QPOcY9Y+zkNF+6fj5TFjeLJWfDERplfBdwCePpGE6h44g4xE2wFthBw5BjJPGRsUMcMpbWF88ESR2HJei0PjKdJC7H89NVCzLgXQcFMP6hjX0j8Cumu4ljgp/QT6YwtyOhXBes+y5B/lD6Gtf0/AOUEHaXyh3Jzl60VQI+jD2av37EP/LgiivXVYsTNSPJGI450Ieen6DCmMiKRU5Kn0OoSBABfeC4vYekBKsFJ8NwlgYIUR+vMmgLS9wJQnEku0abbTCMxqbxweqSU3NPuuPhOw04ERhahPyltGMIzESF1UleWilQDs3FjPGEFdKqwd4BbILAW5KVsXwCDUZuTCENENVaAfJbiaFDfTqLfWHuPa4fIo9SE4v/+eSOjAVp5TF0JtSsTsVpqfRw8YATnS7ybFhvws3Te1G04AKSqYTetknkbFo9TBqSb2PaBkvcRCL1TueRwyA1mGEfzHFrknwY3OHMHybl12DYLWOxvRTQ8VVMZQ7KQoT1Z6JImDBJhMN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(346002)(366004)(39860400002)(376002)(451199021)(7696005)(122000001)(38070700005)(8936002)(52536014)(5660300002)(71200400001)(186003)(6506007)(9686003)(53546011)(26005)(55016003)(2906002)(86362001)(33656002)(83380400001)(82960400001)(41300700001)(38100700002)(478600001)(110136005)(76116006)(66946007)(8676002)(66446008)(66476007)(66556008)(64756008)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MVMvT3F2c2ZKKzd4TVVSdXpEU05NQWMra0prV0IwdUJUa282RE1uNWlGU2Nk?=
 =?utf-8?B?YnkzdWdYcjkxS3pLSGt5K2h4UG9lVFZLcGcxcUVwVWdEanBIQkdpZU9rQ0Jj?=
 =?utf-8?B?cWFDOHR6MG1sRFZRMkRKMGJyeFAvVkJ5MmVtSC9uY3YyQTl0SWdBNGZPVmY5?=
 =?utf-8?B?TWJyTXI5aXlLT0NkbWFPN2x1bjhyNDVsRHNJQ2dvTUluWTluVytvdVRLMlNI?=
 =?utf-8?B?UzJwNzg0R3JXSWpTNlZpR0VzZXRDbEIrOG41bEt6T0pJT0lJOEVheUZaWmJF?=
 =?utf-8?B?bGZLL2ZMa1BDdmdFaHNVVVlVcmROR2pHZ0VBYVRieEt5K3NXZ2xTcVZjWkNo?=
 =?utf-8?B?L0t6dm5SdUZ3YXkraldqd1BaYVcrMVcrSkVNNkdrNG1kK3d4U1pLSlJmSzl5?=
 =?utf-8?B?ZEU0bkdncUVnTm0wZ3lzQy9ITnkwdzJ1SVhmY21QaytyQkxsMU05aVE2RTBZ?=
 =?utf-8?B?M2ZZd1hzbDJCWEFiK0s1MTVhcERQTWsvVklSLzVRVHpabFBIK3hJcUpBLzlC?=
 =?utf-8?B?RThMaGdqeTdkSGFJdUlrTmVIb0xxaVk0VlIxVll1S3VGVDNsVmN1NXZqVUNE?=
 =?utf-8?B?NWovTFRqQmNJSlhoUGtYR1hrb0tPOFVzWVlPNkpIbEV4bmxVSElJYXVQU0xx?=
 =?utf-8?B?UEtjaVUyZTZJekpINE5JMmM2R3FSSDdjcnJxdkNQVUpZRzFQQnhHb1VrRVli?=
 =?utf-8?B?U0FmN3pNNzN6cy9zVm1MYzdMN1NYVXdEQ29qZUVaWnFHaG5zb2d4bTFWVU5E?=
 =?utf-8?B?ZndMZkRtN3RaTHlDM2oyTHRDa0VVSWxqWFdkU25KVVhIMkVkUmFwQ3p1c2FY?=
 =?utf-8?B?bEw4dE40L2ErNEl4MHUwaUVmRjhvZjlZRCtaaUdNUUNOT1daYmRHdlgvRGsr?=
 =?utf-8?B?QmxqZXl3WWViQk8wVmE3OTFCTmxldDM5Ky9VMlZEYjd4SXZOQ1hLY1ZDblY4?=
 =?utf-8?B?OWs4c0hXTW1yNzJuQXJ6SWxPQ2VkY0hxNWZmN1hPZkxaRzZWMFZLL0pCaWlv?=
 =?utf-8?B?djEvek5hK0xPOHBTWU0rZm5RaEtJN1Z0K0pDNTNnTXdFcFFwU3hkZmozUXJx?=
 =?utf-8?B?Y1R0Z3lRS2VBZ2FucmRQUGI3K1RETVNzbFhKWkdvQWc3VEtPR0FEVnJSTGRU?=
 =?utf-8?B?RGJHdmhVcGt4TG9PY3VDdGFJVEJRL1F2dWZkODZrU3NucThjSTdSOGEwanVl?=
 =?utf-8?B?NVpuVEJweDF1VURuak16OE1OT0g0Q2JsblBEKzNEVUE1NGdaWURPdWlQNjRh?=
 =?utf-8?B?R25KblhPYUhKdTkzUG1kczhOa2c2cXQrSkYxU1BoSXJKdzM1MU92bURCR1J5?=
 =?utf-8?B?OXNJb0E2c25nWUUwaWhiVGxIVDFRNzM2bHVEUkUwcEtyT28wSnlrTVhzOVlK?=
 =?utf-8?B?MjlNOEgxQXE0bWRqOXRVUEhyU1R4c1dWU0ZFRWkzbFRiVmpYM0YvNW5TN1NQ?=
 =?utf-8?B?QnlkR1BobWs2TVdoTmxROXkvK0xyZVFtMnNjdEk1R1Uvb24vRmc2eHBKV0xZ?=
 =?utf-8?B?cWIzM2gyT2haMG9uNDR0RDFnVk41MHJRMWtLKzFRdmVPM0FlNDl4OUEyV2F3?=
 =?utf-8?B?Y1NEL1A2NzRnYnZKNHQrZGU2RkFJNHN4Nk94Tk9GbWtwWXA2L0RxdVd5dFRB?=
 =?utf-8?B?YmZOSWJhbUtuZFA0N3lIM3ZOWnk0c1B4dXQ4cGZhallMTnFBT3BTT0Z3endU?=
 =?utf-8?B?NEVIU005YUp5bHQ3YUhxNVV5K3ZYZitxQVRGQnNxeWFOdk4yK3FqMWNMVXFW?=
 =?utf-8?B?S21laHZuN25CM1FjNGNKZXdXTVNVMGswb09TVlRwNVBwTlFZdS9XVGpxWm1G?=
 =?utf-8?B?UTQwNm5JbmxDYXdsRndMM3E0OFVTczk1T3dib252WXJPK3pGclE4U2txRUd0?=
 =?utf-8?B?bDAxanpsV3pUOG1uY2tNZEpCNVZaczh6NEJEWG81U21HV284UEE4bjh4eTZ5?=
 =?utf-8?B?S20vWDVQeUU4d0kwTE0vYTRpMXlTRW9ZeW10WjRONkdGZmllN1gzcU8wbGVK?=
 =?utf-8?B?eEp4Tkp4QTMxSERqek9vMjNMYmV3bGhxTGVLT01BOTd2ZTFaK3dsQkNrMFZM?=
 =?utf-8?B?aGZpVXR3a0dBQ3JyQmtJdFpCTWVLdFc0MGQ4OXQ2SG1LR2g0TnFrcTRnc1FE?=
 =?utf-8?Q?UA/Ddx4+Xtb1O9TZmtru3NNB2?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57d2912c-e8be-425f-552c-08db2eb2fbd4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 11:04:06.6642 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2yN4ezCQj80HD/3/2xlfjeDY31+iup6aE5+bt9fLjOG4YLe4kuVH+C75BzR3T5nAgleQNC/P6pCgGMggmFsWqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4710
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 13/29] drm/i915/tc: Add TC PHY hooks to
 connect/disconnect the PHY
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MTMvMjldIGRybS9pOTE1L3RjOiBBZGQgVEMgUEhZIGhvb2tzIHRvDQo+IGNvbm5lY3QvZGlzY29u
bmVjdCB0aGUgUEhZDQo+IA0KPiBBZGQgVEMgUEhZIGhvb2tzIHRvIGNvbm5lY3QvZGlzY29ubmVj
dCB0aGUgUEhZLiBBIGZvbGxvdy11cCBwYXRjaCB3aWxsIGFkZA0KPiB0aGUgQURMUCBzcGVjaWZp
YyBob29rcyBmb3IgdGhlc2UuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eu
a2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVh
a0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90Yy5jIHwgMTIgKysrKysrKysrLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdGMuYw0KPiBpbmRleCBlZTRkYjlkMGViOTc4Li5lNjNlOWM1N2U1NjI3IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IEBAIC0yOSw2ICsyOSw4
IEBAIHN0cnVjdCBpbnRlbF90Y19waHlfb3BzIHsNCj4gIAlib29sICgqaXNfcmVhZHkpKHN0cnVj
dCBpbnRlbF90Y19wb3J0ICp0Yyk7DQo+ICAJYm9vbCAoKmlzX293bmVkKShzdHJ1Y3QgaW50ZWxf
dGNfcG9ydCAqdGMpOw0KPiAgCXZvaWQgKCpnZXRfaHdfc3RhdGUpKHN0cnVjdCBpbnRlbF90Y19w
b3J0ICp0Yyk7DQo+ICsJYm9vbCAoKmNvbm5lY3QpKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0Yywg
aW50IHJlcXVpcmVkX2xhbmVzKTsNCj4gKwl2b2lkICgqZGlzY29ubmVjdCkoc3RydWN0IGludGVs
X3RjX3BvcnQgKnRjKTsNCj4gIH07DQo+IA0KPiAgc3RydWN0IGludGVsX3RjX3BvcnQgew0KPiBA
QCAtNTIzLDYgKzUyNSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfdGNfcGh5X29wcyBp
Y2xfdGNfcGh5X29wcyA9IHsNCj4gIAkuaXNfcmVhZHkgPSBpY2xfdGNfcGh5X2lzX3JlYWR5LA0K
PiAgCS5pc19vd25lZCA9IGljbF90Y19waHlfaXNfb3duZWQsDQo+ICAJLmdldF9od19zdGF0ZSA9
IGljbF90Y19waHlfZ2V0X2h3X3N0YXRlLA0KPiArCS5jb25uZWN0ID0gaWNsX3RjX3BoeV9jb25u
ZWN0LA0KPiArCS5kaXNjb25uZWN0ID0gaWNsX3RjX3BoeV9kaXNjb25uZWN0LA0KPiAgfTsNCj4g
DQo+ICAvKioNCj4gQEAgLTYwNSw2ICs2MDksOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVs
X3RjX3BoeV9vcHMgYWRscF90Y19waHlfb3BzID0gew0KPiAgCS5pc19yZWFkeSA9IGFkbHBfdGNf
cGh5X2lzX3JlYWR5LA0KPiAgCS5pc19vd25lZCA9IGFkbHBfdGNfcGh5X2lzX293bmVkLA0KPiAg
CS5nZXRfaHdfc3RhdGUgPSBpY2xfdGNfcGh5X2dldF9od19zdGF0ZSwNCj4gKwkuY29ubmVjdCA9
IGljbF90Y19waHlfY29ubmVjdCwNCj4gKwkuZGlzY29ubmVjdCA9IGljbF90Y19waHlfZGlzY29u
bmVjdCwNCj4gIH07DQo+IA0KPiAgLyoqDQo+IEBAIC04MjQsMTAgKzgzMCwxMCBAQCBzdGF0aWMg
dm9pZCB0Y19waHlfY29ubmVjdChzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMsDQo+IGludCByZXF1
aXJlZF9sYW5lcykNCj4gDQo+ICAJdGMtPm1vZGUgPSB0Y19waHlfZ2V0X3RhcmdldF9tb2RlKHRj
KTsNCj4gDQo+IC0JY29ubmVjdGVkID0gaWNsX3RjX3BoeV9jb25uZWN0KHRjLCByZXF1aXJlZF9s
YW5lcyk7DQo+ICsJY29ubmVjdGVkID0gdGMtPnBoeV9vcHMtPmNvbm5lY3QodGMsIHJlcXVpcmVk
X2xhbmVzKTsNCj4gIAlpZiAoIWNvbm5lY3RlZCAmJiB0Yy0+bW9kZSAhPSBkZWZhdWx0X3RjX21v
ZGUodGMpKSB7DQo+ICAJCXRjLT5tb2RlID0gZGVmYXVsdF90Y19tb2RlKHRjKTsNCj4gLQkJY29u
bmVjdGVkID0gaWNsX3RjX3BoeV9jb25uZWN0KHRjLCByZXF1aXJlZF9sYW5lcyk7DQo+ICsJCWNv
bm5lY3RlZCA9IHRjLT5waHlfb3BzLT5jb25uZWN0KHRjLCByZXF1aXJlZF9sYW5lcyk7DQo+ICAJ
fQ0KPiANCj4gIAlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAhY29ubmVjdGVkKTsNCj4gQEAgLTgz
Niw3ICs4NDIsNyBAQCBzdGF0aWMgdm9pZCB0Y19waHlfY29ubmVjdChzdHJ1Y3QgaW50ZWxfdGNf
cG9ydCAqdGMsIGludA0KPiByZXF1aXJlZF9sYW5lcykgIHN0YXRpYyB2b2lkIHRjX3BoeV9kaXNj
b25uZWN0KHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YykgIHsNCj4gIAlpZiAodGMtPm1vZGUgIT0g
VENfUE9SVF9ESVNDT05ORUNURUQpIHsNCj4gLQkJaWNsX3RjX3BoeV9kaXNjb25uZWN0KHRjKTsN
Cj4gKwkJdGMtPnBoeV9vcHMtPmRpc2Nvbm5lY3QodGMpOw0KPiAgCQl0Yy0+bW9kZSA9IFRDX1BP
UlRfRElTQ09OTkVDVEVEOw0KPiAgCX0NCj4gIH0NCj4gLS0NCj4gMi4zNy4xDQoNCg==
