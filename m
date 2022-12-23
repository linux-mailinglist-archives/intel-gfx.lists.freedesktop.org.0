Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B23654E18
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 10:07:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE59C10E635;
	Fri, 23 Dec 2022 09:07:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E83B910E633
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 09:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671786442; x=1703322442;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FVn7xuj9Q5EJg8ligmnOxHzTe/kaMj3fT8R3A0xHtbM=;
 b=JgFRe4xnmwWbrbedDk+ITdFNBS0QfJr5jr+lgfjOInbNxQWVyDwRGPlE
 odMSkwwz90HhVQkcEkCR/Y7znIieKbA339P0BnfKv73fNOCZf322pn4v8
 pytse/c3XFT7ywmM6wAAjFp82HZTvYJ0eRtsAk/ICiqx82pPanzJ5L6jp
 p7J5Ck2XyJYmoI39+yTdyQOoichmKEOnU3ZeSKHf2WQfW4g8xBfTSdCla
 cxSJT1UtsacJKO84z0jTKBLfe2iDjIn1Mu6fjY7LaOoJoH1PhBV/tXYAV
 z5iVnMWpXLGyUnF93zh8n/2buduT0htYGQhVTKo+Mq0WDnBJQHlyPnNjf A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="382559754"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="382559754"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 01:07:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="759303213"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="759303213"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 23 Dec 2022 01:07:20 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 01:07:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 23 Dec 2022 01:07:20 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 23 Dec 2022 01:07:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q0pbyJ7umuoe/O9AzwB9DTT/XOAS37FnXkZJV1OII8Y7K18kHxunTEA8dcCOLbaajdhJCgAgJZvkplOv7lbPiMuuLzKl8dq6BxPRZYtYmH+uQrpd4nrHnN+G0JYCnl5PJteYp4BrYIV/2ckLCWYGiQs6RqmGBZcVlTNCMQVjy4f+jL4skINwNqO17Ho3Im80AKGxn+BS5aeEUgUk1qeB3zxO+I947q8nlOejz+rQv0h9th/g5HpVt/xN5ARCpr9EKsOAcJHmHfqZ0SDbTF/s6TF1D0y/Wazzk+BUFXS/I1o/tNgXly1hZUSv4yjbngZtsI4YREwF/U6x/FVN1DASAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FVn7xuj9Q5EJg8ligmnOxHzTe/kaMj3fT8R3A0xHtbM=;
 b=DkpPOmr7fN6oUo7rMop2I2FTVtZCqxRpPa0t5VzoGyvSIQefnpmNhAtJduHQc+R1Dd73utJi6wApc2l4y+odJAwQg3cGII5VWxobH34zySECiz3WHr+jXF0R8AdUzDmOPwotaoYcm9aJ7Shbwue4h6rfdTzia9nQDk6/7cabDnWxBEysV+wxLN3IuZndyQOeVLvpIG2AAs9whqA1pAuzazL+7uODjcsJmRRCPIlTkkefu1mJhqyMnecqhFQ34HsKVDcleAxkXbGnaQDINB8ifjL8rPjrA6jstVtwkPop7Zihw+TlOAZRbQA4XlAVbQ40n0qDyui1tNNv7eQIQuz/yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Fri, 23 Dec
 2022 09:07:17 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::5467:4b10:48ca:ca77]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::5467:4b10:48ca:ca77%7]) with mapi id 15.20.5944.012; Fri, 23 Dec 2022
 09:07:17 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v4 6/7] drm/i915/mtl: Add function to send
 command to GSC CS
Thread-Index: AQHZFdD3lhnY8B8b90Kr9dfGVOYoNK57JkOAgAACtkA=
Date: Fri, 23 Dec 2022 09:07:17 +0000
Message-ID: <MWHPR11MB1741AA9388D6A5B361FF04DDE3E99@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20221222064355.3642557-1-suraj.kandpal@intel.com>
 <20221222064355.3642557-7-suraj.kandpal@intel.com>
 <fa4976cf50583d02f458ae124dc6ee2c793b6293.camel@intel.com>
In-Reply-To: <fa4976cf50583d02f458ae124dc6ee2c793b6293.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|DS0PR11MB8161:EE_
x-ms-office365-filtering-correlation-id: 2e2d63b3-d97b-487b-a062-08dae4c51726
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 07ON0NR0jDt3jaQnczBkqO2DDaFQc+xRdSF5JHVbC9Gb5n+FEmQKynnE2IEEC0+D3S9hn/6VX7xLj+X2n2D0WLPgf2bdg9YUPWh7wRJnHlwq5g2P1oY7zgn5LNtEE3yxEYvoMKuhIiOl10ks03OIm3BsHE0rJTf57iNpHg12oQis3wb3bQguJlkNdkBlS+nonR5jHvWFkIzrqxtg1WrMmV7mekjQEzN1rE2dCh02PQxHNQLpyy2tMn+nCDSj784vnv6b6Il/kFquIGWOU7tngPRGSMqDJ96O83mjiijuThLAb0h1k8D+MUkVaNwNTUrbEqn2KnRxeQIRADYPWPEEJR6mzO1eKVx/rDAfxHguEaUyAsq183C5PqGWDGoqlT/u99mHkW/v9f9Rt7HAirRm96SuoFI1ImthsEORRW/wRAEaSSIm/t7PHcuB5HK9W0/1Hwwt1zmFEevqcMVYNDyTKr5I6/o9ykmPfAzp7Zt9clVQIwBNmfpXCh99svlPAW61MAEoNMMv4R+itDuBgTHW3xGQ0g9fNmeQPzWuTQkhrgj1SMB7dvwb2MWGw+lusYlemnJidnyg8RdPdVmLHZZ3I8MwhlA3wXHnHWj9MJdFQBG+kjH/0JQQbKbR3q1Zl46+xWQ6FO92xZ/KbPDHjjF+W1mEA7NfOVLU9uWCERtwQ1qmUq1dIcPtpnwflyJQbTqB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(366004)(376002)(396003)(39860400002)(451199015)(2906002)(82960400001)(55016003)(122000001)(4001150100001)(38100700002)(478600001)(110136005)(316002)(8936002)(5660300002)(66446008)(76116006)(86362001)(66476007)(66946007)(66556008)(52536014)(8676002)(4326008)(64756008)(83380400001)(71200400001)(26005)(38070700005)(107886003)(6506007)(9686003)(41300700001)(33656002)(7696005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SURpNk50RUtkNFNvZ3lpMGdNR3JZdnJuaGpxOURSV25wZk5zWHZFMHpKd2Zq?=
 =?utf-8?B?QStDWGt3R1pRRXlPSVFaRzZ4RTNZVDVLUThzc3FnYTFYZGkxc3ZVT21YQWRQ?=
 =?utf-8?B?dGJ5UWVkK3IrSEUyQno0NEZHbGZqbXB1eVplYnZhNVlyRFRhUnFPMGV3bkto?=
 =?utf-8?B?aURDSjVjTHpJRFVpaVZKdVowMjVtUlRDMSt6TldBbFJSa0hhTTQ1SkxtTHlo?=
 =?utf-8?B?WkZuZmZ2bUhRNzBPL0dIeld1cTRHdmtobnhlZWlGN2I1RTdTWW5EeGN2MnhC?=
 =?utf-8?B?NlRlaDFJbXNGM3pjbjl2QzNPWXMrZWo4eW9mR3gzbENZZDFIMC9XWXJXdU1S?=
 =?utf-8?B?eUViSDVkQ3VoUkxRRTdXU0JDeTBxZEJhNkpIcjE2Z1l2aVhUaFU2MUlVUjlm?=
 =?utf-8?B?dUFWSmRmRXFpdmoxUWdTQTlQOFVhcXIwdXFrK0JxdFdtc3dyK3d5RUdiempJ?=
 =?utf-8?B?Zy9XeVp1Y1V2VmFVdktnRm9Nb29mWkh0K2ZFNHpEaVNPVVNDY0FkMENjUWd4?=
 =?utf-8?B?clVUUDR0OWNWS1ZkU1VydEFVYVMvamRYTWdUUGw3Q29US3FaNkJkYnRYOWZ5?=
 =?utf-8?B?bXhEeDJ2VXkvbXhXaTM0M2VRTVhQU0hidWNUaHZXWlBEa0x5U0xBUDVWYTVK?=
 =?utf-8?B?NlVJZ0kxWjVZZGl1N0RCM0o4ZWJYVUZjMndaMHZNNmNkOWhsbjJHM2dSbUZ6?=
 =?utf-8?B?dVJtbmE4UkdwblhHenlJRE5UbVBFQWJ6TlFyd1Z5MnlUc3AvWDdWNFpYZGpW?=
 =?utf-8?B?YzZDMjliRG84VUpBenJ4QjdQb1EwV0ZKZFZMeGFjelVUUHZIR3FJdmlFY2VH?=
 =?utf-8?B?bkdUS05VNVJPQ20yZFJlN2VDZnpPazR3Qk56eFBCeDl0WFQ0dUJ4Q0lIc29h?=
 =?utf-8?B?QmhoZEFJVWh0V3ZZZnowK3M3Z2dIOVlCSjRZTU5mZTZ3b1dDZWF0TzFwbFp1?=
 =?utf-8?B?RjB1OEZqRlJrYjZGMW1TYUR5MVdUamZCU0JPOUlEV3dOTHBSZCttTGhjVzJL?=
 =?utf-8?B?azBzcjAyYkx5cVVUcmFremhLejRueWpERHBOZXIxdmZqZktNLzM4QUREK3FO?=
 =?utf-8?B?ZW5kd3Q2N01yL0d0a3VPaWhGN1R5YlZJeVhyMzlWN2VBdUJFOS9HRE1nc3k0?=
 =?utf-8?B?TzU3dnhkRkJCVS9UY0VNaVZrQWlwS3RLUWtSWXIrRnUvc3RYOG56RmxGUHox?=
 =?utf-8?B?UmVMMzIzak1sSVE5TmpNWitoZ1BBNTkxdDNNSGxtTW4yNmFuSFg4VmFXTzJT?=
 =?utf-8?B?YjM0emdxaTlGdzNZaWJxaHg4cDJzeWc0bjJjK1VKVmN2ai9LeWFJbGg1THZC?=
 =?utf-8?B?b0lBa3RIRndPZXR5Z3VXcmxFVjdEOUtnc2t3UDhjZUJGOGUrMjJjdnR3ajk1?=
 =?utf-8?B?S3FCeWd2Wk84OVZrN1dYemRsdGFQQkRQQ3RhTElQdGYrOWF5YzhNN2tENUtC?=
 =?utf-8?B?UGttV2tEc1U3NkhqUWtXRWF4SGprSFFxenpNZ1VycncvYmRlTDFnaHFPZlB4?=
 =?utf-8?B?UFRrRUlsbEo4dDZySEwvdFdyQzE5UnNHUmQrZ1ovdmVEVGtFK0x2cFBLY05w?=
 =?utf-8?B?OER4a3MycFBHVHZEUU5BRERYWGdIL1RWYkFsWDFoa0tyTzRyS1k0NzFkWlRk?=
 =?utf-8?B?Tkp5Z0tmU2ZoTXpaM2F6NVhzR0l3WlFORCtRRzN2bDVpc1dLaTBzMTVtdERL?=
 =?utf-8?B?dHErZkF5aG5LT2thRmZRc1FVcW5vNE1mOWlQci9jSDBMV0p4UlRGbGlSaXMx?=
 =?utf-8?B?cktqR0lzSHpOeDhaU2RNeU9QRzZUeUNIQ1IwaldGaEVxa3JRQnZ2ZlhZZnN3?=
 =?utf-8?B?UUh1NjVpMUlKUXB3QTc3SmVYQnJTVFFMVE51K1BjTVBIWnovOVFxd1I3Qm1v?=
 =?utf-8?B?WHZtZy9zdU9zQlNtYWFZK3VvRVU1YVNPMFFOMG9DbzNFRENCMitjeVlrVUtM?=
 =?utf-8?B?bUNaNlJDT3RrVWZ5VjRqWkQxOXFHTGU0bFBSL1NWVXhDSmhyK2JpNVY5RXR1?=
 =?utf-8?B?Z3l4U3NUZGtvbndaZXBXMGVhT01ZVXRGQi9uU1RuNzZiSWxXUHgzTlZNalRn?=
 =?utf-8?B?bmozeStxY0pCTHV4dHd3NjdXM3d3a2VhL202d3c0ak5LVkxlQVBnK1QvZDVM?=
 =?utf-8?Q?sG89Hh8CzOaZ2wOOiaMzwENTv?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e2d63b3-d97b-487b-a062-08dae4c51726
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2022 09:07:17.3819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NphQY2J7OhFGJOZoDmSqeF3P04pVMdFnvwb/LvdzCXDfk/B9MAtm3T4Ahks+vKPtv30ugfuCwaiS2u2vAA71fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8161
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 6/7] drm/i915/mtl: Add function to send
 command to GSC CS
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiANCj4gTW9zdCBvZiBpdCBsb29rcyBnb29kIC0gYnV0IEkgaGF2ZSB0d28gaXNzdWVzOg0KPiAx
LiAgSSBiZWxpZXZlIHRoZXJlIGFyZSBzb21lIHJldXNlIGVmZmljaWVuY3kgZ2FwcyBkZXBlbmRp
bmcgb24gdGhlIGZyZXF1ZW5jeSBvZg0KPiB0aGVzZSBoZGNwLWdzYyBtZXNzYWdlcy4uLiBidXQg
aXQgbWlnaHQgbm90IGJlIGFuIGlzc3VlIGRlcGVuZGluZyBvbiB0aGUNCj4gYW5zd2VycyB0byB0
aGUgcXVlc3Rpb25zIGkgaGF2ZSBiZWxvdy4NCj4gMi4gIE1pc3NpbmcgdGhlIHNlc3Npb24tY2xl
YW51cCByZXF1ZXN0DQo+IA0KPiAuLi5hbGFuDQo+IA0KPiANCj4gT24gVGh1LCAyMDIyLTEyLTIy
IGF0IDEyOjEzICswNTMwLCBTdXJhaiBLYW5kcGFsIHdyb3RlOg0KPiA+DQo+IEFsYW46W3NuaXBd
DQo+ID4gKy8qVGhpcyBmdW5jdGlvbiBoZWxwcyBhbGxvY2F0ZSBtZW1vcnkgZm9yIHRoZSBjb21t
YW5kIHRoYXQgd2Ugd2lsbA0KPiA+ICtzZW5kIHRvIGdzYyBjcyAqLyBzdGF0aWMgaW50IGludGVs
X2luaXRpYWxpemVfaGRjcF9nc2NfbWVzc2FnZShzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwNCj4gPiArCQkJCQkgICAgIHN0cnVjdCBpbnRlbF9oZGNwX2dzY19tZXNzYWdlDQo+ICpo
ZGNwX21lc3NhZ2UpIHsNCj4gPiArCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBpOTE1LT5tZWRpYV9n
dDsNCj4gPiArCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBOVUxMOw0KPiA+ICsJ
c3RydWN0IGk5MTVfdm1hICp2bWEgPSBOVUxMOw0KPiA+ICsJdm9pZCAqY21kOw0KPiA+ICsJaW50
IGVycjsNCj4gPiArDQo+ID4gKwloZGNwX21lc3NhZ2UtPm9iaiA9IE5VTEw7DQo+ID4gKwloZGNw
X21lc3NhZ2UtPmhkY3BfY21kID0gTlVMTDsNCj4gPiArCWhkY3BfbWVzc2FnZS0+dm1hID0gTlVM
TDsNCj4gQWxhbjogaXMgdGhpcyB1bm5lY2Vzc2FyeT8gY2FsbGVyIGlzIHVzaW5nIGt6YWxsb2Mg
Zm9yIHRoaXMgc3RydWN0dXJlLg0KDQpTbyBJIG1pbWlja2VkIERhbmllbGUgbWVzc2FnZSBpbml0
aWFsaXphdGlvbiBmdW5jdGlvbiB0aGF0IGhlIGhhZCBtYWRlIGZvciBweHAgdGVlIHN0cmVhbWlu
Zw0KQW5kIGl0IHNlZW1lZCBsaWtlIGFuIGVzc2VudGlhbCBzdGVwIGFsdGhvdWdoIEkgZG9u4oCZ
dCBzZWUgYW55IHJpc2sgaW4gcmVtb3ZpbmcgdGhlbQ0KDQo+IA0KPiA+ICsJLyogYWxsb2NhdGUg
b2JqZWN0IG9mIG9uZSBwYWdlIGZvciBIRENQIGNvbW1hbmQgbWVtb3J5IGFuZCBzdG9yZSBpdA0K
PiAqLw0KPiA+ICsJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1lbShndC0+aTkxNSwg
UEFHRV9TSVpFKTsNCj4gPiArDQo+ID4gKwlpZiAoSVNfRVJSKG9iaikpIHsNCj4gPiArCQlkcm1f
ZXJyKCZndC0+aTkxNS0+ZHJtLCAiRmFpbGVkIHRvIGFsbG9jYXRlIEhEQ1Agc3RyZWFtaW5nDQo+
ID4gK2NvbW1hbmQhXG4iKTsNCj4gQWxhbjogbml0OiAnaTkxNScgaW5zdGVhZCBvZiAnZ3QtPmk5
MTUnIEFsc28gYXBwbGllcyBmb3Igb3RoZXIgY2FzZXMgaW4gdGhpcyBmdW5jdGlvbi4NCj4gDQoN
Ck9oaCBJIG1pc3NlZCB0aGF0IHNvbWVob3cgd2lsbCBnZXQgaXQgZml4ZWQNCg0KPiANCj4gQWxh
bjpbc25pcF0NCj4gDQo+ID4gKwltZW1zZXQoY21kLCAwLCBvYmotPmJhc2Uuc2l6ZSk7DQo+IA0K
PiBBbGFuOiBxdWVzdGlvbjogaG93IG9mdGVuIGlzIHRoaXMgaGRjcCBtZXNzYWdlIGJlaW5nIGNy
ZWF0ZWQsIHBpbm5lZCxjbGVhcmVkDQo+IGFuZCB1c2VkIHRvIHNlbmQgbWVzc2FnZT8NCj4gSXMg
dGhpcyB2ZXJ5IGluZnJlcXVlbnQgLSBzdWNoIGFzIG9ubHkgZHVyaW5nIGluaXRpYWwgcG9ydCBj
b25uZWN0aW9uIGVzdGFibGlzaG1lbnQNCj4gb3IgaWYgaW4gdW5saWtlbHkgY2FzZXMgb2YgZHAv
aGRtaSBsaW5rLWRpc3J1cHRpb24uLg0KPiBPciBpcyBpbnRlbF9oZGNwX2NoZWNrX3dvcmsgc29t
ZXRoaW5nIHRoYXQgaGFzIHRvIGV4ZXJjaXNlIHRoZXNlIGdzYyBtZXNzYWdlcw0KPiBmcmVxdWVu
dGx5IChzdWNoIGFzIGV2ZXJ5IGZldyBzZWNvbmRzKT8NCg0KSXQgaXMgbW9yZSBmcmVxdWVudCBz
byBkdXJpbmcgdGhlIGxpbmsgZXN0YWJpbGlzaG1lbnQgYW5kIHRoZW4gZXZlcnkgZmV3IHNlY29u
ZHMNClRvIGNoZWNrIGlmIGxpbmsgaW4gd29ya2luZyByaWdodCB0aHJvdWdoIGNoZWNrIHdvcmsg
YnV0IHNhdmluZyBtZXNzYWdlIGluIGhkY3ANCkluIGludGVsIGhkY3AgZG9lcyBub3Qgc2VlbSBy
aWdodCBhcyBtZXNzYWdlIHRoYXQgbmVlZCB0byBiZSBzZW50IHZhcnkgaW4gc2l6ZS4NCixjcmVh
dGlvbiBwaW5uaW5nIGFuZCBjbGVhcmFuY2UgbWFrZXMgaXQgc2ltcGxlciBhbmQgY2xlYW5lci4N
Cg0KDQo+IEkgYW0ganVzdCB3b25kZXJpbmcgaWYgaXRzIHRoZSBsYXR0ZXIsIHdoZXRoZXIgaXRz
IG1vcmUgZWZmaWNpZW50IHRvIGluaXRpYWxpemUgYW5kDQo+IHN0b3JlIHRoZSBoZGNwX21lc3Nh
Z2Ugc3RydWN0dXJlIGludG8gaW50ZWxfaGRjcCBpZiBoZGNwIG9uIGNvbm5lY3RvciBpcw0KPiBl
bmFibGVkIGFuZCBmcmVlZCAoaW50ZWxfZnJlZV9oZGNwX2dzY19tZXNzYWdlKSBvbmx5IGF0IHBv
cnQgZGlzYWJsaW5nIHRpbWU/DQo+IEFsc28sIGluIGFueSBjYXNlLCB3b3VsZCB0aGUgZW50aXJl
IG9iamVjdCBuZWVkIHRvIGJlIG1lbXNldD8gKEknbSB3b25kZXJpbmcgaWYNCj4gd2Ugb25seSBu
ZWVkIHRvIG1lbXNldCB0aGUgbXRsLWdzYy1oZWFkZXIgYW5kIGxlYXZlIHRoZSByZXN0IHNpbmNl
IGdzYyBoZGNwDQo+IHNlcnZpY2UgaXMgYWJsZSB0byBkZXRlcm1pbmUgdGhlIHJhbmdlIG9mIHZh
bGlkIGJ5dGVzIGJhc2VkIG9uIHRoZSBoZGNwIGNvbW1hbmQNCj4gYW5kIHRodXMgd2UgZG9uJ3Qg
bmVlZCB0byBtZW1zZXQgdGhlIGVudGlyZSBvYmplY3QpDQo+IA0KPiBBbGFuOltzbmlwXQ0KPiAN
Cg0KbWVtc2V0dGluZyBvZiB0aGUgZW50aXJlIG9iamVjdCB3b3VsZCBiZSByZXF1aXJlZCBhcyB0
aGUgcmFuZ2Ugb2YgdmFsaWQgYnl0ZXMgY2FuIGNoYW5nZSBkZXBlbmRpbmcgb24NClZhcmlvdXMg
dXNlIGNhc2VzIG9uZSBleGFtcGxlIHdvdWxkIGJlIGlmIEttIGlzIGFscmVhZHkgc3RvcmVkIGlu
IGZ3IG9yIG5vdCB0aGlzIGtlZXBzIGl0DQptb3JlIGNsZWFuZXIgYW5kIGxlc3MgcHJvbmUgdG8g
ZXJyb3INCj4gDQo+IA0KPiA+ICtzdGF0aWMgaW50IGludGVsX2dzY19zZW5kX3N5bmMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ID4gKwkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfZ3Nj
X210bF9oZWFkZXIgKmhlYWRlciwgdTY0IGFkZHIsDQo+ID4gKwkJCSAgICAgICBzaXplX3QgbXNn
X291dF9sZW4pDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBpOTE1LT5tZWRp
YV9ndDsNCj4gPiArCWludCByZXQ7DQo+ID4gKw0KPiA+ICsJaGVhZGVyLT5mbGFncyA9IDA7DQo+
IEFsYW46IHF1ZXN0aW9uOiBTaG91bGQgdGhpcyBiZSBwcmVzZXJ2aW5nIHRoZSBzZXNzaW9uLWNs
ZWFudXAgYml0PyAoSW0gbm90DQo+IGZhbWlsaWFyIHdpdGggdGhlIHNlc3Npb24tY2xlYW51cCBz
dGVwcykuDQo+IA0KDQpOZWl0aGVyIGFtIEkgYnV0IGZyb20gbXkgZGlzY3Vzc2lvbnMgd2l0aCBE
YW5pZWxlIG9mZmxpbmUgd2l0aA0KDQo+IEFsYW46W3NuaXBdDQo+IA0KPiA+ICtzc2l6ZV90IGlu
dGVsX2hkY3BfZ3NjX21zZ19zZW5kKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1OCAq
bXNnX2luLA0KPiA+ICsJCQkJc2l6ZV90IG1zZ19pbl9sZW4sIHU4ICptc2dfb3V0LCBzaXplX3QN
Cj4gbXNnX291dF9sZW4pIHsNCj4gDQo+IEFsYW46W3NuaXBdDQo+IA0KPiA+ICsJaGVhZGVyID0g
aGRjcF9tZXNzYWdlLT5oZGNwX2NtZDsNCj4gPiArCWFkZHIgPSBpOTE1X2dndHRfb2Zmc2V0KGhk
Y3BfbWVzc2FnZS0+dm1hKTsNCj4gPiArDQo+ID4gKwltZW1zZXQoaGVhZGVyLCAwLCBzaXplb2Yo
KmhlYWRlcikpOw0KPiANCj4gQWxhbjogbml0OiBpbnRlbF9pbml0aWFsaXplX2hkY3BfZ3NjX21l
c3NhZ2UgaXMgYWxyZWFkeSBtZW0tc2V0dGluZyAoYXQgbGVhc3QgdGhlDQo+IGhlYWRlcikNClRo
aXMgZG9lcyBzZWVtIHRvIGJlIHJlZHVuZGFudCBjb2RlLg0KDQo+IA0KPiBBbGFuOltzbmlwXQ0K
PiANCj4gPiArCS8qIHdlIHVzZSB0aGUgc2FtZSBtZW0gZm9yIHRoZSByZXBseSwgc28gaGVhZGVy
IGlzIGluIHRoZSBzYW1lIGxvYyAqLw0KPiA+ICsJcmVwbHlfc2l6ZSA9IGhlYWRlci0+bWVzc2Fn
ZV9zaXplIC0gc2l6ZW9mKCpoZWFkZXIpOw0KPiA+ICsJaWYgKHJlcGx5X3NpemUgPiBtc2dfb3V0
X2xlbikgew0KPiA+ICsJCWRybV93YXJuKCZpOTE1LT5kcm0sICJjYWxsZXIgd2l0aCBpbnN1ZmZp
Y2llbnQgSERDUCByZXBseSBzaXplDQo+ICV1ICglZClcbiIsDQo+ID4gKwkJCSByZXBseV9zaXpl
LCAodTMyKW1zZ19vdXRfbGVuKTsNCj4gPiArCQlyZXBseV9zaXplID0gbXNnX291dF9sZW47DQo+
ID4gKwl9IGVsc2UgaWYgKHJlcGx5X3NpemUgIT0gbXNnX291dF9sZW4pIHsNCj4gPiArCQlkcm1f
ZGJnX2ttcygmaTkxNS0+ZHJtLCAiY2FsbGVyIHVuZXhwZWN0ZWQgSENEUCByZXBseSBzaXplDQo+
ICV1ICglZClcbiIsDQo+ID4gKwkJCSAgICByZXBseV9zaXplLCAodTMyKW1zZ19vdXRfbGVuKTsN
Cj4gPiArCX0NCj4gPiArDQo+ID4gKwltZW1jcHkobXNnX291dCwgaGRjcF9tZXNzYWdlLT5oZGNw
X2NtZCArIHNpemVvZigqaGVhZGVyKSwNCj4gPiArbXNnX291dF9sZW4pOw0KPiA+ICsNCj4gPiAr
ZXJyOg0KPiA+ICsJaW50ZWxfZnJlZV9oZGNwX2dzY19tZXNzYWdlKGhkY3BfbWVzc2FnZSk7DQo+
IEFsYW46IEkgYmVsaWV2ZSB5b3UgaGFkIG5vdCBzZW50IHRoZSBzZXNzaW9uLWNsZWFudXAgKHdp
dGggemVybyBwYXlsb2FkKSByZXF1ZXN0DQo+IGJlZm9yZSBiZWZvcmUgZnJlZWluZyB0aGUgb2Jq
ZWN0cyBhbmQgZGlzY2FyZGluZyB0aGUgaG9zdC1zZXNzaW9uLWlkIHRoYXQgd2FzDQo+IHVzZWQu
IEknbSBub3Qgc3VyZSBpZiB0aGUgR1NDIGZpcm13YXJlIG5lZWRzIHRvIGNsZWFyIHJlc291cmNl
cyBmb3IgdGhlIGhkY3ANCj4gc2VydmljZXMuLi4gaWYgc28sIHdlIHNob3VsZCBlaXRoZXIgY2Fs
bCB0aGUgc2Vzc2lvbi1jbGVhbnVwIGluc2lkZQ0KPiBpbnRlbF9mcmVlX2hkY3BfZ3NjX21lc3Nh
Z2UuDQoNCkZyb20gbXkgZGlzY3Vzc2lvbiB3aXRoIERhbmllbGUgb2ZmbGluZSB3aGlsZSBJIHBy
ZXBhcmVkIHRoaXMgcGF0Y2ggZm9yIGludGVybmFsIEkgd2FzIHRvbGQgc2Vzc2lvbg0KQ2xlYW51
cCBuZWVkIG5vdCBiZSBkb25lIGJ5IGhkY3AgaGVuY2UgcHJlc2VydmF0aW9uIG9mIHNlc3Npb24g
Yml0IHRvbyAgaXMgbm90IG5lY2Vzc2FyeQ0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KPiAN
Cj4gQWxhbjpbc25pcF0NCg==
