Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4544D647301
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 16:30:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52DF810E4B4;
	Thu,  8 Dec 2022 15:30:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0C5E10E4B4
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 15:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670513430; x=1702049430;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=K4HWNCueUlTc+Uaof4XsIfnqWZBmbiVgZstJ+qcR2Xs=;
 b=hhmQ7ehVS4cDGAogQSyLUByoFirgxVkvgvLVGeBV6z8wHyJaMZGuUl0L
 Ob/fv8QwjgeO4wrw36gLzgv4b6GMuCtvYZqrf8B97vsJOs102D3yx02G+
 UQgxmiKl2k79PDNsAVMgjfnL0QPpsEJpVDSErLXhXuYYeY9qxPq9uNNOh
 Q5AqUpbllkzR/SNiAGRnVqq1bK9iDSkCDzcbAWU7n6G9eJ+DFNk/MD7+/
 r1cDX3ze2GSZ5GyCJNbHFGZTMzqhp3KnU6x4sj7EdhCVUDCHaUFNLNW06
 0MqqjHCt2JCkwnu+0ZDU11+YcqvbajEFLLrx+LbDLoggTEHGMbpqdV2Uf w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="344240888"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="344240888"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 07:30:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="892274196"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="892274196"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 08 Dec 2022 07:30:24 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 8 Dec 2022 07:30:24 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 8 Dec 2022 07:30:24 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 8 Dec 2022 07:30:24 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 8 Dec 2022 07:30:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R7Oca1cFMcf+inMtEFFlA/zVES6+rDLuNDsZLcd0/WT3gSgPb+Cl50YYCu6H1pLx3mLYSC2VuTDc2uoC8kVwRYZ3+FSYG68X504XnFXkgEwAegcbNPARjLgYm5C1QNNfQqJbZrCxGqSJDGktX7zhAWaOETNn+/U+4hk/JcTeIQkAzvpARhoH5iaA6qJI24DD8mC08X35fRhjHrufUBgM5vd37cE0bJcFaJbnGRP1DOyoe60GSoEAk8fiC0hs2LLJO6JjTuaQvXLsdH87i+w38uYX/QDUdHcrWdOamXJVqU51VrI2FqN3Jx655q1XKWHRS0xBDg21s3m4KNzrjGxvPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K4HWNCueUlTc+Uaof4XsIfnqWZBmbiVgZstJ+qcR2Xs=;
 b=lvbMxy9JbiJ051IoZBjUmg8uEuKl1lTpZrXGLpwTUqtR+cap+AS05nEAX8Y863FaENXVilgGNFtjOfdutWla56RSR/KnoAxSNT0ZV55Ch03Pp3tDmNNEvX3sBkj1hcV9CObDhfN4HO5mvdXlaO0XaXR+yL06cJDLZjB64sZ1/b67hT+83NV2A6ryQWMrqWwCJA5tIdV/ivmQH0CUozMlXAmSjBVtaM21wij/Mq4XiZ4VToy5A6XPqCYguSr4SK5OiTtDcB74qP4lyU2MShl4knxXoDvNh2o/3cpdx1cVugC1C9fqP4ACGfIzwHiK8jzQb/RYhtYiBhj3iSe0dos80w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Thu, 8 Dec
 2022 15:30:18 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 15:30:17 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 6/9] drm/i915: Reject unusablee power sequencers
Thread-Index: AQHZAPPjyD0DvEQs4Eemi515DE8Ntq5kMeVw
Date: Thu, 8 Dec 2022 15:30:17 +0000
Message-ID: <PH7PR11MB5981A0B1507801392B2B0356F91D9@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
 <20221125173156.31689-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20221125173156.31689-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SN7PR11MB7540:EE_
x-ms-office365-filtering-correlation-id: 575d20c3-df28-4441-e5b3-08dad9311c58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UXLfmqMTn3nSYvmvGaXLDyJHQgPIR9Qdj/ztcBW/XhjuE/X5wM8D87i9EgCfccAhKIoZ0vi4752DDWxy8HFTn1Bs3yDezfHnLKbzqNNvhSWxOac+5YY2hfX0RddNSwL7jkPDCPb3NoMdjmtLkdz7BM11iOE+08+1kWoS21VjGyEFT8tWx0/gLfHF6sLmLfuYOdsIA6OOc1Dbi4yr9ZIauu+FcCcNnd8Ud8r+o4J6BzUtkkdwM1RVFJ74kPXI+7bm9Qz4e1ybhHp98lpMkyqS+qkfc8HCgZEuqX4KiJbgCiBi7B2AQHqetL7ArO3aalB8sKHpkCpmLoxl/khf7EfJjjXW7QhXTX0oPq+BycDMY0j4REDE4BNB/9W22khcS/aavAYetJuYZ1/pFrF/4mtF8TyEsR9/Yu6m9JaI4Nc98Y4L6LlwyXGbR8O1mYouxz2Zru3FVzmQOGwxabZ5hf2GjPKfMfDhez8+In1u0FMUXG7+v27w+Q9rSvGgOG1GtM9R0Zui0LRA9bcU3wX73Nsf+/dutxl6iP4KrtVLnHX20MijYD/eEY7CwqEM1CRQxXLA8za/ZpTVO6P7+Xagy3ul5YNuhvGOP7xmPLPekM3xnAtbP9SmGo8BTE4+Uhj3GTmQTcCvM5npvDvZcWepCo0sDc2pKTs56GMtOpuY3LB4JT1US+QbkMtbL7aix7PnW/RBL0Hui6fsWEPRECQ1mUtpJQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(451199015)(55016003)(66946007)(64756008)(122000001)(66476007)(66899015)(66446008)(33656002)(66556008)(8676002)(38100700002)(82960400001)(508600001)(86362001)(2906002)(186003)(110136005)(71200400001)(26005)(66574015)(6506007)(38070700005)(76116006)(83380400001)(7696005)(53546011)(8936002)(9686003)(52536014)(5660300002)(55236004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RXFpYzc2UEErS2p5QlF0M01sVFVvWFQyTzRWL2t4T2VKa3BicGdGbzlQQmp5?=
 =?utf-8?B?emEvVk5PR2ljNFpFNWp4UXRmR0FVWnowNWdBUTE1dGxwN0JPR2pOSE02a0Y5?=
 =?utf-8?B?UElVajZPdmtmalVBQ1dNSC9OdjNJN0w0VjJhMzB1Q21SNFBEZ0QraG5ReXVJ?=
 =?utf-8?B?UDFLWjJtNk44WFQyMUZ1QVFBdlpMNUQ1SVd3Vlltb1FObENza0Nvb3hPekFX?=
 =?utf-8?B?YjVVR0oyMkxwcXlrNXRldXV0KzAvcFh0QmxuM20zRmI1ZW5iemJkazNuODlZ?=
 =?utf-8?B?c1k1K1NidW05NWhKUFN5ZTNFZTBZUzBXditySDA4ZGtrVTVldmhWbjVQWWox?=
 =?utf-8?B?N0ZncG03RmNkblF2dXIzbndjWHBxUDJHVG0zMEJUZFVaL1BDaFRyMTZlUFQr?=
 =?utf-8?B?UmxaYVI5aXhDc3I5alVhT1ZlQ0pneExuSzdFcWRRU2pYdERsK2ZUNlVHRytl?=
 =?utf-8?B?SnRUSzBpNEpSam1mZ1FtYWpKTnpzeGYzZ0NYZ3ZrR0dMQXdkb255STFhWGhZ?=
 =?utf-8?B?WGttSGNmYjlzajJaTFl0TVo0WjBDSzRTWWNNaHRtVVBvYkh2L2c2cXNpUVRi?=
 =?utf-8?B?c3Vmd1FjWDlkcEMwK1JWeStQYmJuQW5Qb29XK0dsUUNrTVlXNVBkUEVQZDYz?=
 =?utf-8?B?emIzaVgvaEtMa2F1ZHd1RWIzMHZMOWYyZVFsdFBiRWF3TytFMG9LMGROdU5E?=
 =?utf-8?B?UTdzSFRBVVFRMjUrNHE4YzA2YWtVM2FJSWZWR0hiMkNGM0UybnM3Q0VMV2ZJ?=
 =?utf-8?B?bUVYaW4rY1JKZXY0NzZYZGV4Q1FVazBzWGtHRjFvM2RRbTF6dDFGalpsUVpv?=
 =?utf-8?B?VXk0K01URWkrZ1RpTndNd0s0Y0NSWHJHbHVaVEowUElJeTRVSSs3TTl0L2g5?=
 =?utf-8?B?SjRZRjRUeGJNNEVqeWwvZ0xpOWE5UFlRbzBaRUpaeDc2bXFzUVRSZGRzOEtp?=
 =?utf-8?B?RHhGZGs1bGxZUEYwY1hsRUV0cTBNTXZyblRJRVBKc3VIWlQrd2xwdW9JMmlp?=
 =?utf-8?B?R1RoemZ2Mmo1bW4xNEVYMzllbEVmeWk3b003S0NGK3RQbWhTS0xrR0sraUFn?=
 =?utf-8?B?Mzk0UDhJSUdwTUUyc1Rnb3JHclNWZlYrZ2I3SzNDZGI4T051RmorVXhRZXpR?=
 =?utf-8?B?ZVk1cVQzSjFZaDdET1N3dkZxQkVCVUZQRVZrZUlEVGthVG56RCtoR3B6UXNM?=
 =?utf-8?B?QXVjN2E1YzNGZ21rT0lKOFZPbStEK2hsS0UvUzB0bjhTeDYzckVYeDErb3h6?=
 =?utf-8?B?K24vNWZDL2pkU0x5NmU2YVlIK1ltVXZaSUVMVHN4OFNtOUFlR1Zhd3dxMzlX?=
 =?utf-8?B?SVlFVmEzWEoybWY4Tlc5c2doZ1M5QkpCeVkrcmZzRFhQNllnOTFzNEVSazY4?=
 =?utf-8?B?OGgrSThHY0F3VUVCQjdGRnRUdi9TcWU3Q0hNSGtXREZ5aklyREYwRnl1bG5J?=
 =?utf-8?B?bUYrK2dET3pKc3JZa3NvZ2svOUdxcHB3QzR4UDZocyt4Mk8xaFMxZHRWTFhT?=
 =?utf-8?B?bmkxMlNSTzloOWxPc0xmaUs5aXpKbkJubHFxM1YrWlRMaW1EMGdJNzM3aldY?=
 =?utf-8?B?ZTNXK3RjL2hiTFJYbmNRS2JTUnFmOGRBS2NSaHVPTDN6Vm5kaDJHMTZtb2JP?=
 =?utf-8?B?dGJkaXQxVlpaN2M5cXh0SVBmcC8zc1c0QnpGTGs0WDR1YzhtLzEzZXMvNUpv?=
 =?utf-8?B?Z3drT1NUSmdlNVZ0bVp5bWZXeDViUHpFVGdsaWhQWlFTUWNYT0NHT2F1VjJk?=
 =?utf-8?B?Rlp0aFRwWnR4bjVnam04L0w2REh4Wm1qSzJSZnI0ZjJnT2FWemNLOXlhTFB6?=
 =?utf-8?B?QlpVMXNlS2V5MVd6MHNKWjBnQkF0Zk5XbThsalpUNllFS0NpMlNoaGs4ZEUx?=
 =?utf-8?B?K2pUeStodEYxT1hUU2dEMXdmNUJvS2pMcHcra3UwQ1h3RVk5SHM4ajlXRTRN?=
 =?utf-8?B?U1pDUlJiQnFDS21ZK0hoTUdKK2JzVFo4YVRlRk00L1VZZDVOSlFUeWV1TjQ3?=
 =?utf-8?B?clBSMGlEMGdGdnlYN1h1bXBWcmpHeDAyRncwalRDMXg4anV5dm53cUhDaXFD?=
 =?utf-8?B?UThrMnU2Y0NrM1VkdVNqNUlneURBa0ZyLytCU2R5M09oVWlweWpyYlZJT0kw?=
 =?utf-8?Q?dd+akroBYcXsDmHMrlgwYiv0Q?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 575d20c3-df28-4441-e5b3-08dad9311c58
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2022 15:30:17.7934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: //xAzXL/NpwQyFsX+wfevnTm+wJIjdLkdYGkHJC9n8p1TdvKvAwqaLzJl4lIhGpaKmC8Wec69PJClDRtgXr7DA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7540
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 6/9] drm/i915: Reject unusablee power
 sequencers
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTm92ZW1iZXIg
MjUsIDIwMjIgMTE6MDIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW1BBVENIIHYyIDYvOV0gZHJtL2k5MTU6IFJlamVjdCB1bnVzYWJsZWUgcG93ZXIgc2VxdWVu
Y2Vycw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gDQo+IE9uIElDUC1BRFAgdGhlIHBpbnMgdXNlZCBieSB0aGUgc2Vjb25kIFBQ
UyBjYW4gYmUgYWx0ZXJuYXRpdmVseSBtdXhlZCB0bw0KPiBzb21lIG90aGVyIGZ1bmN0aW9uLiBJ
biB0aGF0IGNhc2UgdGhlIHNlY29uZCBwb3dlciBzZXF1ZW5jZXIgaXMgdW51c2FibGUuDQo+IA0K
PiBVbmZvcnR1bmF0ZWx5IChvbiBteSBBREwgVGhpbmtwYWQgVDE0IGdlbjMgYXQgbGVhc3QpIHRo
ZSBCSU9TIHN0aWxsIGxpa2VzIHRvDQo+IGVuYWJsZSB0aGUgVkREIG9uIHRoZSBzZWNvbmQgUFBT
IChkdWUgdG8gdGhlIFZCVCBkZWNsYXJpbmcgdGhlIHNlY29uZA0KPiBib2d1cyBlRFAgcGFuZWwp
IGV2ZW4gd2hlbiBub3QgY29ycmVjdGx5IG11eGVkLCBzbyB3ZSBuZWVkIHRvIGRlYWwgd2l0aCBp
dA0KPiBzb21laG93Lg0KPiBGb3Igbm93IGxldCdzIGp1c3QgaW5pdGlhbGl6ZSB0aGUgUFBTIGFz
IG5vcm1hbCwgYW5kIHRoZW4gdXNlIHRoZSBub3JtYWwgZURQDQo+IHByb2JlIGZhaWx1cmUgVkRE
IG9mZiBwYXRoIHRvIHR1cm4gaXQgb2ZmIChhbmQgcmVsZWFzZSB0aGUgd2FrZXJlZiB0aGUgUFBT
IGluaXQNCj4gZ3JhYmJlZCkuIFRoZSBhbHRlcm5hdGl2ZSBvZiBqdXN0IGRlY2xhcmluZyB0aGF0
IHRoZSBwbGF0Zm9ybSBoYXMgYSBzaW5nbGUgUFBTDQo+IGRvZXNuJ3QgcmVhbGx5IHdvcmsgc2lu
Y2UgaXQgd291bGQgY2F1c2UgdGhlIHNlY29uZCBlRFAgcHJvYmUgdG8gYWxzbyB0cnkgdG8NCj4g
dXNlIHRoZSBmaXJzdCBQUFMgYW5kIHRodXMgY2xvYmJlciB0aGUgc3RhdGUgZm9yIHRoZSBmaXJz
dCAocmVhbCkgZURQIHBhbmVsLg0KPiANCj4gQ2M6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFu
bmFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5p
bWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMgIHwgMTIgKysrKysrKystDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHBzLmMgfCAzNCArKysrKysrKysrKysrKysrKy0tLS0tLS0NCj4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuaCB8ICAyICstDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgIHwgIDEgKw0KPiAgNCBmaWxlcyBjaGFu
Z2VkLCAzOCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggYzFiZWJlNzdlZDhlLi45ZGVh
YTVlMzYzMmEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMN
Cj4gQEAgLTUyODMsNyArNTI4MywxNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9lZHBfaW5pdF9jb25u
ZWN0b3Ioc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAlpbnRlbF9iaW9zX2luaXRf
cGFuZWxfZWFybHkoZGV2X3ByaXYsICZpbnRlbF9jb25uZWN0b3ItPnBhbmVsLA0KPiAgCQkJCSAg
ICBlbmNvZGVyLT5kZXZkYXRhKTsNCj4gDQo+IC0JaW50ZWxfcHBzX2luaXQoaW50ZWxfZHApOw0K
PiArCWlmICghaW50ZWxfcHBzX2luaXQoaW50ZWxfZHApKSB7DQo+ICsJCWRybV9pbmZvKCZkZXZf
cHJpdi0+ZHJtLA0KPiArCQkJICJbRU5DT0RFUjolZDolc10gdW51c2FibGUgUFBTLCBkaXNhYmxp
bmcgZURQXG4iLA0KPiArCQkJIGVuY29kZXItPmJhc2UuYmFzZS5pZCwgZW5jb2Rlci0+YmFzZS5u
YW1lKTsNCj4gKwkJLyoNCj4gKwkJICogVGhlIEJJT1MgbWF5IGhhdmUgc3RpbGwgZW5hYmxlZCBW
REQgb24gdGhlIFBQUyBldmVuDQo+ICsJCSAqIHRob3VnaCBpdCdzIHVudXNhYmxlLiBNYWtlIHN1
cmUgd2UgdHVybiBpdCBiYWNrIG9mZg0KPiArCQkgKiBhbmQgdG8gcmVsZWFzZSB0aGUgcG93ZXIg
ZG9tYWluIHJlZmVyZW5jZXMvZXRjLg0KPiArCQkgKi8NCj4gKwkJZ290byBvdXRfdmRkX29mZjsN
Cj4gKwl9DQo+IA0KPiAgCS8qIENhY2hlIERQQ0QgYW5kIEVESUQgZm9yIGVkcC4gKi8NCj4gIAlo
YXNfZHBjZCA9IGludGVsX2VkcF9pbml0X2RwY2QoaW50ZWxfZHApOyBkaWZmIC0tZ2l0DQo+IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYw0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMNCj4gaW5kZXggNzdiMGE0ZjI3YWJjLi5kMThj
MWM1OGRmY2YgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHBzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMu
Yw0KPiBAQCAtMzI3LDYgKzMyNywxOCBAQCBzdGF0aWMgaW50IGludGVsX251bV9wcHMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUNCj4gKmk5MTUpDQo+ICAJcmV0dXJuIDE7DQo+ICB9DQo+IA0KPiAr
c3RhdGljIGJvb2wgaW50ZWxfcHBzX2lzX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
IHsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxf
ZHApOw0KPiArDQo+ICsJaWYgKGludGVsX2RwLT5wcHMucHBzX2lkeCA9PSAxICYmDQo+ICsJICAg
IElOVEVMX1BDSF9UWVBFKGk5MTUpID49IFBDSF9JQ1AgJiYNCj4gKwkgICAgSU5URUxfUENIX1RZ
UEUoaTkxNSkgPCBQQ0hfTVRQKQ0KPiArCQlyZXR1cm4gaW50ZWxfZGVfcmVhZChpOTE1LCBTT1VU
SF9DSElDS0VOMSkgJg0KPiArSUNQX1NFQ09ORF9QUFNfSU9fU0VMRUNUOw0KPiArDQo+ICsJcmV0
dXJuIHRydWU7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBpbnQNCj4gIGJ4dF9pbml0aWFsX3Bwc19p
ZHgoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHBwc19jaGVjayBjaGVjaykgIHsgQEAg
LQ0KPiAzNDAsNyArMzUyLDcgQEAgYnh0X2luaXRpYWxfcHBzX2lkeChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwNCj4gcHBzX2NoZWNrIGNoZWNrKQ0KPiAgCXJldHVybiAtMTsNCj4gIH0N
Cj4gDQo+IC1zdGF0aWMgdm9pZA0KPiArc3RhdGljIGJvb2wNCj4gIHBwc19pbml0aWFsX3NldHVw
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApICB7DQo+ICAJc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIgPSAmZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApLT5iYXNlOw0KPiBAQCAtMzUxLDcg
KzM2Myw3IEBAIHBwc19pbml0aWFsX3NldHVwKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+
IA0KPiAgCWlmIChJU19WQUxMRVlWSUVXKGk5MTUpIHx8IElTX0NIRVJSWVZJRVcoaTkxNSkpIHsN
Cj4gIAkJdmx2X2luaXRpYWxfcG93ZXJfc2VxdWVuY2VyX3NldHVwKGludGVsX2RwKTsNCj4gLQkJ
cmV0dXJuOw0KPiArCQlyZXR1cm4gdHJ1ZTsNCj4gIAl9DQo+IA0KPiAgCS8qIGZpcnN0IGFzayB0
aGUgVkJUICovDQo+IEBAIC0zNzcsMTMgKzM4OSwxNCBAQCBwcHNfaW5pdGlhbF9zZXR1cChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCQkJICAgICJbRU5DT0RFUjolZDolc10gbm8gaW5p
dGlhbCBwb3dlciBzZXF1ZW5jZXIsDQo+IGFzc3VtaW5nICVkXG4iLA0KPiAgCQkJICAgIGVuY29k
ZXItPmJhc2UuYmFzZS5pZCwgZW5jb2Rlci0+YmFzZS5uYW1lLA0KPiAgCQkJICAgIGludGVsX2Rw
LT5wcHMucHBzX2lkeCk7DQo+IC0JCXJldHVybjsNCj4gKwl9IGVsc2Ugew0KPiArCQlkcm1fZGJn
X2ttcygmaTkxNS0+ZHJtLA0KPiArCQkJICAgICJbRU5DT0RFUjolZDolc10gaW5pdGlhbCBwb3dl
ciBzZXF1ZW5jZXI6DQo+ICVkXG4iLA0KPiArCQkJICAgIGVuY29kZXItPmJhc2UuYmFzZS5pZCwg
ZW5jb2Rlci0+YmFzZS5uYW1lLA0KPiArCQkJICAgIGludGVsX2RwLT5wcHMucHBzX2lkeCk7DQo+
ICAJfQ0KPiANCj4gLQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiAtCQkgICAgIltFTkNPREVS
OiVkOiVzXSBpbml0aWFsIHBvd2VyIHNlcXVlbmNlcjogJWRcbiIsDQo+IC0JCSAgICBlbmNvZGVy
LT5iYXNlLmJhc2UuaWQsIGVuY29kZXItPmJhc2UubmFtZSwNCj4gLQkJICAgIGludGVsX2RwLT5w
cHMucHBzX2lkeCk7DQo+ICsJcmV0dXJuIGludGVsX3Bwc19pc192YWxpZChpbnRlbF9kcCk7DQo+
ICB9DQo+IA0KPiAgdm9pZCBpbnRlbF9wcHNfcmVzZXRfYWxsKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikgQEAgLTE1MDQsOQ0KPiArMTUxNywxMCBAQCB2b2lkIGludGVsX3Bwc19l
bmNvZGVyX3Jlc2V0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJfQ0KPiAgfQ0KPiAN
Cj4gLXZvaWQgaW50ZWxfcHBzX2luaXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gK2Jv
b2wgaW50ZWxfcHBzX2luaXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIHsNCj4gIAlp
bnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsNCj4gKwlib29sIHJldDsNCj4gDQo+ICAJaW50ZWxfZHAt
PnBwcy5pbml0aWFsaXppbmcgPSB0cnVlOw0KPiAgCUlOSVRfREVMQVlFRF9XT1JLKCZpbnRlbF9k
cC0+cHBzLnBhbmVsX3ZkZF93b3JrLA0KPiBlZHBfcGFuZWxfdmRkX3dvcmspOyBAQCAtMTUxNCwx
MiArMTUyOCwxNCBAQCB2b2lkDQo+IGludGVsX3Bwc19pbml0KHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHApDQo+ICAJcHBzX2luaXRfdGltZXN0YW1wcyhpbnRlbF9kcCk7DQo+IA0KPiAgCXdpdGhf
aW50ZWxfcHBzX2xvY2soaW50ZWxfZHAsIHdha2VyZWYpIHsNCj4gLQkJcHBzX2luaXRpYWxfc2V0
dXAoaW50ZWxfZHApOw0KPiArCQlyZXQgPSBwcHNfaW5pdGlhbF9zZXR1cChpbnRlbF9kcCk7DQo+
IA0KPiAgCQlwcHNfaW5pdF9kZWxheXMoaW50ZWxfZHApOw0KPiAgCQlwcHNfaW5pdF9yZWdpc3Rl
cnMoaW50ZWxfZHAsIGZhbHNlKTsNCj4gIAkJcHBzX3ZkZF9pbml0KGludGVsX2RwKTsNCj4gIAl9
DQo+ICsNCj4gKwlyZXR1cm4gcmV0Ow0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIHBwc19pbml0
X2xhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bwcy5oDQo+IGluZGV4IGEzYTU2ZjkwM2YyNi4uYTJjMjQ2N2UzYzIy
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bwcy5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmgNCj4gQEAg
LTQwLDcgKzQwLDcgQEAgdm9pZCBpbnRlbF9wcHNfdmRkX29mZl9zeW5jKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApOw0KPiBib29sIGludGVsX3Bwc19oYXZlX3BhbmVsX3Bvd2VyX29yX3ZkZChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsgIHZvaWQNCj4gaW50ZWxfcHBzX3dhaXRfcG93ZXJf
Y3ljbGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+IA0KPiAtdm9pZCBpbnRlbF9wcHNf
aW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gK2Jvb2wgaW50ZWxfcHBzX2luaXQo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+ICB2b2lkIGludGVsX3Bwc19pbml0X2xhdGUo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7ICB2b2lkDQo+IGludGVsX3Bwc19lbmNvZGVyX3Jl
c2V0KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOyAgdm9pZA0KPiBpbnRlbF9wcHNfcmVzZXRf
YWxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsgZGlmZiAtLWdpdA0KPiBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oDQo+IGluZGV4IDBiOTBmZTZhMjhmNy4uZWJiNDU5MzU3NTBjIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgNCj4gQEAgLTYyNDIsNiArNjI0Miw3IEBADQo+ICAjZGVmaW5lICBDSEFT
U0lTX0NMS19SRVFfRFVSQVRJT05fTUFTSwkoMHhmIDw8IDgpDQo+ICAjZGVmaW5lICBDSEFTU0lT
X0NMS19SRVFfRFVSQVRJT04oeCkJKCh4KSA8PCA4KQ0KPiAgI2RlZmluZSAgU0JDTEtfUlVOX1JF
RkNMS19ESVMJCSgxIDw8IDcpDQo+ICsjZGVmaW5lICBJQ1BfU0VDT05EX1BQU19JT19TRUxFQ1QJ
UkVHX0JJVCgyKQ0KPiAgI2RlZmluZSAgU1BUX1BXTV9HUkFOVUxBUklUWQkJKDEgPDwgMCkNCj4g
ICNkZWZpbmUgU09VVEhfQ0hJQ0tFTjIJCV9NTUlPKDB4YzIwMDQpDQo+ICAjZGVmaW5lICBGRElf
TVBIWV9JT1NGU0JfUkVTRVRfU1RBVFVTCSgxIDw8IDEzKQ0KPiAtLQ0KPiAyLjM3LjQNCg0K
