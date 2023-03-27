Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C17E6CA2F9
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 14:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1590010E5A5;
	Mon, 27 Mar 2023 12:00:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97DD210E58C
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 12:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679918405; x=1711454405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J97S+bp/tKYCt3xUlXQhnsdyiAAzJcatrVeR87734LY=;
 b=g9SuXBgb9tE/RHvrV41bgyl5wLE3UgOEHlA2+bvRzCAskgDkKN38J0oc
 szaApfWb/t2Vs5CHNbms71d8XsxJRp7mCkvRp7tdRrv+NFxhyDmZQ+IRl
 jwrJeUQZttuLiP9vdY4uU4xx8jhdsqE48BT8scoGLzVlPHD3ySTjT1gkz
 0ukkqEI8v/FR+tk0jyWR6wvqBu5OnUJCJ7MpEJLN3YHVbf4BQfcCRRy5y
 u6/0gpnk7Ien8PSKbfdeMZmxtSdZ5Sv7Z/NooZ40Aw6mBbXE+w5PvS6im
 eyiKu41rm0IgGZZrIa+OBQCNw56B1//CZVZhFXTXm2qKDEkqAQRtTAzaN Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="367992216"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="367992216"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 05:00:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="660819574"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="660819574"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 27 Mar 2023 05:00:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 05:00:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 05:00:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 05:00:04 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 05:00:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kxz9B+L9MG7y7bk5CA6lDQg9HzL/1/aqdX1m0kvnWwMITa44FNFtFen0yAHVVXKPICwTYjpeTXkPy3f/LSv6hLX7gTqk6yxVPaKMgEvCQSFYnfU+Fkwn+GzI9evb+TaxuaTB0bEr5xocIR9hz+2WrIHSbVHXisyS2CV21SaR0zRfLzyh7/mttcypYHrcRvo7y5/hRI56XASK5traHK2IJls65/kit+Ut1yG+pLIYJgNKDTRHE+RWgmR3zO5j08GJfsUQKe5zlsgqdEJoL5KM+D1jqcnqOeuJA7ZUcHQJdALelqmipnbcrS4oID9XV1GLd30eMmy8Ph0aWRLmhuyqTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J97S+bp/tKYCt3xUlXQhnsdyiAAzJcatrVeR87734LY=;
 b=nTGAc6bnJMhe4QhtUT7hiX0zZlKOc/zNwf+nbH582GIbCusgWj/+8/W2abRVAW8m31Axplb3n/SVunqN1M7KC0zizlC/yz8nW8tuT7TuqSI2gV709UeCJXlF8Tekazh+qXbnLB6Mxy72oYsBD//ZOU98yH10F8Ikn51C9/OrTKKhujKnGXLa4XBb8PJb5gka1mOtSj1RSKFRtWMd6lB2Pz82T+zgl4W4SY6BeRMkFDS/T+EJlwvqFF+ok29G6UHk6wRvhOKG7zbE2Cz0lFc+ZSIby8llWPLTdp/T1wQdOPylUyRRjzYtBMyI8rsDuzWWfnd6g10hwsSRNjZCFO0JOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS0PR11MB7649.namprd11.prod.outlook.com (2603:10b6:8:146::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Mon, 27 Mar
 2023 12:00:01 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%6]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 12:00:01 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 20/29] drm/i915/tc: Add asserts in TC PHY
 hooks that the required power is on
Thread-Index: AQHZXZLO84fXPYNuuUacJh3qpHWiOK8IbdcAgAArKgCABfLugA==
Date: Mon, 27 Mar 2023 12:00:01 +0000
Message-ID: <MW4PR11MB705411FEE7F136C9E6333ADDEF8B9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-21-imre.deak@intel.com> <87sfdv5ygd.fsf@intel.com>
 <ZByHiN5Qn4JOMSM0@ideak-desk.fi.intel.com>
In-Reply-To: <ZByHiN5Qn4JOMSM0@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS0PR11MB7649:EE_
x-ms-office365-filtering-correlation-id: 1ce4f253-2bc1-4111-cfc8-08db2ebacb95
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hP+utIWtffNBYNV7MrgNbSc5jWe98xal5FYMALNZ818SW7l6g0VlFtyLMElhJ6uLvuSZgyy99ysgbLOvCgeEPMaFosmnx2xz1M9BdfRKTM8vB5x2Oafmyyxm3Qbru91fGmW7gB0csmpajd+pOpub3S2qPmyJUZUZ46753+FB6XJTLza9NpsOM3J/O/+aTweLe2rkNMV8+Dz3PATEn5V3y3qbEfRQlVtiMqw8v3R+FoR8CAE5MfUtssQiiHIaI4CB0nOy+Vey8QqZVQydWrZ09jJdqB65Q2CYY9T+pR6UubwVuCTv3eL+wKLZtRTtXuJhahnB6QmwD1uKmlCXuXidpNe0bjLIny2IWuetpfYEV9Ga8ZGH2NFhGFMQNBa4fMiEvNBQFgdWZPTgtl1qmJPl5dZEq8nuPiUtWy/IuZHsK+8a/m/iUXyaLs61QDYHjXppN1ReGeowXx80kgvPXO4cbu3xQfdHoyS/bqiBvckjHmKBXPj5x9L7WswFwrHd9PfwUFuXnN+RwykbJWFhF4ZZ6KX14kVXWOzXfAqeEu28tjod7IBSX47uVXZ1FPBAs/Hn81Uo7gRGjq8NNPA6CuDU++AHvThtxmFBmpP1CuW3AnCY2D7Tqcc7uUiUEqqcOz9s
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(136003)(376002)(396003)(451199021)(478600001)(71200400001)(7696005)(41300700001)(110136005)(9686003)(316002)(6506007)(55016003)(26005)(53546011)(66446008)(76116006)(66946007)(8676002)(66556008)(66476007)(64756008)(186003)(4326008)(33656002)(83380400001)(2906002)(52536014)(122000001)(5660300002)(38100700002)(38070700005)(86362001)(8936002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QVlhcS8xOHh6UHZnVjJQNWJRMHRpcmxKTWdZVEhDdHBLUGtPMGlYNXM5NFNG?=
 =?utf-8?B?TlRxM0ZUY05ZOHhnRW9ic0oxaEpsaXVqSGRpUk5aWmdXaXQ1VmpiWGhtSTJ3?=
 =?utf-8?B?em1GVFdDTUF0dThBMFJOZVJDc3Fmd3h1dElYSWFBcm9tZUdhTVRWQzBZYzlx?=
 =?utf-8?B?V3RhSHlaNUNya3dyWisxUkhEbGljU0h6V1JhWG54eHVncStpMHByRERJb0tk?=
 =?utf-8?B?My90YnBReFVTZFdyUDJhcGFEVEZOQUJOb3VUTDZKbXM5SmdYYjNmenlNbXdC?=
 =?utf-8?B?V0ZUTE4rWnI1RHFsTk9CZDVIV1NHYVdyZG1wWVhIRS9rWUorc3VwMVNkNmhV?=
 =?utf-8?B?WDZHd3pFVWJyNDNiTkh3eXBQcVR4V0dEeFZSaVNPc01GaVpxWDRZQlFTOVNk?=
 =?utf-8?B?bVVYMFdjYWUyVGQ2My82K3g0M1Zma1lROVZFSVdSY0VFU2FZTWFySXoyQzNZ?=
 =?utf-8?B?RW5JcHhVb25PbTBWamFMajZMV3Vxam5IMTdCUkNkUklrVE1QRVVVcjEyNGcx?=
 =?utf-8?B?ZXFrdGxQN0hoMzRCV0k0NnVPR2lpQTNKcS9jRmY1NTRVakxQODNaa3ZQcFMv?=
 =?utf-8?B?OVl4QjJlSjZ1aGdyaU5JVk5Rb3RSck1LQlhmWEV3c1ZKVEU0SitXekdrbnIx?=
 =?utf-8?B?WnJLZFh5WmVJWUJtb2p4OHVEQ3RlOURwK1AvZHNEYnBYVE1NRFZmdTkrNWJB?=
 =?utf-8?B?Q1F2K0dvZzFBS3F1NVdrSlpiVVBaMXF0blFkQmFtZnZVS0tZVjFURS9ZSEpH?=
 =?utf-8?B?MkdaQm54MU9jTnVMb3o4czZTd0JsREMwZlN5dDBYM0dHajM3aDRRcTlwYjdD?=
 =?utf-8?B?cnJURnZWTnFCbDVIZUUzdHpZdzF0SzQ3ZmFQM2MxK3o2RS9wcVJBQ3IvWkVt?=
 =?utf-8?B?RW5kdGErR1dRajZRMDVUcFVuZ1FkUzZidW92MHVxM3BLUmZFY2t0bEpBN3RR?=
 =?utf-8?B?ZW5tclZDcGtpeU5JVkhxU3UvMWVsNDJSTmowcjFxOVVlTDM1Qm0xZERsZG1J?=
 =?utf-8?B?YlVFVnMydEtST2pkaE10TUsrQkl5RmlmdXhQeC9RQlVERGNuWFhxNzFjRDdy?=
 =?utf-8?B?N2VEMExXTDVkclBqblc1OHVzRndQdWx0ZmtScTZOSkJ3R0VvUUhBNkRDdnhv?=
 =?utf-8?B?bWx3cnVRSG5hRzgzWllJbzRqNDc0MnhmVUZ1VCtuUWJuNFk0ck5DcnZWZzB0?=
 =?utf-8?B?QXhmSEk0VmM0a2ZlT1JzazBpMnJaQWRBeFY3bkpTcGZmUGF4M1haNVNYaFFX?=
 =?utf-8?B?ZWhialczSXRxNFl1bEZUWjJyU1JCQ0xpanVWSUNYcEkzQXFnQWRTS2hZTjJs?=
 =?utf-8?B?MHRXb3IvakFFTGRxdFlPQWkzejIxQTZBS3l6WDZUajBkVkxMMlZJanUvMXVM?=
 =?utf-8?B?NHRtMVdaMklzRkVOTUZUZ0NpL1N3bXVpamdmeGI5c1ZIYzA2R1NDeld5d01n?=
 =?utf-8?B?OWY1NTlXQ2VXS1RLclFpWUNrZEs3bXJqR3VlZDBZTEk3VmdESHZwc2pGTGxo?=
 =?utf-8?B?ckh2b3JMbE8wMFdmTnZlYmczQ0dzcDd6WEtza3hUeTd5S3dGVVhtRVpKQUtp?=
 =?utf-8?B?dTRnZ253OU83Y2U2NjhaaS9FazhsTy9FZGpCbTd5aGhrYU41RVJmMHdHL0c1?=
 =?utf-8?B?N0pIbEUrY09jWVdFOFBxNDBWWHc4SjBacWlkY0J5Y1FrcEdUcW5uUmJJejA3?=
 =?utf-8?B?OVg0U2NhNGt5KzZKc1FYRVJyT0p0NVl0dHl1cEs4ZTd1K2svS0hJT1l3SDdu?=
 =?utf-8?B?U1pWRDJNUkVqZU5lMnNYOThrM3lEYmRxYlBuZVV0SEFmZHhCbXF0R3BQaXB6?=
 =?utf-8?B?OUc1dXd5cE1kUUdNOE9PdEV5c3BIMVUzcHpaSDN5ck44azQ3RnppcjdZZkJR?=
 =?utf-8?B?RldFNWZlOFhub0IzaDdhQlZ4QWtCWTNhNjRXdmoreGVuYjlHc2VLdjZyYVlI?=
 =?utf-8?B?UGpBUFpsODMwSGFxYzNreWtxemQvNERHL1BrWUJodnlNa2thZC9EVkw1MmZQ?=
 =?utf-8?B?aGZXVGpUaXZnTVpGV0dvQkZFNXJBbWRzR1ZkVDdUYTNNczNvakEzQVgyNUpk?=
 =?utf-8?B?ZDQ4S0F4MENLaHplcEYwQXJnZXVrZkt6WHIwaC9yeFRWemhIeEpLRlpBU3p1?=
 =?utf-8?Q?e/tjgGR4bQzFVLnljCsJOIRwt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ce4f253-2bc1-4111-cfc8-08db2ebacb95
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 12:00:01.7288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WKvqDufInyf6igiD+d6bS5TEnNp6CN9hRgFefygJv/svVShM/tkeB+FwaFW7z122u98wuylvEURyQ3x/aL4WWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7649
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 20/29] drm/i915/tc: Add asserts in TC PHY
 hooks that the required power is on
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNzowOCBQTQ0KPiBUbzogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSCAyMC8y
OV0gZHJtL2k5MTUvdGM6IEFkZCBhc3NlcnRzIGluIFRDIFBIWSBob29rcw0KPiB0aGF0IHRoZSBy
ZXF1aXJlZCBwb3dlciBpcyBvbg0KPiANCj4gT24gVGh1LCBNYXIgMjMsIDIwMjMgYXQgMDQ6MzM6
NTRQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6DQo+ID4gT24gVGh1LCAyMyBNYXIgMjAyMywg
SW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPiB3cm90ZToNCj4gPiA+IEFkZCBhbiBhc3Nl
cnQgdG8gZWFjaCBUQyBQSFkgaG9vayB0aGF0IHRoZWlyIHJlcXVpcmVkIHBvd2VyIGRvbWFpbg0K
PiA+ID4gaXMgZW5hYmxlZC4NCj4gPiA+DQo+ID4gPiBXaGlsZSBhdCBpdCBhZGQgYSBjb21tZW50
IGRlc2NyaWJpbmcgdGhlIGRvbWFpbnMgdXNlZCBvbiBlYWNoDQo+ID4gPiBwbGF0Zm9ybSBhbmQg
VEMgbW9kZS4NCj4gPiA+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVh
a0BpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3RjLmMgfCA2MQ0KPiA+ID4gKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA2MSBpbnNlcnRpb25zKCspDQo+ID4gPg0KPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiA+IGluZGV4IGU2ODM0
NmM1ZTYwMzYuLjdiY2Q5M2YxZjA1OTcgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+ID4gQEAgLTExMSw2ICsxMTEsNDYgQEAgYm9vbCBp
bnRlbF90Y19wb3J0X2luX2xlZ2FjeV9tb2RlKHN0cnVjdA0KPiBpbnRlbF9kaWdpdGFsX3BvcnQg
KmRpZ19wb3J0KQ0KPiA+ID4gIAlyZXR1cm4gaW50ZWxfdGNfcG9ydF9pbl9tb2RlKGRpZ19wb3J0
LCBUQ19QT1JUX0xFR0FDWSk7ICB9DQo+ID4gPg0KPiA+ID4gKy8qKg0KPiA+DQo+ID4gVGhpcyBh
bHNvIHNob3VsZG4ndCBiZSBhIGtlcm5lbC1kb2MgY29tbWVudC4NCj4gDQo+IE9rLCB3aWxsIGNo
YW5nZSB0aGVzZS4NCg0KRnVuY3Rpb25hbGl0eSBsb29rcyBvayB0byBtZS4NCg0KUmV2aWV3ZWQt
Ynk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gDQo+ID4NCj4gPiBC
UiwNCj4gPiBKYW5pLg0KPiA+DQo+ID4gPiArICogVGhlIGRpc3BsYXkgcG93ZXIgZG9tYWlucyB1
c2VkIGZvciBUQyBwb3J0cyBkZXBlbmRpbmcgb24gdGhlDQo+ID4gPiArICogcGxhdGZvcm0gYW5k
IFRDIG1vZGUgKGxlZ2FjeSwgRFAtYWx0LCBUQlQpOg0KPiA+ID4gKyAqDQo+ID4gPiArICogUE9X
RVJfRE9NQUlOX0RJU1BMQVlfQ09SRToNCj4gPiA+ICsgKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KPiA+ID4gKyAqIEFETFAvYWxsIG1vZGVzOg0KPiA+ID4gKyAqICAgLSBUQ1NTL0lPTSBh
Y2Nlc3MgZm9yIFBIWSByZWFkeSBzdGF0ZS4NCj4gPiA+ICsgKiBBRExQKy9hbGwgbW9kZXM6DQo+
ID4gPiArICogICAtIERFL25vcnRoLSxzb3V0aC1IUEQgSVNSIGFjY2VzcyBmb3IgSFBEIGxpdmUg
c3RhdGUuDQo+ID4gPiArICoNCj4gPiA+ICsgKiBQT1dFUl9ET01BSU5fUE9SVF9ERElfTEFORVNf
PHBvcnQ+Og0KPiA+ID4gKyAqIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+
ID4gPiArICogSUNMKy9hbGwgbW9kZXM6DQo+ID4gPiArICogICAtIERFL0RESV9CVUYgYWNjZXNz
IGZvciBwb3J0IGVuYWJsZWQgc3RhdGUuDQo+ID4gPiArICogQURMUC9hbGwgbW9kZXM6DQo+ID4g
PiArICogICAtIERFL0RESV9CVUYgYWNjZXNzIGZvciBQSFkgb3duZWQgc3RhdGUuDQo+ID4gPiAr
ICoNCj4gPiA+ICsgKiBQT1dFUl9ET01BSU5fQVVYX1VTQkM8VEMgcG9ydCBpbmRleD46DQo+ID4g
PiArICogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+ID4gKyAqIElD
TC9sZWdhY3kgbW9kZToNCj4gPiA+ICsgKiAgIC0gVENTUy9JT00sRklBIGFjY2VzcyBmb3IgUEhZ
IHJlYWR5LCBvd25lZCBhbmQgSFBEIGxpdmUgc3RhdGUNCj4gPiA+ICsgKiAgIC0gVENTUy9QSFk6
IGJsb2NrIFRDLWNvbGQgcG93ZXIgc3RhdGUgZm9yIHVzaW5nIHRoZSBQSFkgQVVYIGFuZA0KPiA+
ID4gKyAqICAgICBtYWluIGxhbmVzLg0KPiA+ID4gKyAqIEFETFAvbGVnYWN5LCBEUC1hbHQgbW9k
ZXM6DQo+ID4gPiArICogICAtIFRDU1MvUEhZOiBibG9jayBUQy1jb2xkIHBvd2VyIHN0YXRlIGZv
ciB1c2luZyB0aGUgUEhZIEFVWCBhbmQNCj4gPiA+ICsgKiAgICAgbWFpbiBsYW5lcy4NCj4gPiA+
ICsgKg0KPiA+ID4gKyAqIFBPV0VSX0RPTUFJTl9UQ19DT0xEX09GRjoNCj4gPiA+ICsgKiAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gPiArICogVEdML2xlZ2FjeSwgRFAtYWx0IG1vZGVz
Og0KPiA+ID4gKyAqICAgLSBUQ1NTL0lPTSxGSUEgYWNjZXNzIGZvciBQSFkgcmVhZHksIG93bmVk
IGFuZCBIUEQgbGl2ZSBzdGF0ZQ0KPiA+ID4gKyAqICAgLSBUQ1NTL1BIWTogYmxvY2sgVEMtY29s
ZCBwb3dlciBzdGF0ZSBmb3IgdXNpbmcgdGhlIFBIWSBBVVggYW5kDQo+ID4gPiArICogICAgIG1h
aW4gbGFuZXMuDQo+ID4gPiArICoNCj4gPiA+ICsgKiBJQ0wsIFRHTCwgQURMUC9UQlQgbW9kZToN
Cj4gPiA+ICsgKiAgIC0gVENTUy9JT00sRklBIGFjY2VzcyBmb3IgSFBEIGxpdmUgc3RhdGUNCj4g
PiA+ICsgKiAgIC0gVENTUy9UQlQ6IGJsb2NrIFRDLWNvbGQgcG93ZXIgc3RhdGUgZm9yIHVzaW5n
IHRoZSAoVEJUIERQLUlOKQ0KPiA+ID4gKyAqICAgICBBVVggYW5kIG1haW4gbGFuZXMuDQo+ID4g
PiArICovDQo+ID4gPiAgYm9vbCBpbnRlbF90Y19jb2xkX3JlcXVpcmVzX2F1eF9wdyhzdHJ1Y3Qg
aW50ZWxfZGlnaXRhbF9wb3J0DQo+ID4gPiAqZGlnX3BvcnQpICB7DQo+ID4gPiAgCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7
DQo+ID4gPiBAQCAtMTYzLDYgKzIwMywxNSBAQCB0Y19jb2xkX3VuYmxvY2soc3RydWN0IGludGVs
X3RjX3BvcnQgKnRjLA0KPiBpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZikNCj4gPiA+ICAJX190Y19j
b2xkX3VuYmxvY2sodGMsIGRvbWFpbiwgd2FrZXJlZik7ICB9DQo+ID4gPg0KPiA+ID4gK3N0YXRp
YyB2b2lkDQo+ID4gPiArYXNzZXJ0X2Rpc3BsYXlfY29yZV9wb3dlcl9lbmFibGVkKHN0cnVjdCBp
bnRlbF90Y19wb3J0ICp0Yykgew0KPiA+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRjX3RvX2k5MTUodGMpOw0KPiA+ID4gKw0KPiA+ID4gKwlkcm1fV0FSTl9PTigmaTkxNS0+
ZHJtLA0KPiA+ID4gKwkJICAgICFpbnRlbF9kaXNwbGF5X3Bvd2VyX2lzX2VuYWJsZWQoaTkxNSwN
Cj4gPiA+ICtQT1dFUl9ET01BSU5fRElTUExBWV9DT1JFKSk7IH0NCj4gPiA+ICsNCj4gPiA+ICBz
dGF0aWMgdm9pZA0KPiA+ID4gIGFzc2VydF90Y19jb2xkX2Jsb2NrZWQoc3RydWN0IGludGVsX3Rj
X3BvcnQgKnRjKSAgeyBAQCAtMzc4LDYNCj4gPiA+ICs0MjcsOCBAQCBzdGF0aWMgYm9vbCBpY2xf
dGNfcGh5X2lzX3JlYWR5KHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YykNCj4gPiA+ICAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0Y190b19pOTE1KHRjKTsNCj4gPiA+ICAJdTMyIHZh
bDsNCj4gPiA+DQo+ID4gPiArCWFzc2VydF90Y19jb2xkX2Jsb2NrZWQodGMpOw0KPiA+ID4gKw0K
PiA+ID4gIAl2YWwgPSBpbnRlbF9kZV9yZWFkKGk5MTUsIFBPUlRfVFhfREZMRVhEUFBNUyh0Yy0+
cGh5X2ZpYSkpOw0KPiA+ID4gIAlpZiAodmFsID09IDB4ZmZmZmZmZmYpIHsNCj4gPiA+ICAJCWRy
bV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+ID4gPiBAQCAtMzk1LDYgKzQ0Niw4IEBAIHN0YXRpYyBi
b29sIGljbF90Y19waHlfdGFrZV9vd25lcnNoaXAoc3RydWN0DQo+IGludGVsX3RjX3BvcnQgKnRj
LA0KPiA+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRjX3RvX2k5MTUodGMp
Ow0KPiA+ID4gIAl1MzIgdmFsOw0KPiA+ID4NCj4gPiA+ICsJYXNzZXJ0X3RjX2NvbGRfYmxvY2tl
ZCh0Yyk7DQo+ID4gPiArDQo+ID4gPiAgCXZhbCA9IGludGVsX2RlX3JlYWQoaTkxNSwgUE9SVF9U
WF9ERkxFWERQQ1NTUyh0Yy0+cGh5X2ZpYSkpOw0KPiA+ID4gIAlpZiAodmFsID09IDB4ZmZmZmZm
ZmYpIHsNCj4gPiA+ICAJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+ID4gPiBAQCAtNDE4LDYg
KzQ3MSw4IEBAIHN0YXRpYyBib29sIGljbF90Y19waHlfaXNfb3duZWQoc3RydWN0IGludGVsX3Rj
X3BvcnQNCj4gKnRjKQ0KPiA+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRj
X3RvX2k5MTUodGMpOw0KPiA+ID4gIAl1MzIgdmFsOw0KPiA+ID4NCj4gPiA+ICsJYXNzZXJ0X3Rj
X2NvbGRfYmxvY2tlZCh0Yyk7DQo+ID4gPiArDQo+ID4gPiAgCXZhbCA9IGludGVsX2RlX3JlYWQo
aTkxNSwgUE9SVF9UWF9ERkxFWERQQ1NTUyh0Yy0+cGh5X2ZpYSkpOw0KPiA+ID4gIAlpZiAodmFs
ID09IDB4ZmZmZmZmZmYpIHsNCj4gPiA+ICAJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+ID4g
PiBAQCAtNjI2LDYgKzY4MSw4IEBAIHN0YXRpYyBib29sIGFkbHBfdGNfcGh5X2lzX3JlYWR5KHN0
cnVjdA0KPiBpbnRlbF90Y19wb3J0ICp0YykNCj4gPiA+ICAJZW51bSB0Y19wb3J0IHRjX3BvcnQg
PSBpbnRlbF9wb3J0X3RvX3RjKGk5MTUsIHRjLT5kaWdfcG9ydC0+YmFzZS5wb3J0KTsNCj4gPiA+
ICAJdTMyIHZhbDsNCj4gPiA+DQo+ID4gPiArCWFzc2VydF9kaXNwbGF5X2NvcmVfcG93ZXJfZW5h
YmxlZCh0Yyk7DQo+ID4gPiArDQo+ID4gPiAgCXZhbCA9IGludGVsX2RlX3JlYWQoaTkxNSwgVENT
U19ERElfU1RBVFVTKHRjX3BvcnQpKTsNCj4gPiA+ICAJaWYgKHZhbCA9PSAweGZmZmZmZmZmKSB7
DQo+ID4gPiAgCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiA+ID4gQEAgLTY0Myw2ICs3MDAs
OCBAQCBzdGF0aWMgYm9vbCBhZGxwX3RjX3BoeV90YWtlX293bmVyc2hpcChzdHJ1Y3QNCj4gaW50
ZWxfdGNfcG9ydCAqdGMsDQo+ID4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0g
dGNfdG9faTkxNSh0Yyk7DQo+ID4gPiAgCWVudW0gcG9ydCBwb3J0ID0gdGMtPmRpZ19wb3J0LT5i
YXNlLnBvcnQ7DQo+ID4gPg0KPiA+ID4gKwlhc3NlcnRfdGNfcG9ydF9wb3dlcl9lbmFibGVkKHRj
KTsNCj4gPiA+ICsNCj4gPiA+ICAJaW50ZWxfZGVfcm13KGk5MTUsIERESV9CVUZfQ1RMKHBvcnQp
LA0KPiBERElfQlVGX0NUTF9UQ19QSFlfT1dORVJTSElQLA0KPiA+ID4gIAkJICAgICB0YWtlID8g
RERJX0JVRl9DVExfVENfUEhZX09XTkVSU0hJUCA6IDApOw0KPiA+ID4NCj4gPiA+IEBAIC02NTUs
NiArNzE0LDggQEAgc3RhdGljIGJvb2wgYWRscF90Y19waHlfaXNfb3duZWQoc3RydWN0DQo+IGlu
dGVsX3RjX3BvcnQgKnRjKQ0KPiA+ID4gIAllbnVtIHBvcnQgcG9ydCA9IHRjLT5kaWdfcG9ydC0+
YmFzZS5wb3J0Ow0KPiA+ID4gIAl1MzIgdmFsOw0KPiA+ID4NCj4gPiA+ICsJYXNzZXJ0X3RjX3Bv
cnRfcG93ZXJfZW5hYmxlZCh0Yyk7DQo+ID4gPiArDQo+ID4gPiAgCXZhbCA9IGludGVsX2RlX3Jl
YWQoaTkxNSwgRERJX0JVRl9DVEwocG9ydCkpOw0KPiA+ID4gIAlyZXR1cm4gdmFsICYgRERJX0JV
Rl9DVExfVENfUEhZX09XTkVSU0hJUDsgIH0NCj4gPg0KPiA+IC0tDQo+ID4gSmFuaSBOaWt1bGEs
IEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcg0K
