Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E9E62D725
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 10:38:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF5F310E5D6;
	Thu, 17 Nov 2022 09:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B4C510E5D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 09:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668677900; x=1700213900;
 h=from:to:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=8SsnMAvZRNtBeJTOkUF9MKx0EOxLES4K+Tyi1o5qiFs=;
 b=CPCoM5qHXWSyL8fm/WEGY/JuQrs3gYPggbn9ODS46pAhOuc6B5qUKflD
 sMsB76LAzNrt8fuLlZxqbCPEHXmsV94VhRJStekG2HIG5f8WMThH9vzwC
 MTZpJnRStcFAG8SJ2J7mddp/FvC0mjl8cQkmKuREetBkU+fiXWkgSy9Bk
 qhKo8Vp//IuQMhCa0pirHnkKNkMSPLezHHYKkkLSn+F3na6mOycCIZJB3
 xzYh8ntrbBysLklCobzeKgKNXNh36stuB8bQA+EGSREAm3LR1BDPwT3G9
 BQiahayzk7Kob7KOczNwg8blJJ1SSRrLVrB7h+Ln1z38z41y4g0gNdRNA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="311511299"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="311511299"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 01:38:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="670860444"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="670860444"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 17 Nov 2022 01:38:19 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 01:38:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 01:38:19 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 01:38:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gz1bIBMEtnSGIlKvQ7CX7xFt1eEePlX7b9em3TBLbCY+fD98yuG15Smv/Vp8FVykcohgj6jxcOfRvn4oQOmwzFhBa4lLnLrG1G9mNun2AHeSNnb2QasFs63jUX1cSiyxAcZsHPlT4sfpJ3K0yfSLP6OvMGNgqqi4ja/3PwKwLhbvRShvWzJ1HUFFtthhqB3ZRrwMQHiUHFJW1uPgqIh2abB/+Mw3RvoPAnqb5XNyGVHtvmkdPHumyz+8dN0e/D7OLdaOGV++3X5X5bIix2nthHobe+qwzeIeFN3iseRhC7U5rd0Qk0bDoEvyxboPgNdXbHuSaAT3Bl+SIwXQDXUbsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8SsnMAvZRNtBeJTOkUF9MKx0EOxLES4K+Tyi1o5qiFs=;
 b=ObSOi7hUXR08p7GUVenAKpiaEDlVfi7hfCa8U1uZFUq+ffG4+IP9pXjee7h9CGcn88oZ3ip0vANXl0REfxVJJm1d269106yFSvQyruWasyeilgLPSVMzYfAbToBq0ZcS60wMtFlPlmQ5bibybatuK+TOrMfqTtE4qbVhGffdBVLrtqRhOjAcwIk8YHhnzQ3jNKfSYt4lBUo5//4Cd43DrTH5L0MDE+slv64QM70mLqn6MJd0XAktw/66lbkg/x/R3emlHkXC+s+FgG2eaibM/XsCPmutsvZbD0loeDmcGunkTJ7fZUyOr4VJ5dxFVzSHIfAltXJ0YsvqhuSFmGFrPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by SN7PR11MB7043.namprd11.prod.outlook.com (2603:10b6:806:29a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 09:38:17 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::a348:c554:f45d:2e75]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::a348:c554:f45d:2e75%7]) with mapi id 15.20.5813.020; Thu, 17 Nov 2022
 09:38:17 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [CI] PR for MTL DMC v2.10
Thread-Index: AQHY+mhSOCxaer0sHEShc+G4wThUMA==
Date: Thu, 17 Nov 2022 09:38:17 +0000
Message-ID: <30f711c4e0ad2dd4dbdfe8640bdaa07972603fae.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1 (3.46.1-1.fc37) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5169:EE_|SN7PR11MB7043:EE_
x-ms-office365-filtering-correlation-id: 969e2a5d-2a96-465b-5353-08dac87f7510
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9OboBA1WVL4EShWwory1Jfu+2+uGYn+M9/L57fOALI8TdpWd22TCIiP3679c9X+WitYLIBOit+RsXz8ccOPUjODQfj4E+CY4slLiYDwliPXLfvrKpGKIP2hP/H7hxzbUVTk9jwAEOJkaUezhjBkOc8uUdI9ESaQZcvNjaYWpGqP+ReeIJ7BduqVD6ZQvIx0l3uU0T2bkWM+kkdgpmn6bqmKik+vOVIrwO0Gk91M+8WYwPkGKe6eLwQiiHXB1hTndfD/OO/UVQ5OnEsPwJMTpzXlRde0J0L0iRtatWw0/hGTl3tG5akRUcwuZGmKt6gQQ0jxFt2+PkRjzoBJUWWiPExocP1tNys/2UMtnGcFziy17P+pJvyJqaSHChrLlutKLWgnyzjzrjY9tI55quKIXcCXXioMZtihF1TK733X+wxR/JI6rtr6bF4KR15GvfERHK43anr7h4f78uOwD79zzqbV97C/4RgSahiQMbGD8iONowAiaCFQI3nA5hEdOTGG2sB65Vz9uR3nHSR73hg99e1EhPYyO9j01VL35OzFWUqtG/dfKrZwgxFZiWNYVVbiky6V6EDi2/S/eAC/nnMgw9PqkFRMOXRI4stuThOAQjVtAuLXK+OXjqo4fRRhISplH1DgJeq3q1E6XZoQnBS2KLjYeuFrPR32Uj/2o06691ROmSmMsRe3kHXmXsiIpP7Fy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(376002)(136003)(396003)(366004)(451199015)(122000001)(83380400001)(86362001)(82960400001)(38100700002)(38070700005)(4001150100001)(8936002)(4744005)(2906002)(66946007)(66556008)(66476007)(66446008)(64756008)(8676002)(41300700001)(5660300002)(76116006)(6512007)(6506007)(71200400001)(26005)(2616005)(186003)(6916009)(316002)(91956017)(478600001)(6486002)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bUY5dGpYQmZpbW5nTkF3MnErZEFCOTIweUZYUmNtbjdWdUFENWo3d2dyYytU?=
 =?utf-8?B?Yk55dS8vQW05YmYrRGhZbGdTakRYQVZnMWRmM3FlRVoyZUc0KzkrTGlSc1BU?=
 =?utf-8?B?T0RsTDF2VE1jRDBCUVFEZzlWY3FHeHhEU2dDSlJTWTd0UDBMQ2RublBQakdR?=
 =?utf-8?B?RUxXYzl3Y0M3dXpmL2dEaVhGdS9xRkpkNkxwSGR6T0dtTHVzc0VQQXlpbStP?=
 =?utf-8?B?SjgxdklrZXIvOEs4VnV3aHdwR28ycHpLMXordklSL2tOVlpvZWhGOXp1WDVl?=
 =?utf-8?B?cVgwTnNGaWU1L2p5RmVJQ0tFTUZYZnIwQmtOR3RKUmtOU1dzZFNQTGVkUWd5?=
 =?utf-8?B?S0FwL2wrQk1RQWVKTlIzb0RqeGNDbytUYWh3dUJ2a0VOb1krMjhLYUU1clVl?=
 =?utf-8?B?bVZ1Z2JUSFRZOCszZ0VHRWluTS93dEI5dkVtcVJFTExtM3YybllsbmxIcEVW?=
 =?utf-8?B?SFQ2Q21DNzhWcUsyeUNiVEdTcGE3U3RQZERyRmZDYWEzTzl1Vmh1SmlmU1dM?=
 =?utf-8?B?Zk9NUy9lSFBuLzhMZklHby9udGk4aUJucXBYNzFmV3B1aEx5elNlYTRTZ2JR?=
 =?utf-8?B?YmVSMjZGa2I2T05GNTZNWlFtQjNFMlN1dkRhRzY3KzdPRlcxYXpxK2ZwUitP?=
 =?utf-8?B?dFVhcGt1M0VyWU82anJyTXVSYTZ5d0ZBWUFrRzRHdUNkVjJXTGx6Ymcvd1ln?=
 =?utf-8?B?dmhOWDltOGZ4QkJ3OTJmSG8yU3hpZ0VjODY5d0hrNHZoVk1YU2piaVpodFJk?=
 =?utf-8?B?d2Jleng4cjdWS1RRVTNZQkU5SHZmSU12bzVFdGRxZmgrbU13UVJOMnhudVlR?=
 =?utf-8?B?N1pnOVdVdVkwRHl5U25FeUtocHNSUmFjWTA2c0l2VnBvN1lRYU5iVldEUUJC?=
 =?utf-8?B?Sm9kbm92dHhMUU1UUUJsS2RVY21yQnRpcm40MExQV0V6OVlGOFl3YXJYOU5o?=
 =?utf-8?B?NW5jSUNIZVpicllDVDkrVHkwMkE2WktuaE01Qm1RRXVuNkpzQTZ5ZTVsUEZ4?=
 =?utf-8?B?WkcyaVZLZ0U3NUtUdXVOVlBUdXFiNGhBVVRLeUVEQTF2Tzh5UUptZUdWWTNO?=
 =?utf-8?B?cHhsT1paZ05UUGxmWmZWSm5kM3RndkVyb0wwZWNQM1JHeXh0cmlJY2pndzdq?=
 =?utf-8?B?NlFFMDlNZm1tWkt4RExGeUtsZWNtVUhxelJOREl2a0JEamxpclFxNU9zVXRS?=
 =?utf-8?B?V1gxYUFVMyt3RXpGM0tqWTZYT0w3WkREeEdiQXVIMGtrU0RUQWl1SGlxdmFs?=
 =?utf-8?B?Yi9JMzRLSWNCRWc5d0lNSm0yNXl3aUJxc2YvSnZ2VitlOGU1aGFqalk1WENG?=
 =?utf-8?B?UXFKd1B1QkpJNG5QZWQ3OWN6YXVRTEVBL1BnRnNmWXN5UEZyMUt2S21WUEVj?=
 =?utf-8?B?Z3BaK2NZc1ZmYitTM1F1alJzQkpnN2h6S2YveFVDazFnWWtEb0g4VjZxMGdh?=
 =?utf-8?B?OFM2aFozZ3lzU000M0NaWFlQNXNBdWRGZGpONlNianJOOWR1WjFvMTZERVV5?=
 =?utf-8?B?NDRYTWVGdGx1bDNhZGp5dUp4R0kyNS9pV2E2RFhFVkJlZElPYmY5SEFVSGJV?=
 =?utf-8?B?cEtoS2VZcjZ5YkVQcFJDRDdwVXIvOFd2THQ0dlJyUFFEZWdySjFTMlh4TG41?=
 =?utf-8?B?UFNnYnBtTDZ3dFl2cXc0UnV4K01Ja29LMExwVXVmNkthWTVzV0p5SDN5S0dE?=
 =?utf-8?B?WUdZRkkwcEpNQXYxSzI5b0RUR2xwODl2L1pwb0lhMXBjUzkyc1dVMjA2eEEv?=
 =?utf-8?B?UnR0dUFOMGhFblVudVlWQ1dZN0Ivci8yei8rUE5TNkpwR2MrMHRKalAydThF?=
 =?utf-8?B?emd1V29mS054eFgyQTdZOXJhekxzVDFKcmVIR3FZLzhXN2xIamUrdmpNRUla?=
 =?utf-8?B?Yjg3b3NlMldUWUQzd2I5NFZxaEpzNFJPNy9oc1k4dWVVYVlJWmRYREVyYysv?=
 =?utf-8?B?RVZrWmpXQUNPVG9oUStUZDJ0azlDUENKYkpjQ1M4bExMTFFZK3JqNzdtWHBY?=
 =?utf-8?B?MktwSDlPU043R1g2Z2twSm9LdGJ3UUh2alNVU04wTDRtcGJNRmNQNEdFbnFM?=
 =?utf-8?B?MEl0Q055eUxSZlVyQmc1YkI2YXRxdVVESEN1bE5OUWJrbzBwb1RzM0dTaGFy?=
 =?utf-8?B?OHVIQllncVdTU3dpbG9pQVVQMm1uZ04yRWJpMG9wSEFOc1FqOWZyZzdHZzlO?=
 =?utf-8?Q?eFOM7saP6uz8mg6nwa6Qv6FyXIaCqz1ukkfjb2kCQhNe?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <96337C2E557E2E40861310A1D5EE1F76@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 969e2a5d-2a96-465b-5353-08dac87f7510
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 09:38:17.6127 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FDicVVNghNt99YDi7U1XVk10lObCkhy/F2Ljr/MKASIe9VyZKzmk6Sfx9gpQV7NB+HIewNTbNznFd5pVYwsYwPDhIoZYkcs0IV4i9ndaLeHYv5ew4hSnp8TdtzaL4oXn3Q4HTNkEc+KdLdQ0XHIqGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7043
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [CI] PR for MTL DMC v2.10
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

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBkYWZmNDA0OTJiZDBjZDA3MWM3ZjU1
MjFiMzM5ZTEyZTRkZTcxOGMxOg0KDQogIGxpbnV4LWZpcm13YXJlOiB1cGRhdGUgZmlybXdhcmUg
Zm9yIE1UNzk4NiAoMjAyMi0xMS0xNiAwODo1MzoyOCAtMDUwMCkNCg0KYXJlIGF2YWlsYWJsZSBp
biB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6DQoNCiAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5v
cmcvZHJtL2RybS1maXJtd2FyZSBtdGxfZG1jX3YyLjEwDQoNCmZvciB5b3UgdG8gZmV0Y2ggY2hh
bmdlcyB1cCB0byBkZTg1NGM5NmRmNjZiZTRhMTNmOGJmYmIxZTc4YmQ1ZDBjZWEyZThlOg0KDQog
IGk5MTU6IEFkZCBETUMgdjIuMTAgZm9yIE1UTCAoMjAyMi0xMS0xNiAxNDoyNjowNiAtMDgwMCkN
Cg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQ0KTWFkaHVtaXRoYSBUb2xha2FuYWhhbGxpIFByYWRlZXAgKDEpOg0KICAgICAg
aTkxNTogQWRkIERNQyB2Mi4xMCBmb3IgTVRMDQoNCiBXSEVOQ0UgICAgICAgICAgICAgICAgICAg
fCAgIDMgKysrDQogaTkxNS9tdGxfZG1jX3ZlcjJfMTAuYmluIHwgQmluIDAgLT4gNDgxMTIgYnl0
ZXMNCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KIGNyZWF0ZSBtb2RlIDEwMDY0
NCBpOTE1L210bF9kbWNfdmVyMl8xMC5iaW4NCg0K
