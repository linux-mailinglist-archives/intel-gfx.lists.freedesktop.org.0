Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0A37E03BD
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 14:25:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F7610E9E1;
	Fri,  3 Nov 2023 13:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54F4F10E0A8;
 Fri,  3 Nov 2023 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699017953; x=1730553953;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=EQ7yEaMkZKAjeS3NO/13bYUdM8A/W2i4JwGWOgq+m5A=;
 b=KcERWc46YkYcL/NDw5Pu1Rw7pIzL5/JCulucXPL/Vs5rugDeFbrdfuZs
 G7z7wxl/+wewEVMLdqzEDii21S6nToEJk+OOC/Z8hsZ3I9PzVx+Mts1hP
 5L6cPlFmr6hapS+ToRN4K1WA6uAktlcg2WukiS5KwefBPEdF/ULijEtSt
 G/jJrtVrgUd2x4xt98EgM0OvedH6iGbOQLRdaV1N/wA19AC37s4dO1fZR
 +lMK8KikjFuF0ol9Lx+yrhys20ffkG0CdhWDDUH8XptK1PPvdiMn1Ikwx
 aj804ignw6f8STNNEwQk8qRhz0L1Q+iiK0Ro/1/sIE/iaBK9rYycY/w15 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="369150569"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="369150569"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 06:25:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="852270304"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="852270304"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2023 06:25:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 06:25:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 3 Nov 2023 06:25:51 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 3 Nov 2023 06:25:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HwX/oFKq6X8lNN2dgM4ArPOiJw7Shnsi8eX6/FtgkeMgZN4K8RtHE7D8hPeJmu394FxvsKqq2CvD9uFHPDxEC296IKkO/O+ewefm0EqJgF56bFbo5NBo05NmmQBUEJ6O2ok5mHbmgB5j79XGN8FDEO6sXeD0QDRC0C+b6ff8KNSzO+3Vhf0Nf/7cvWiIAGon6k3fUKFMWvBNTfzLNCvFoM1nCnpln4uX85iR0cE8sJxecFefFGp7YtagftIw+VtCRZV4eS5llmC2FKyGEdYK68mWqIcDHFGm/j5c5MfYxhghM48ft36Ci2/17nBQDnIsO/hCaqtGKFdx6WHSSZPryA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EQ7yEaMkZKAjeS3NO/13bYUdM8A/W2i4JwGWOgq+m5A=;
 b=GzaFa7Yr22lQ94YhjJkveTABgTW72AlCR07upnuFkjS5k2+u81H3UjPipqPnOFBzupqsHJb7/R1jO9DRBLVlmKF1ceU60QJ8VnUApZ+DdZDYt8WskaJQZPzs1HYNrifFcf5mH4IkrSeycCUJfYdg1jEgX9VRK9Pfa6V/cDpl4+jWm6P+OqR5RdD3B2DBMQY9PAOlobCcSoFJBvuOQO6ssrsWhOghcFW0VXB5Ne/q3NdMXyXu/o8p8Cx5kqbQEnZ5UMy+1151y0UExAszMfaIyF1yRC6E2w0ow4K7K/TI7dPyXQYBtWDLE2fFaDo1AXgBnJQUWnJqPtN0wRpSQNwo3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ0PR11MB5021.namprd11.prod.outlook.com (2603:10b6:a03:2dc::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Fri, 3 Nov
 2023 13:25:48 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::dc77:69e0:a3bc:e3e]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::dc77:69e0:a3bc:e3e%6]) with mapi id 15.20.6954.021; Fri, 3 Nov 2023
 13:25:48 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Coelho, 
 Luciano" <luciano.coelho@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915: handle uncore spinlock when not
 available
Thread-Index: AQHaBZxmZ5r+EvBsUEyl8l8ekkOMK7BaTe2AgAAB4wCAAAIQgIAABzWAgA2oQ4CAAFtjAIAADYUAgAA9CAA=
Date: Fri, 3 Nov 2023 13:25:48 +0000
Message-ID: <300bd19b621e004e5df727604f6c525f011c83d5.camel@intel.com>
References: <20231023103328.1495942-1-luciano.coelho@intel.com>
 <cf874768-7951-4dcc-90b1-7f3457c4923e@linux.intel.com>
 <463b540d-fd0d-4988-9ad1-63447a5d6948@linux.intel.com>
 <86c395f6b2e529943007aca94dd0862c1bb0004d.camel@intel.com>
 <1dedcd11-ac0c-465e-bbe4-079767f5813e@linux.intel.com>
 <d31820ec905a17c38e513653024368d702e8ccbf.camel@intel.com>
 <a227240f5e9ccff944cf6bf1a920c034d0b7b099.camel@intel.com>
 <1b16d7ff-f61e-475f-bed4-2f287ecb32da@linux.intel.com>
In-Reply-To: <1b16d7ff-f61e-475f-bed4-2f287ecb32da@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.48.4 (3.48.4-1.fc38) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB6059:EE_|SJ0PR11MB5021:EE_
x-ms-office365-filtering-correlation-id: 63ec10f1-931a-420c-e0f9-08dbdc70648f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RF2O04fy0QV3VNaUPIYoiC2zZPvT5/lD6nfyIt4/tYkB7x0/mTJVY2zVCBlSYyVF8SQjd+/orscE3kQbh5PkfM3FRLJ4Ytbbk8XLbiIgj2kuVJ4mqTrP5NmsLaRxbqYP1ZQTH3NxXY/gBIWoTep+8sn2IfMGpzvueM4Ofhe6h5TeYXHagQp+rWwAwB2K7Nwx/9kAHnrmd332bBrMOJk9iRac0aLa8lbESHXkGIItz06j+/BVthtcuPwpBYHMPWXdm9SwuHwaNLiSV3mNzzeHUvqxU/LfCQZ9+kMtyYqcWchMMZAgTIdpOvuJmXrzCzCCrSkne7rC1FAd2/kmX4Hfv174CsHliSTq1FUnSCBcas4CS0vnO2H/ACSlyCk+Oe5DB/h0MMyC5L1KVKVAWSU4TRDX1lfHA08PsasprSQskcRgKcCbvcmLYFYs8brBYDBrpWuTZW/QN9meCLwx+ChCHV0Psa+Mx50ALIssDBabF6ozZs/BZrlPrYGMQXV6xfS89tSvfUGTiof/+PdZfBKI56MLXKZj0mU1c5JUXBL/ivnZ8ERvOk3oUlT+MAYeuxa0pegvbGleWotWNlT7DjoJAzz8G+nq4G9InjVeGpTAY5ayTy1xkY04IrWeM1If0Eri
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(396003)(39860400002)(366004)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(2616005)(478600001)(83380400001)(5660300002)(2906002)(41300700001)(26005)(4326008)(8936002)(8676002)(6512007)(6486002)(6506007)(53546011)(6636002)(316002)(91956017)(86362001)(76116006)(110136005)(38100700002)(66946007)(82960400001)(36756003)(71200400001)(64756008)(66476007)(66446008)(66556008)(122000001)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aE1nYjdYNWlxVTUrSDI3RXdaOWNmdkJkdWdaMDB2UFB0ckVDcGNZRGJJUFNr?=
 =?utf-8?B?WW1KZnZkNjZ0L09HcXdjQitMSWJhS05NOXZIN3BPWXQ2ZkMwOC9CdlVocjEv?=
 =?utf-8?B?cUpsOFd4ZVVKV0NjOUpaMnpHMUdTQXUxMy9lZXFaMkNVbXU1WHpJZlBDczBG?=
 =?utf-8?B?ZTZCWklidTNRbko0OHM5cFAza0RDNUlneFZkd0RYZDJJK2RDcjcrRXBUaU1H?=
 =?utf-8?B?NGF5c2ZJRGxoaU9uWkN5R0dhUTIwaVpGdHFFTTg3b3lvVVVwejQ2YzhVR3hZ?=
 =?utf-8?B?b2h1UWhSWk9WTktJVlBab0tWRUlReHh0dXFJSFZpcVNhbDM5cTZxTVl4SmZL?=
 =?utf-8?B?cytvcUdPT2JXbjMxTkZTNUlQbFFDV3E0NFBsM1BlRTh2UThrSm1tOHRZV0Iz?=
 =?utf-8?B?VDFOT1BlNklDSkFrYWJXOTZyY0lUL2NnZUd0ZWFwK3RJUXoyY25Nd0hma3F6?=
 =?utf-8?B?ejRyWCtOS3dtNjZyaUxGRU1EQ3BLUFV6SmJpcCtjMkRScHJJa2VnaWhSMWFL?=
 =?utf-8?B?dFV6VnV3MmlIWnBkOTdJZm53N2tDVnRxbmpRK3N2NnVIeHUrYUl3aUJXeFdM?=
 =?utf-8?B?TmpyM1dzVFF3OVNiczlXMXNVUzlBRU9oSFNDTGZmZ0hRdGVCMUVrNW9aTVpz?=
 =?utf-8?B?dEFkVkJMbW92WHl3QW5sSmFHZFBDdTdXR0w3WloxQmNGRGhxZzJxa0NITVZC?=
 =?utf-8?B?bGZXVjh1L1luQUlMaE12YmxUL1NXWXBvQXBLVnZqV2NURmdVMld1cXNrVXRV?=
 =?utf-8?B?S09CVXRoZFFoa0xuV21EN01FNkN6eEZCWU1YV0xaRjhncGRGZVAxNm1ENkVn?=
 =?utf-8?B?bTlueWY3aFhjays1UlF5SzlBSGdCZXI0clJyRUNDZXZYeStwQ0JaWFF3blJp?=
 =?utf-8?B?VVZ2MldGa3BWUFZXWUVxMkRwUVJGWmpyN0o2VmkyaXhRQzRIK25iOU9vcThs?=
 =?utf-8?B?bDBzRkNkekxiTmx0ZEFGK0pXMHcyZGJPZm1ncjdaKy9INkp0eHZuMDhKcTR2?=
 =?utf-8?B?UUtuUDhVSGNVTksyMWxKYUVtMlpLUWVVVjB1a0dCaXFqSVZFQmRNVXhqNVVC?=
 =?utf-8?B?aFlxaWREWW9IcWtkV0Q3R1lXT2RoTkNlejlWaUFZOEt4Q0krK0ZwY29kdnov?=
 =?utf-8?B?SHYyMjFMWXM0OWhHVDlKS0VOdXl5bGJyZnlwM2dwM2VWcGFqb0FyT01ORGor?=
 =?utf-8?B?WFFwQ0ZNTjN5MFpFMUFzUlMzN1pPMGx0MlM2cU5MbmNDVDV1SWRNWjN4ZExG?=
 =?utf-8?B?WW1rTmlmZFgwb2gwMTMvWjcwQWlqM0h5SjdyTzdLdE14YXM3aDZKVFNORW1q?=
 =?utf-8?B?TmpKdmFGUXRKT2dPdXhuT01KNHRUZ2g2R2lQRkU5UlRnQXZrQlVIeWFydVZi?=
 =?utf-8?B?TEw0WUQ3TWI1VmI2ZkFlcGR0Z2NBeVVCYmgxRU1tWGVyZEkvMTlocVM5eVU5?=
 =?utf-8?B?b3BsZDRreDZ6dCtyQlBodlpQQjlKUmRaQ0hIRTRFVlNsWXY2MS9YcFhxajE0?=
 =?utf-8?B?ZGxlYXd1RVJUSC9MbmhuWXhBZ3RXcFJPOGUrYnNGMFlmRHYxelR5S3pGTlBL?=
 =?utf-8?B?Uk1MMmVlOVZuRWJ2MGtaN25PRVpuS3luMGVWQUY0VE5STisvQ2M3Q2I0bVYr?=
 =?utf-8?B?dmsvbU5YRGllU1dEU2pSWlRZdit6TmlmeVVzSEFkeDJsSUgyVWtGT3IxRlBn?=
 =?utf-8?B?T0R6MndUbEpDbGp0UWE3S3RMcXROVW5rQXlJb0lCWE9mWHE1VGxWVUd0dmJO?=
 =?utf-8?B?Rlg2WHE2ZmR1ZnZKdlpmaVo5b0k1NmtPakVteGJ1QXU4anJvcWcrMXNKUXc5?=
 =?utf-8?B?Wks4R3VCWGswV1J1c0JuK05uMXRVYkloNENJQjQ3QkhxRi9OTGpBQTJtYk91?=
 =?utf-8?B?c2FJaHZQV0JHMExBR3dKTW4vYzFFaVd3SHhlblI2RkJuUFVEZHdVSUptQlU5?=
 =?utf-8?B?ZGdUdlpUdlVBMXlTbXNyV0NqY1ptbjFsS21NRXVqaG1EcTBUcXpTYmhUQXBv?=
 =?utf-8?B?MWo2bUtiVFA3VTlBS2R5WUtsRWtqOUFqMFVid3JiNysxdmw0bW9HRnlldmtK?=
 =?utf-8?B?WDdwcFVvTXJrTFV6Y3h2QUV0T3NmekxYajU4cnJNWHgzdVZwSU5pWjl4aHpW?=
 =?utf-8?B?MUNrZWZzTThIeC9acWVpdHFncnpuNlZhMHNUdVlYWUIwdkVFTlVXYUtmQTc0?=
 =?utf-8?B?cXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6F1D9534A72D644FBDFAF8387F9D0192@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63ec10f1-931a-420c-e0f9-08dbdc70648f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 13:25:48.4353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RE8IUzlwzwyQjotm6JeJlOarX+vCoGdA9pZpdVvmD4TUZqrUaTFY7010uac9QaE7yOvWUjFtA8BvbWf0oOVULA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5021
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: handle uncore spinlock when
 not available
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
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTExLTAzIGF0IDA5OjQ3ICswMDAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gDQo+IE9uIDAzLzExLzIwMjMgMDg6NTgsIENvZWxobywgTHVjaWFubyB3cm90ZToNCj4gPiBP
biBGcmksIDIwMjMtMTEtMDMgYXQgMDM6MzEgKzAwMDAsIFZpdmksIFJvZHJpZ28gd3JvdGU6DQo+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gQW55IG90aGVyIHN1Z2dlc3Rpb25zPw0KPiA+ID4gPiANCj4g
PiA+ID4gSSB0aGluayBpdCB3aWxsIGJvaWwgZG93biB0byB0aGUgcmVhc29uIHVuY29yZSBsb2Nr
IGlzIGhlbGQNCj4gPiA+ID4gb3Zlcg0KPiA+ID4gPiB0aGUNCj4gPiA+ID4gcmVzcGVjdGl2ZSBz
ZWN0aW9ucyBpZS4gdGhlIGNvbW1lbnQgaW4NCj4gPiA+ID4gaTkxNV9nZXRfY3J0Y19zY2Fub3V0
cG9zLg0KPiA+ID4gPiANCj4gPiA+ID4gSWYgaXQgaXMgdGltaW5nIHNlbnNpdGl2ZSB0byB0aGUg
ZXh0ZW50IGlycSBvZmYgd2FzIG5lZWRlZCBpdA0KPiA+ID4gPiBtYXkNCj4gPiA+ID4gYXBwbHkN
Cj4gPiA+ID4gdG8gWGUgYXMgd2VsbC4gTGlrZXdpc2UgdGhlIG5lZWQgdG8gdXNlIG1taW8gaGVs
cGVycyB3aGljaCByZWx5DQo+ID4gPiA+IG9uDQo+ID4gPiA+IHRoZQ0KPiA+ID4gPiB1bmNvcmUg
bG9jayBhbHJlYWR5IGhlbGQuIFF1ZXN0aW9uIG9mIHdoZXRoZXIgdGhlcmUgaXMNCj4gPiA+ID4g
Y29uY2VwdHVhbA0KPiA+ID4gPiBjb21tb25hbGl0eSwgd2lsbCBwcm9iYWJseSBkcml2ZSB0aGUg
YmVzdCBuYW1lLCBvciB0aGUgYmVzdA0KPiA+ID4gPiBhcHByb2FjaA0KPiA+ID4gPiBpbg0KPiA+
ID4gPiBnZW5lcmFsLg0KPiA+ID4gDQo+ID4gPiB5ZWFwLCB0aGlzIGlzIGhvdyBJJ20gc2VlaW5n
IHRoaXMuIElmIGk5MTUtZGlzcGxheSBuZWVkcyB0aGlzDQo+ID4gPiBnbG9iYWwNCj4gPiA+IGxv
Y2sgYXJvdW5kIG1taW8gb3BlcmF0aW9ucywgdGhlbiB3ZSB3b3VuZCBuZWVkIHRvIGFkZCBpdCB0
byB0aGUNCj4gPiA+IHhlX21taW8gYXMgd2VsbCBhbmQgdGhlbiBzb2x2ZSB0aGUgbmFtZSwgZXRj
Lg0KPiA+ID4gDQo+ID4gPiBIb3dldmVyLCBJIGRvbid0IGJlbGlldmUgdGhhdCBvdGhlciB1c2Vy
cyBvZiB0aGUgbW1pbyB3b3VsZCBuZWVkDQo+ID4gPiB0aGlzIGxvY2suIFNvIEkgYmVsaWV2ZSB0
aGUgcmlnaHQgdGhpbmcgdG8gZG8gaXMgdG8gY3JlYXRlIGENCj4gPiA+IGk5MTUtDQo+ID4gPiBk
aXNwbGF5IG9ubHkgc3Bpbl9sb2NrLCBhcm91bmQgdGhlIGludGVsX2RlX21taW8gY2FsbHMgYW5k
IGhlcmUuDQo+ID4gPiANCj4gPiA+IFdpdGggdGhpcyB3ZSBlbnRpcmVseSBraWxsIHRoZSBkZXBl
bmRlbmN5IG9uIHNvbWVvbmUtZWxzZSdzIGxvY2sNCj4gPiA+IGFuZCBoYXZlIHNvbWV0aGluZyB0
aGF0IGlzIGVudGlyZWx5IGluc2lkZSBkaXNwbGF5IGNvZGUgc28gaXQNCj4gPiA+IGRvZXNuJ3Qg
bmVlZCB0byBiZSBwb3J0ZWQgdG8gb25lIG9yIGFub3RoZXIgZHJpdmVyIGNvcmUNCj4gPiA+IGNv
bXBvbmVudHMuDQo+ID4gDQo+ID4gUmlnaHQsIEkgYWdyZWUgdG9vLg0KPiA+IA0KPiA+IE15IHBh
dGNoIHdhcyBqdXN0IHRyeWluZyB0byBhZGRyZXNzIHRoZSBxdWljayBoYWNrIG1hZGUgZm9yIFhl
LCBub3QNCj4gPiB0aGUNCj4gPiBhY3R1YWwgaW1wbGVtZW50YXRpb24gaW4gWGUncyBzaWRlLsKg
IEJ1dCBpdCBtYWtlcyBzZW5zZSB0bw0KPiA+IGltcGxlbWVudA0KPiA+IHRoaXMgbmV3IGxvY2sg
aW50ZXJuYWxseSBpbiB0aGUgZGlzcGxheSBzbyB0aGVyZSBhcmUgbm8NCj4gPiBkZXBlbmRlbmNp
ZXMgb3INCj4gPiB3cmFwcGVycyBuZWVkZWQuDQo+ID4gDQo+ID4gSSdsbCByZXNwaW4uDQo+IA0K
PiBZb3UgY291bGQgYWxzbyBtYWtlIHN1cmUgaXQgbmVlZHMgdG8gYmUgYSBsb2NrIGFuZCBub3Qg
anVzdCBzYXkgYSANCj4gcHJlZW1wdCBvZmYgb3IgaXJxIHNlY3Rpb24/DQoNCmluZGVlZCBhIGdv
b2QgcXVlc3Rpb24uIG1heWJlIHdlIGRvbid0IG5lZWQgdGhlIGxvY2sgYXQgYWxsIHRoZXJlLi4u
DQoNCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0a28NCg0K
