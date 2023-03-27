Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F146CA2DE
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 13:52:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 882F010E396;
	Mon, 27 Mar 2023 11:52:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A27910E396
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 11:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679917950; x=1711453950;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LZcG4vEjPeGS+6r8lJrTMSkgoRf1LGj5/5QBUEsQOgM=;
 b=PCZQk/3hFGIv0mZWpmHu2DTXjKOSapLAyblMBskn2l0BKEXok7xm+2l+
 5rA6QEXR8SS/C0W9yw55e+VMDsaBHskXT+tXvR/SNC78lizZ7zgpD9Rw6
 W+gvxOk0gpmHKWAxe3iaOhcwBhqGC9dCTjDXa1jXy/jVNPPnP6l4Zob/4
 U98vil00+4vkiOtJo5zcskMqdIxZJuZUYez6Vff30KomTI2kDnIh6dsvX
 VadiCU+h2y2z5wmuvVzH7Lyhd9dpG8OnG5nFsrGPDjs9mq++R80NqGVYl
 zeXrC0s/X7cxxqEQYLKboKeA9Dw823sPHSCyAdjkqNhjZnStBJsxB7pXE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="342645680"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="342645680"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 04:52:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="772670694"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="772670694"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Mar 2023 04:52:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 04:52:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 04:52:29 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 04:52:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQY7n5kqVmpzE5L3NqCuoWGnsCdUnHbgZpC0y8ivoN9J198B6w663Hwac4NQLIV/OWvF7fVtV4B1jJONjxMDm4SXHLNlChgwBzhxA9yfBliHrC9lUNW5M4vyVi53+U2jmUtWAJU8w6/19xmy9dkrCOAhuPaVBXW2pskuQgfgPJAliuC5oBFGq39RY5gAdHulADmSbeWSKQ25rrwqoFQ9lfEBIkVJYy+81Aw41sAfXyXXtb97OrN+mrJFa4QJ5JKE8v9LzSS7+sm604hUKnrxyTN/ZHiuO8MTJF56P9QosA+hwtxyxNeUkaOS5V1ZUo1OFjFt5nUucNmgn1u+NzponQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LZcG4vEjPeGS+6r8lJrTMSkgoRf1LGj5/5QBUEsQOgM=;
 b=FZ9Jn3mWpq46j81mSAVugheUGMQw/W5Am40seP+7JWgaY3CJMju2AjGMhzw6wz+SiTSU4v8fUYJy7gtdn/e8udt0jvPi/atVdsMbHhdjup5L4Xd/Y/oopBL8HJku1axDqv3GV6owwnEiNBSJg6u92kFDeUujv6iM3hn+PkzZ6DfJqek6kK6KWAzgCKB6NEq3x11WIlEwJ3OQFAa5iZM0N3GrF2glbq+QEY7/BPJa7cqeD9F1SyWzDG82llWyIfQ0UM7yHkSOyMUPS/l8/wWr4fivma12p4xw8b0ROtmGYxtq14ywWXfrE8I/yYzaU6kfAcyA/QSpe6yheAP9zf8JeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CH3PR11MB7392.namprd11.prod.outlook.com (2603:10b6:610:145::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Mon, 27 Mar
 2023 11:52:26 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%6]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 11:52:26 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 16/29] drm/i915/tc: Block/unblock TC-cold in
 the PHY connect/disconnect hooks
Thread-Index: AQHZXZLey54SxKARq0KALiBSBVtLv68Oie+w
Date: Mon, 27 Mar 2023 11:52:25 +0000
Message-ID: <MW4PR11MB70542957A96A8D3F44F1758BEF8B9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-17-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-17-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CH3PR11MB7392:EE_
x-ms-office365-filtering-correlation-id: 1c112d3f-9bec-43bc-f068-08db2eb9bbe9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3AFAFbuuECML15+BgRqjM3Q8ntbz8mCNCFLLQwxiGZ5DW821GokzMBVJg9sjnnBdka1yJGTslUU15UHkCPe4KZblOc2byOTH7fyy37TkByQhgjE+bH8cgasBUkJlYHIcOBS9L4tsEW94ZzuVNnpn0pPCwaxn3fp6l9HIwtZCAEJynSAt6B1MhBCa0tnp5CFZ2PAsZzOZuTczyY3cFLeAANYeR9GBvZ190fYkEtNPeT3rGYtrbpKqTe0YFvEIF/gtFalE2I1TLrQbtEqgIVpBx9NMnSuZjD/H2ekYdzyqgpqEchD/QafEwAZ+Iza01LX9hmv+YkPtXVf+f37Rh9tpzBvHm5pbrVKRPmdxnV9svsDMMibMpl9KUW1n8b+TVFiQSLZeRzs4u5jysZqCXUnvQOMm6oRHQpQPlNg9QuUHisHImQ0FxXDGbgEuUUFO4orbOhDxrMsV28JggGbrRK7gJUYVCiT8L3vvst6HzTAXwjXXv6Te/DmRT/5amFOKP3LsokN+F3/LwEdPZY5UCdCPYk6SUd7UYJS2ynBxf53MlePTtk11jG6LAWsP5JsYIFe3gqnVF8eWSrZ5dZjrffUBcy4KuwfbbCGug6PaUxRpKbMNfgM/pJdgjJso4+TXAEgf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(376002)(136003)(346002)(366004)(451199021)(33656002)(82960400001)(55016003)(2906002)(66556008)(64756008)(52536014)(66446008)(41300700001)(8676002)(316002)(9686003)(53546011)(5660300002)(8936002)(110136005)(186003)(66476007)(76116006)(66946007)(6506007)(478600001)(83380400001)(26005)(71200400001)(38070700005)(122000001)(7696005)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MWt5SEtHSmxvTHpOQWc3aytzbGN1R0ordjEyZkx1bFNXK2F0QjJJaWRLM21O?=
 =?utf-8?B?UmZaNEpXeVM3bHB5Z2ljZlNQRm9maGNNWlpSbEtyaStnSVdwWXVQZWVLenlX?=
 =?utf-8?B?UG96MGlxV1M5TXdoWDNxTTRxS3EwL1hyeExGZXM5UXByQzE0UjNBYm9UYng2?=
 =?utf-8?B?a0lnTUZxVkFCS2Q0UVNzdmhaRE9oY3NCTHhNaFJON3FCWWcrcDNORmUxajFV?=
 =?utf-8?B?MGVKUmlBNW5qajY3bDlxenFaSnk5T0RwVzJoWXBhd2J4YUZzYUxLR3dhYWo0?=
 =?utf-8?B?aUtuRktCQVM1TUJHV1grRjRqS0VPRnI4RlpYUVVsMnA3b29BQ0k3Z3ZUSDd6?=
 =?utf-8?B?d0dEbCtCQnZldGlEUVVaQ3oxbTdRRWIzQSs0NjE3TjRjUldydS9uQ1JjWDJk?=
 =?utf-8?B?SVpTRUNseTNlNXF1c3Z3NHE4MVV4YjhCUnptbUN2cFJTbW1yUkk3OE91RGVE?=
 =?utf-8?B?ZXZ2RlZPWEtIUndqbHdIMTZiNHIwV1dNbnFyQVpLc05qVFQ3NitSK1g4UlJL?=
 =?utf-8?B?QkpLTGVoM2wwVjY2Yi9HclYyNzhsZ3FoclFMdUhtY3RoUDhYM0NIbkNEb2V0?=
 =?utf-8?B?cy92eWgxTlRmUEpkV1FtTjVFbkl3RVg5QXB0VDdod0Q2cXNIZGIxTGFoTFlM?=
 =?utf-8?B?RUVSZXE3QUhEUnpHaXdIZmo0NFFvUEgzdGR3VlhmTmc4c1pNQStZSmczK0dE?=
 =?utf-8?B?NWVUN1pZNHpjekNBTW05WWNOK0xuZVdxREFvL3dRcEFIMmFnWGJNQ1I0ZURE?=
 =?utf-8?B?S0hMZlZtNXhVdUlVMk54NDE0cHMrWVFYWGdFbVhZdWI1ZGx2SkZJQ0dGMDFi?=
 =?utf-8?B?QlBTek1tZDFENXBqTG5XZDVDdEhiQXlVM0tuVzhPVVltaElGNm03UjVYODNv?=
 =?utf-8?B?cGdNTEhhQ3ZUZ29YRUdULzNaZU5WemdpbldGcWwrZDRIK1R2WUxVUkVJWDA2?=
 =?utf-8?B?ejZINXFzM3FZdUZ6VEYrMkw0b2U3M3dwRXB6TkxoYytmTUIrSmRxTGkwd0pp?=
 =?utf-8?B?dDZyLzhyV3hub1pBbmtzVEtJa2xMU2g0NzRhVStOWmppN0NsTGRRaW1rQ2Jh?=
 =?utf-8?B?RkpLc0RXNDRuYUtPYmZyMWNpNlJhdDNuVmdnem1POUpjZEhyeW91SmF1WTVK?=
 =?utf-8?B?OU12ZDNhMTY5T2lFNVF1K1FMeXBmdnB3YnFnbGNMNCszVndPcTFUQTE2UWNa?=
 =?utf-8?B?WnFGYm4xV0FvaUhyMklNb0xqM1NzTzZpY2ZoTXo4UGdqRXEzaGxtUFFHMGZG?=
 =?utf-8?B?dmNrSTVZT3BNbUg2czk1OGJWakErOGo0emFKbGxsU2JnQ25hajRLMk9nMzRq?=
 =?utf-8?B?M0ZnWjcwM25qVnNHTnkydXA3Y211WVhiL2NtVkhrMVg2RitTcnc4N09BbGpL?=
 =?utf-8?B?WkN5dVdCV3ZpczJNT1dLMHN3NFoweHJobW13UnFhdVNKajk1YzhOYzJlR3ZK?=
 =?utf-8?B?cWIvaDJGUjBKMDFTMUN3dURVVGtqRm0vRDJOd29RS25ZUjFqdDEzTW1GbHhJ?=
 =?utf-8?B?VXVxcHJvZjNHZTE4M2dKb1FvY2paM2lTOHMrekE1aDIyQVJEUzZnQzNaTkVz?=
 =?utf-8?B?S0w2bDN6WFg4bjgvY3JOQlBjbEFtRUx5dmhMR3hkbEg4dzBiazhBYktJdkJo?=
 =?utf-8?B?ZHNtaXh6MnZhNzhqL1NEMWFOcEZmMkNUNFBXSGY3NFZ4Q01lUTZxQmViSWx1?=
 =?utf-8?B?d1F5cXVuNUVtZllMNHExYlVCbDR2aHF1ODVhQTk1b1lOdXdlYVNETndMZm1V?=
 =?utf-8?B?U3NhRmlhbDBzR0haeG85aEFIdktIT2EyNURtOHBPclc0VXdoTCtZVTRQaDZr?=
 =?utf-8?B?Y0I1S2FDaTVicGg0WElxNGU5Vm1MZ1YzOTNIaTZtSnFIdFlocTdPbHY4dE02?=
 =?utf-8?B?dnRhNkc5Y3hmQkVrL0x5T1RIMFNHYVBhUHk2bHNLUnlxazFYQkZ0bzgrTUoz?=
 =?utf-8?B?WnhQS3RYOGMzeE9rR3dLVXBzRThKR2xGQjc5NmhxODhpVUhaNTBtZTVxR0pz?=
 =?utf-8?B?ZUpLWEU2aWE0SmJ1UEU0S00yMUlVZlV5RjF2bitJMy9LVVd6TnlibjF0bC8v?=
 =?utf-8?B?MlgyV0tFeTlVdWcxYlNKbmg3WTVFOHA2S1Ntb2lKMGxPMG1acWRxNy9hb0tS?=
 =?utf-8?Q?UERc94X1/sYlx0fJGShZUYEIY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c112d3f-9bec-43bc-f068-08db2eb9bbe9
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 11:52:25.9399 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wSqqIzP/+cw6LeC1cP1flBa7n6tRp2nCW2A3mZDg4gef/n0R1zPdt1hazxtjA3096HimFJC6PurW34ohvtVu8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7392
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 16/29] drm/i915/tc: Block/unblock TC-cold in
 the PHY connect/disconnect hooks
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
MTYvMjldIGRybS9pOTE1L3RjOiBCbG9jay91bmJsb2NrIFRDLWNvbGQgaW4gdGhlDQo+IFBIWSBj
b25uZWN0L2Rpc2Nvbm5lY3QgaG9va3MNCj4gDQo+IE1vdmUgYmxvY2tpbmcvdW5ibG9ja2luZyB0
aGUgVEMtY29sZCBwb3dlciBzdGF0ZSB0byB0aGUgcGxhdGZvcm0gc3BlY2lmaWMgUEhZDQo+IGNv
bm5lY3QgLyBkaXNjb25uZWN0IGhvb2tzLiBUaGlzIGFsbG93cyBmb3IgYWRqdXN0aW5nIHRoZSBj
b25uZWN0L2Rpc2Nvbm5lY3QNCj4gc2VxdWVuY2UgYXMgcmVxdWlyZWQgZm9yIGVhY2ggcGxhdGZv
cm0uDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNv
bT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgNDMgKysr
KysrKystLS0tLS0tLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMo
KyksIDMwIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdGMuYw0KPiBpbmRleCBlOGJkNTRkMTU4MmJjLi4yNTNhYjMwYzM0ZjdhIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IEBAIC00ODIsNiArNDgy
LDggQEAgc3RhdGljIGJvb2wgaWNsX3RjX3BoeV9jb25uZWN0KHN0cnVjdCBpbnRlbF90Y19wb3J0
ICp0YywNCj4gew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdGNfdG9faTkx
NSh0Yyk7DQo+IA0KPiArCXRjLT5sb2NrX3dha2VyZWYgPSB0Y19jb2xkX2Jsb2NrKHRjLCAmdGMt
PmxvY2tfcG93ZXJfZG9tYWluKTsNCj4gKw0KPiAgCWlmICh0Yy0+bW9kZSA9PSBUQ19QT1JUX1RC
VF9BTFQpDQo+ICAJCXJldHVybiB0cnVlOw0KPiANCj4gQEAgLTQ5MSw3ICs0OTMsNyBAQCBzdGF0
aWMgYm9vbCBpY2xfdGNfcGh5X2Nvbm5lY3Qoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjLA0KPiAg
CQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiUG9ydCAlczogY2FuJ3QgdGFrZSBQSFkgb3duZXJz
aGlwDQo+IChyZWFkeSAlcylcbiIsDQo+ICAJCQkgICAgdGMtPnBvcnRfbmFtZSwNCj4gIAkJCSAg
ICBzdHJfeWVzX25vKHRjX3BoeV9pc19yZWFkeSh0YykpKTsNCj4gLQkJcmV0dXJuIGZhbHNlOw0K
PiArCQlnb3RvIG91dF91bmJsb2NrX3RjX2NvbGQ7DQo+ICAJfQ0KPiANCj4gDQo+IEBAIC01MDIs
NiArNTA0LDEwIEBAIHN0YXRpYyBib29sIGljbF90Y19waHlfY29ubmVjdChzdHJ1Y3QgaW50ZWxf
dGNfcG9ydCAqdGMsDQo+IA0KPiAgb3V0X3JlbGVhc2VfcGh5Og0KPiAgCXRjX3BoeV90YWtlX293
bmVyc2hpcCh0YywgZmFsc2UpOw0KPiArb3V0X3VuYmxvY2tfdGNfY29sZDoNCj4gKwl0Y19jb2xk
X3VuYmxvY2sodGMsDQo+ICsJCQl0Yy0+bG9ja19wb3dlcl9kb21haW4sDQo+ICsJCQlmZXRjaF9h
bmRfemVybygmdGMtPmxvY2tfd2FrZXJlZikpOw0KPiANCj4gIAlyZXR1cm4gZmFsc2U7DQo+ICB9
DQo+IEBAIC01MTgsNiArNTI0LDkgQEAgc3RhdGljIHZvaWQgaWNsX3RjX3BoeV9kaXNjb25uZWN0
KHN0cnVjdCBpbnRlbF90Y19wb3J0DQo+ICp0YykNCj4gIAkJdGNfcGh5X3Rha2Vfb3duZXJzaGlw
KHRjLCBmYWxzZSk7DQo+ICAJCWZhbGx0aHJvdWdoOw0KPiAgCWNhc2UgVENfUE9SVF9UQlRfQUxU
Og0KPiArCQl0Y19jb2xkX3VuYmxvY2sodGMsDQo+ICsJCQkJdGMtPmxvY2tfcG93ZXJfZG9tYWlu
LA0KPiArCQkJCWZldGNoX2FuZF96ZXJvKCZ0Yy0+bG9ja193YWtlcmVmKSk7DQo+ICAJCWJyZWFr
Ow0KPiAgCWRlZmF1bHQ6DQo+ICAJCU1JU1NJTkdfQ0FTRSh0Yy0+bW9kZSk7DQo+IEBAIC04ODgs
MzIgKzg5Nyw5IEBAIHN0YXRpYyBib29sIGludGVsX3RjX3BvcnRfbmVlZHNfcmVzZXQoc3RydWN0
DQo+IGludGVsX3RjX3BvcnQgKnRjKSAgc3RhdGljIHZvaWQgaW50ZWxfdGNfcG9ydF91cGRhdGVf
bW9kZShzdHJ1Y3QgaW50ZWxfdGNfcG9ydA0KPiAqdGMsDQo+ICAJCQkJICAgICAgaW50IHJlcXVp
cmVkX2xhbmVzLCBib29sIGZvcmNlX2Rpc2Nvbm5lY3QpICB7DQo+IC0JZW51bSBpbnRlbF9kaXNw
bGF5X3Bvd2VyX2RvbWFpbiBkb21haW47DQo+IC0JaW50ZWxfd2FrZXJlZl90IHdyZWY7DQo+IC0J
Ym9vbCBuZWVkc19yZXNldCA9IGZvcmNlX2Rpc2Nvbm5lY3Q7DQo+IC0NCj4gLQlpZiAoIW5lZWRz
X3Jlc2V0KSB7DQo+IC0JCS8qIEdldCBwb3dlciBkb21haW4gcmVxdWlyZWQgdG8gY2hlY2sgdGhl
IGhvdHBsdWcgbGl2ZSBzdGF0dXMuDQo+ICovDQo+IC0JCXdyZWYgPSB0Y19jb2xkX2Jsb2NrKHRj
LCAmZG9tYWluKTsNCj4gLQkJbmVlZHNfcmVzZXQgPSBpbnRlbF90Y19wb3J0X25lZWRzX3Jlc2V0
KHRjKTsNCj4gLQkJdGNfY29sZF91bmJsb2NrKHRjLCBkb21haW4sIHdyZWYpOw0KPiAtCX0NCj4g
LQ0KPiAtCWlmICghbmVlZHNfcmVzZXQpDQo+IC0JCXJldHVybjsNCj4gLQ0KPiAtCS8qIEdldCBw
b3dlciBkb21haW4gcmVxdWlyZWQgZm9yIHJlc2V0dGluZyB0aGUgbW9kZS4gKi8NCj4gLQl3cmVm
ID0gdGNfY29sZF9ibG9ja19pbl9tb2RlKHRjLCBUQ19QT1JUX0RJU0NPTk5FQ1RFRCwNCj4gJmRv
bWFpbik7DQo+IC0NCj4gLQlpbnRlbF90Y19wb3J0X3Jlc2V0X21vZGUodGMsIHJlcXVpcmVkX2xh
bmVzLCBmb3JjZV9kaXNjb25uZWN0KTsNCj4gLQ0KPiAtCS8qIEdldCBwb3dlciBkb21haW4gbWF0
Y2hpbmcgdGhlIG5ldyBtb2RlIGFmdGVyIHJlc2V0LiAqLw0KPiAtCXRjX2NvbGRfdW5ibG9jayh0
YywgdGMtPmxvY2tfcG93ZXJfZG9tYWluLA0KPiAtCQkJZmV0Y2hfYW5kX3plcm8oJnRjLT5sb2Nr
X3dha2VyZWYpKTsNCj4gLQlpZiAodGMtPm1vZGUgIT0gVENfUE9SVF9ESVNDT05ORUNURUQpDQo+
IC0JCXRjLT5sb2NrX3dha2VyZWYgPSB0Y19jb2xkX2Jsb2NrKHRjLCAmdGMtDQo+ID5sb2NrX3Bv
d2VyX2RvbWFpbik7DQo+IC0NCj4gLQl0Y19jb2xkX3VuYmxvY2sodGMsIGRvbWFpbiwgd3JlZik7
DQo+ICsJaWYgKGZvcmNlX2Rpc2Nvbm5lY3QgfHwNCj4gKwkgICAgaW50ZWxfdGNfcG9ydF9uZWVk
c19yZXNldCh0YykpDQo+ICsJCWludGVsX3RjX3BvcnRfcmVzZXRfbW9kZSh0YywgcmVxdWlyZWRf
bGFuZXMsDQo+IGZvcmNlX2Rpc2Nvbm5lY3QpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIF9f
aW50ZWxfdGNfcG9ydF9nZXRfbGluayhzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMpIEBAIC0xMDUz
LDkNCj4gKzEwMzksNiBAQCB2b2lkIGludGVsX3RjX3BvcnRfc2FuaXRpemVfbW9kZShzdHJ1Y3Qg
aW50ZWxfZGlnaXRhbF9wb3J0DQo+ICpkaWdfcG9ydCwNCj4gIAkJCQkgICAgdGNfcG9ydF9tb2Rl
X25hbWUodGMtPmluaXRfbW9kZSkpOw0KPiAgCQl0Y19waHlfZGlzY29ubmVjdCh0Yyk7DQo+ICAJ
CV9faW50ZWxfdGNfcG9ydF9wdXRfbGluayh0Yyk7DQo+IC0NCj4gLQkJdGNfY29sZF91bmJsb2Nr
KHRjLCB0Yy0+bG9ja19wb3dlcl9kb21haW4sDQo+IC0JCQkJZmV0Y2hfYW5kX3plcm8oJnRjLT5s
b2NrX3dha2VyZWYpKTsNCj4gIAl9DQo+IA0KPiAgCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJQ
b3J0ICVzOiBzYW5pdGl6ZSBtb2RlICglcylcbiIsDQo+IC0tDQo+IDIuMzcuMQ0KDQo=
