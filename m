Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF0C78C195
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 11:35:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE67310E117;
	Tue, 29 Aug 2023 09:35:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7962810E1F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 09:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693301722; x=1724837722;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4pEbAkBcDwq5f/Vu7XwDI6dxh9mN+v7FxlpG7nb4c74=;
 b=ELNBZgh2uJTVjOrcNYods4wuMw6h521vUcOfvoMT/mC+V9uLUiVrPouD
 V2HLu40KO/c+SZ21sM7Nke4uTbEpPH23ggjFoj5tP16xaqehN9SqQeDlv
 sBgQnuS3tfxSMZ2rNZtZ8Fs8doyNg9r+6JHR9Ne6gMQj34OGg5U0nvnVO
 GbKWzYjbAR7HFdGXIUiwwZp9romKpJ5s/IqZVYEg08SzXMDTHMdSTfPTZ
 Voq0PRicRqVAPDvmDnkf4qnkdQU2lmY9FznMfIcDZ7rn34OzGCfexi5Xs
 HgxEQCzu5nX33WOmWuw1R+fZaYSheESBTYl3/JN940tLzw5bjp/JqTjAE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="441675278"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="441675278"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 02:35:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="912362651"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="912362651"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 29 Aug 2023 02:35:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 02:35:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 02:35:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 02:35:20 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 02:35:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jso/XejyuRsywmRCUJR+8urmvPM5H4+TIIddgdP8IW7oQo+VCgVrqEql4+u0tl/thtjGugM5i+D7eOJywAJ4zf8S/SHL86QIIQHvg/z2Otp+xJ0MC/tuuxXdbbIqwEFT51sDVJRXGj28AaE3qjq2XLqrrI/RsURLy8h6k7V/gCbyi0A9pgCBBDgDP1S24ipN6mr2eWHdBUZcMhlkpYC4k7stYFXD+ftmr6Lc7AhkTtVU6j3zdQWQp8aYRTSqx9LW3iRaHnRqjnSVL49/h4mxbiis/sFCpFUirEpmAobz3ERJ8s9JKhaw582BHGHAiZQj8uMILAdlw3ewIjJv4aLRxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4pEbAkBcDwq5f/Vu7XwDI6dxh9mN+v7FxlpG7nb4c74=;
 b=bipkWKa/byXK6oDZr9QoHq8kXOfdx5rkGuq31gN3qTYsrfyf0kfn6C+VMYQ+BBFKyEyUp1PF20Nl34O5cLjDL0AN53CLGumdDDtMw3tRXjAtYdFspzBZFY+TS5iemFzc2UlsyFCUg7wDhxghU6kCu7CzdgfNJdfZAG/icY8d2ofCsTj7cnXuRmf99+triiI8eXl++oZOJE6ViqLZetPGigtg/r3dunprU8jvWybuY2gGybYGMZB6K3fd+LFwNKwcjG1l6I+Zd/zOWxxWZQB5b8389tnbmDu6dRKP+OzOENA1igwEe1WoF7lTmwFhXyOPYiT60HGrRUpsFqYNXYu8vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by LV2PR11MB6023.namprd11.prod.outlook.com (2603:10b6:408:17b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Tue, 29 Aug
 2023 09:35:17 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b%7]) with mapi id 15.20.6699.035; Tue, 29 Aug 2023
 09:35:17 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase msgbus
 timeout threshold
Thread-Index: AQHZ2dXxYaBXI0sPcUiav3noNkHySrAAKUCAgAAVCACAABMBgIAAsp/g
Date: Tue, 29 Aug 2023 09:35:17 +0000
Message-ID: <MW4PR11MB705460D62BA130E4674E5556EFE7A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230828173405.59812-1-gustavo.sousa@intel.com>
 <DM4PR11MB597193DFDCC38D7E92C9CFC187E0A@DM4PR11MB5971.namprd11.prod.outlook.com>
 <169325913612.6737.8521384979789302140@gjsousa-mobl2>
 <DM4PR11MB59717445B0CF7E5FD845A24A87E0A@DM4PR11MB5971.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB59717445B0CF7E5FD845A24A87E0A@DM4PR11MB5971.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|LV2PR11MB6023:EE_
x-ms-office365-filtering-correlation-id: 6057be8d-eab9-4b8a-0454-08dba8734155
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n48hwHgoKOmOBjXRkBxkkX8oO5ybYwIVuhcu6qsW33iwuXD1RqMT4tB3kWzWjVai4kFJBI/n8V7lySZby5S3vT+0+JRLcOQsCxcynh4WzcV/RcfArVEL7d5Ccd3MSbBxouZAWoJuzPPu/JxdoyqOMJtEqfaRU66/yymkY8UNzMEk6lvzM8NHAOLoOX0aOdTuJdDK269Ujqss1KjQ25Y+I4zeaaBqcaN4WeNeCCUByVaJYbR5iN9QCpzEMAVSOSl7zK3syyIDwYbPfYWgIW1rgy5TTLbeao1jWyaDqizd1E9Pz7waEdTSQfLx9gIRKj+E8r3Ignxs6yoQGYwpe3RgC7DUgCpSd3XeHwiI4rG0ytEtaLBqS4+dLZgUQe8IV+9jNKh3Ajm5ppvTL3zx3sKJsU3qGZY10c8XIeI/xctCu1CrlEu2Gw4NtyQGZMbRyrHgicp23c9gOb+Qb5qF/6Yj6A6w6jzMpHseJsmRMkkNbp8sSSBnVn0ZUduZTgq+EnAHknbAqwX9mo/FmbEovYCE/WXUIMX8KavxyHU3uov3hziBfjYL2MY+uC/OWmp/G4wLveq3Xrrpw6n37hNXW9wpZJB2OICuioFZG290dQmQJ5WtHhV/qysGe0FZIc+lgYdS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(396003)(346002)(366004)(39860400002)(451199024)(1800799009)(186009)(8936002)(122000001)(110136005)(53546011)(76116006)(478600001)(66946007)(6506007)(7696005)(71200400001)(64756008)(66446008)(66476007)(66556008)(38070700005)(316002)(38100700002)(41300700001)(82960400001)(9686003)(26005)(8676002)(5660300002)(83380400001)(2906002)(52536014)(86362001)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N0pxakFnTTkyeElUcVVTVmpaZjNraDBEZzFiSkNVdGl4RUZLZThmemNYMUIz?=
 =?utf-8?B?VlJuSG9UbTdxZXpFN1dPaURIVElRNU5jMElPanRJZHdLV3hEMFNwSnRxdFlo?=
 =?utf-8?B?bmY3Tll5czNHTlR4Tzg2eXNwbW1ncEhsSmR2VDNEbUUrYU5JK005bXlHVUV2?=
 =?utf-8?B?R0R5R01TTWErTnFManE3cExOdDl4UmpKVG5UZTc3U0FQRzlLTzlSVERBZXVr?=
 =?utf-8?B?N3J5Rk14V0VUd2R1OGtvb3pIL3FvNVdmRTVPUkFWeDlncnZTdVNuWmRISGxC?=
 =?utf-8?B?YnJmUnBkckxuUUZDWnZaTDBaVVBYMVd5UytCdGVPMnpJMjJkNC9lbmxoT2Jk?=
 =?utf-8?B?VmxicmZSL2Z5bkhXQmd1Wll0VHh4SXR3TWpIcGx0Sk4rK2NocWhKdy8vSEU5?=
 =?utf-8?B?THNLRU4zMXZPelZjcDYyL3JwMVlHOW45R1F1cTU1UVltd1kyMUNLNjJ5ek41?=
 =?utf-8?B?ei9CUzBrc0tmNzhEeXptVnd1TGZSclFQRVR3eFV0bWVPTER6UkJRZlA1eVNC?=
 =?utf-8?B?dk1LNFpjQ045TktVNFk2dlE3WnlsLzJZUCtvcmF3UFdxUjhxZzZuOC9qaEJY?=
 =?utf-8?B?WXp1MzhvRVU2ckpneEdEdXFMdjUrK1lKc1pJNWZERUdhOC92cWIzWHFpZEJR?=
 =?utf-8?B?YWJ4T3d1aWQrQmc5M1JpVFZOTG0zNXVKdlg2MG94VGFvaGJMWEdWT21kc0pn?=
 =?utf-8?B?R2NMOEg4Skw2YU4yQkYrb0x5L0VoMGkyVjNBajF5NGtsSlhxUEdIaDB4S1B5?=
 =?utf-8?B?Uy9MOWlud01jRDNqMlBwYU1nMjJIaTRuZzBSQkZTeU1zcExMT0RBaS9VcXdy?=
 =?utf-8?B?WStpUGc4NHdWdTVtUC8vNi9tTUFmSjZCUmVZdW1hM1VNZWRrREJNTmhtcFVL?=
 =?utf-8?B?TDVaS2VuaGdHbVVHQ0lGYVVwZmlvMi85NVpZQ0x5ais5c2NtekNPcVdvNlRU?=
 =?utf-8?B?RXNIYW50RTh3c2l0cW1TOTVsRWRraWFZSnRFVkw0dVlSUGxWcWJYdXlRaWpw?=
 =?utf-8?B?NVFPQmJDSUtWeS9wWEc1MldLSytlWTJxb2pGM2ZmNkxzZklCeTJRZGViR3BW?=
 =?utf-8?B?eEt0L2ZiV0dGcnFiQUt4SmhWUms5ckZ3Y3VhV1lGV2ltenRROFI2dEhwc3Zu?=
 =?utf-8?B?NlhubkNjVXJDV0N0WC9RU0p5c0VFU3hyWXBVcU5RdEJrRzMxbW9ra2UxOTVU?=
 =?utf-8?B?T0NPQThSNEVWZmJTamN4QlpHTzM0Mmp4eEZxUXRNZkVPUjVPdDZDU2ZyMitu?=
 =?utf-8?B?S3BrUGtWaUFrak1JcmxNalg2Z21LSDNkN3NObEY3L3JtenEvOU12YVBwcnlU?=
 =?utf-8?B?SG1va2loNGlSQTlaaVdLNCtnaHBieXRqdFRtc0NYU3ZEYktZeGhDNDJpUTlO?=
 =?utf-8?B?bnY5UEFWSmQ5NExtRjczNWhlbVlGNXg4QzJiZHV5OFpsQ0dHUURMS2pSdUor?=
 =?utf-8?B?VGYraDFXeGJCU0M5ZC84N3p6UDdlWC9OVTN1VDJtay9OQ1RkdzQ4a1NkeHZH?=
 =?utf-8?B?clU1cUZRSEJtMmNRRXBuM1pONlUzTThzQVRXMm9mQVlDM2ZvVWZBWEd1QkJU?=
 =?utf-8?B?YTdoZHhwdzF4T2NYMXA3VnZvdTFpREdXajc4bWJWUUVDanVLSVN2V3NUOVJ4?=
 =?utf-8?B?M0lhb05aTk8vRitjczZUMWZXWDcxQUdPLzUrbm5xY0Q0M1JzVjR0bDY5MkR1?=
 =?utf-8?B?NDNMOWFEQnBXZ2ppeUJkd3VEdnMydDAxenlqSXRDQTJIRzRqVzFhTDY0S3cr?=
 =?utf-8?B?dkR3Q3ZHMks0N3VYZ08rNXJVLytzUFZhR081d1dveE5qUENWdW1iLzdGS295?=
 =?utf-8?B?czVmTGJPY3NWUTg3UGgrb242b21HcEMxTUhNSjhiYkRmRGZhdXJzV3hiWkJZ?=
 =?utf-8?B?RndXbGFvOHl0VGdxaTBoYWlWTTI4NmFMOFRnaURRQzhWOVNtSmRHUG8rU0xs?=
 =?utf-8?B?bFJBMHJMS1pVbkNtOUxnTWVWUkhUT1BpcUo4QlpaczRob3JiU1BKTkVCOTRW?=
 =?utf-8?B?L2srMnVVWVpMaUFJWWJ4TFNwOHl0amFpNWplTmNKbUx3OGZZakRVTFhSZWtV?=
 =?utf-8?B?cm1iaEcwUTFzOFhEZGlBK3dyMUtjMWJ5ZzNMTjRaRXY2SW9NKzhiQ1hjalkx?=
 =?utf-8?Q?9HmGXW19ifNM37YgMDO2QtzGN?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6057be8d-eab9-4b8a-0454-08dba8734155
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2023 09:35:17.3769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FLWeiK8bYaoPnPBZUKuH+cFZYDx4PnscWJkXhesJ7ejh5MfqvUH3mC6WcJtRzQ1vNT0rHuAgE7JEXJabynvQHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6023
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase msgbus
 timeout threshold
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFNyaXBhZGEsIFJh
ZGhha3Jpc2huYQ0KPiBTZW50OiBUdWVzZGF5LCBBdWd1c3QgMjksIDIwMjMgMTo1NCBBTQ0KPiBU
bzogU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBk
cm0vaTkxNS9jeDA6IENoZWNrIGFuZCBpbmNyZWFzZSBtc2didXMgdGltZW91dCB0aHJlc2hvbGQN
Cj4gDQo+IEhpIEd1c3Rhdm8sDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
ID4gRnJvbTogU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiA+IFNl
bnQ6IE1vbmRheSwgQXVndXN0IDI4LCAyMDIzIDI6NDYgUE0NCj4gPiBUbzogU3JpcGFkYSwgUmFk
aGFrcmlzaG5hIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gPiBn
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gU3ViamVjdDogUkU6IFtJbnRlbC1nZnhdIFtQ
QVRDSF0gZHJtL2k5MTUvY3gwOiBDaGVjayBhbmQgaW5jcmVhc2UNCj4gPiBtc2didXMgdGltZW91
dCB0aHJlc2hvbGQNCj4gPg0KPiA+IFF1b3RpbmcgU3JpcGFkYSwgUmFkaGFrcmlzaG5hICgyMDIz
LTA4LTI4IDE3OjMwOjE5LTAzOjAwKQ0KPiA+ID5IaSBHdXN0YXZvLA0KPiA+DQo+ID4gSGksIFJL
Lg0KPiA+DQo+ID4gVGhhbmtzIGZvciB0aGUgZmVlZGJhY2shIFBsZWFzZSwgc2VlIG15IHJlcGxp
ZXMgYmVsb3cuDQo+ID4NCj4gPiA+DQo+ID4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gPiA+PiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZz4gT24gQmVoYWxmDQo+ID4gPj4gT2YNCj4gPiBHdXN0YXZvDQo+ID4gPj4gU291c2EN
Cj4gPiA+PiBTZW50OiBNb25kYXksIEF1Z3VzdCAyOCwgMjAyMyAxMDozNCBBTQ0KPiA+ID4+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPj4gU3ViamVjdDogW0ludGVs
LWdmeF0gW1BBVENIXSBkcm0vaTkxNS9jeDA6IENoZWNrIGFuZCBpbmNyZWFzZQ0KPiA+ID4+IG1z
Z2J1cw0KPiA+IHRpbWVvdXQNCj4gPiA+PiB0aHJlc2hvbGQNCj4gPiA+Pg0KPiA+ID4+IFdlIGhh
dmUgZXhwZXJpZW5jZWQgdGltZW91dCBpc3N1ZXMgd2hlbiBhY2Nlc3NpbmcgQzIwIFNSQU0gcmVn
aXN0ZXJzLg0KPiA+ID5UaGlzIHdvcmRpbmcgaXMgbWlzbGVhZGluZy4gSXQgc2VlbXMgdG8gaW1w
bHkgdGhhdCB3ZSBkaXJlY3RseSBhY2Nlc3MNCj4gPiA+U1JBTSByZWdpc3RlcnMgdmlhIG1zZyBi
dXMgYnV0IHRoZSByZWFkcy93cml0ZXMgZ28gdGhyb3VnaA0KPiA+ID5pbnRlcm1lZGlhdGUgcmVn
aXN0ZXJzIGFuZCBpdCBpcyB0aGlzIHJlYWQvd3JpdGUgdGhhdCBpcyBmYWlsaW5nLiBBZGRpbmcg
ZXh0cmEgY2xhcml0eSBoZXJlIHdvdWxkIGJlIGhlbHBmdWwuDQo+ID4NCj4gPiBIbS4uLiBPa2F5
LiBJIHRob3VnaHQgdGhhdCB3b3VsZCBhbHJlYWR5IGJlIGltcGxpZWQgdG8gc29tZW9uZQ0KPiA+
IGZhbWlsaWFyIHdpdGggdGhlIGNvZGUuIFdoYXQgYWJvdXQ6DQo+ID4NCj4gPiAgICAgcy93aGVu
IGFjY2Vzc2luZy93aGVuIGdvaW5nIHRocm91Z2ggdGhlIHNlcXVlbmNlIHRvIGFjY2Vzcy8NCj4g
VGhpcyBpcyBiZXR0ZXIgdG8gaW5kaWNhdGUgdGhhdCBpdCBpcyBub3QgZGlyZWN0IGFjY2Vzcy4N
Cj4gDQo+ID4NCj4gPiA/DQo+ID4NCj4gPiA+DQo+ID4gPj4gRXhwZXJpbWVudGF0aW9uIHNob3dl
ZCB0aGF0IGJ1bXBpbmcgdGhlIG1lc3NhZ2UgYnVzIHRpbWVyIHRocmVzaG9sZA0KPiA+ID4+IGhl
bHBlZCBvbiBnZXR0aW5nIGRpc3BsYXkgVHlwZS1DIGNvbm5lY3Rpb24gb24gdGhlIEMyMCBQSFkg
dG8gd29yay4NCj4gPiA+Pg0KPiA+ID4+IFdoaWxlIHRoZSB0aW1lb3V0IGlzIHN0aWxsIHVuZGVy
IGludmVzdGlnYXRpb24gd2l0aCB0aGUgSFcgdGVhbSwNCj4gPiA+PiBoYXZpbmcgbG9naWMgdG8g
YWxsb3cgZm9yd2FyZCBwcm9ncmVzcyAod2l0aCB0aGUgcHJvcGVyIHdhcm5pbmdzKSBzZWVtcyB1
c2VmdWwuDQo+ID4gPj4gVGh1cywgbGV0J3MgYnVtcCB0aGUgdGhyZXNob2xkIHdoZW4gYSB0aW1l
b3V0IGlzIGRldGVjdGVkLg0KPiA+ID4+DQo+ID4gPj4gVGhlIG1heGltdW0gdmFsdWUgb2YgMHgy
MDAgcGNsayBjeWNsZXMgd2FzIHNvbWV3aGF0IGFyYml0cmFyeSAtIDJ4DQo+ID4gPj4gdGhlIGRl
ZmF1bHQgdmFsdWUuIFRoYXQgdmFsdWUgd2FzIHN1Y2Nlc3NmdWxseSB0ZXN0ZWQgb24gcmVhbA0K
PiA+ID4+IGhhcmR3YXJlIHRoYXQgd2FzIGRpc3BsYXlpbmcgdGltZW91dHMgb3RoZXJ3aXNlLg0K
PiA+ID4+DQo+ID4gPj4gQlNwZWM6IDY1MTU2DQo+ID4gPj4gU2lnbmVkLW9mZi1ieTogR3VzdGF2
byBTb3VzYSA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQo+ID4gPj4gLS0tDQo+ID4gPj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jICB8IDQxDQo+ID4gPj4g
KysrKysrKysrKysrKysrKysrKyAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9w
aHlfcmVncy5oDQo+ID4gPj4gfCAxMiArKysrKysNCj4gPiA+PiAgMiBmaWxlcyBjaGFuZ2VkLCA1
MyBpbnNlcnRpb25zKCspDQo+ID4gPj4NCj4gPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiA+PiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gPj4gaW5kZXggZGQ0ODliNTBhZDYw
Li41NWQyMzMzMDMyZTMgMTAwNjQ0DQo+ID4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ID4+IEBAIC01LDYgKzUsNyBAQA0KPiA+ID4+
DQo+ID4gPj4gICNpbmNsdWRlIDxsaW51eC9sb2cyLmg+DQo+ID4gPj4gICNpbmNsdWRlIDxsaW51
eC9tYXRoNjQuaD4NCj4gPiA+PiArI2luY2x1ZGUgPGxpbnV4L21pbm1heC5oPg0KPiA+ID4+ICAj
aW5jbHVkZSAiaTkxNV9yZWcuaCINCj4gPiA+PiAgI2luY2x1ZGUgImludGVsX2N4MF9waHkuaCIN
Cj4gPiA+PiAgI2luY2x1ZGUgImludGVsX2N4MF9waHlfcmVncy5oIg0KPiA+ID4+IEBAIC0yOSw2
ICszMCw4IEBADQo+ID4gPj4gICNkZWZpbmUgSU5URUxfQ1gwX0xBTkUxICAgICAgICAgICAgICAg
IEJJVCgxKQ0KPiA+ID4+ICAjZGVmaW5lIElOVEVMX0NYMF9CT1RIX0xBTkVTICAgICAgICAoSU5U
RUxfQ1gwX0xBTkUxIHwNCj4gPiA+PiBJTlRFTF9DWDBfTEFORTApDQo+ID4gPj4NCj4gPiA+PiAr
I2RlZmluZSBJTlRFTF9DWDBfTVNHQlVTX1RJTUVSX1ZBTF9NQVggICAgICAgIDB4MjAwDQo+ID4g
Pj4gKw0KPiA+ID4+ICBib29sIGludGVsX2lzX2MxMHBoeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwgZW51bSBwaHkgcGh5KQ0KPiA+ID4+IHsNCj4gPiA+PiAgICAgICAgICBpZiAoRElT
UExBWV9WRVJfRlVMTChpOTE1KSA9PSBJUF9WRVIoMTQsIDApICYmIHBoeSA8DQo+ID4gPj4gUEhZ
X0MpIEBAIC0xMTksNiArMTIyLDQzIEBAIHN0YXRpYyB2b2lkIGludGVsX2N4MF9idXNfcmVzZXQo
c3RydWN0DQo+ID4gZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4+ICppOTE1LCBlbnVtIHBvcnQgcG9y
dCwgaQ0KPiA+ID4+ICAgICAgICAgIGludGVsX2NsZWFyX3Jlc3BvbnNlX3JlYWR5X2ZsYWcoaTkx
NSwgcG9ydCwgbGFuZSk7ICB9DQo+ID4gPj4NCj4gPiA+PiArLyoNCj4gPiA+PiArICogQ2hlY2sg
aWYgdGhlcmUgd2FzIGEgdGltZW91dCBkZXRlY3RlZCBieSB0aGUgaGFyZHdhcmUgaW4gdGhlDQo+
ID4gPj4gK21lc3NhZ2UgYnVzDQo+ID4gPj4gKyAqIGFuZCBidW1wIHRoZSB0aHJlc2hvbGQgaWYg
c28uDQoNCkp1c3QgYSB0aG91Z2h0IGJ1dCB3b3VsZG4ndCBpdCBiZSBzaW1wbGVyIGlmIHdlIGp1
c3Qgc2V0IHRoZSB0aW1lb3V0IHRvIGl0J3MgbWF4aW11bSBhbmQgZGlzY2FyZCB0aGUgY2hlY2sg
aGVyZT8NCg0KLU1pa2EtIA0KDQo+ID4gPj4gKyAqLw0KPiA+ID4+ICtzdGF0aWMgdm9pZCBpbnRl
bF9jeDBfYnVzX2NoZWNrX2FuZF9idW1wX3RpbWVyKHN0cnVjdA0KPiA+ID4+ICtkcm1faTkxNV9w
cml2YXRlDQo+ID4gPj4gKmk5MTUsDQo+ID4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgZW51bSBwb3J0IHBvcnQsIGludA0KPiA+ID4+ICtsYW5lKSB7
DQo+ID4gPj4gKyAgICAgICAgZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoaTkxNSwg
cG9ydCk7DQo+ID4gPj4gKyAgICAgICAgaTkxNV9yZWdfdCByZWc7DQo+ID4gPj4gKyAgICAgICAg
dTMyIHZhbDsNCj4gPiA+PiArICAgICAgICB1MzIgdGltZXJfdmFsOw0KPiA+ID4+ICsNCj4gPiA+
PiArICAgICAgICByZWcgPSBYRUxQRFBfUE9SVF9NU0dCVVNfVElNRVIocG9ydCwgbGFuZSk7DQo+
ID4gPj4gKyAgICAgICAgdmFsID0gaW50ZWxfZGVfcmVhZChpOTE1LCByZWcpOw0KPiA+ID4+ICsN
Cj4gPiA+PiArICAgICAgICBpZiAoISh2YWwgJiBYRUxQRFBfUE9SVF9NU0dCVVNfVElNRVJfVElN
RURfT1VUKSkgew0KPiA+ID4+ICsgICAgICAgICAgICAgICAgZHJtX3dhcm4oJmk5MTUtPmRybSwN
Cj4gPiA+PiArICAgICAgICAgICAgICAgICAgICAgICAgICJQSFkgJWMgbGFuZSAlZDogaGFyZHdh
cmUgZGlkIG5vdCBkZXRlY3QNCj4gPiA+PiArIGENCj4gPiA+PiB0aW1lb3V0XG4iLA0KPiA+ID4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgcGh5X25hbWUocGh5KSwgbGFuZSk7DQo+ID4gPj4g
KyAgICAgICAgICAgICAgICByZXR1cm47DQo+ID4gPj4gKyAgICAgICAgfQ0KPiA+ID4+ICsNCj4g
PiA+PiArICAgICAgICB0aW1lcl92YWwgPQ0KPiA+ID4+IFJFR19GSUVMRF9HRVQoWEVMUERQX1BP
UlRfTVNHQlVTX1RJTUVSX1ZBTF9NQVNLLCB2YWwpOw0KPiA+ID4+ICsNCj4gPiA+PiArICAgICAg
ICBpZiAodGltZXJfdmFsID09IElOVEVMX0NYMF9NU0dCVVNfVElNRVJfVkFMX01BWCkNCj4gPiA+
PiArICAgICAgICAgICAgICAgIHJldHVybjsNCj4gPiA+PiArDQo+ID4gPj4gKyAgICAgICAgdGlt
ZXJfdmFsID0gbWluKDIgKiB0aW1lcl92YWwsDQo+ID4gPj4gKHUzMilJTlRFTF9DWDBfTVNHQlVT
X1RJTUVSX1ZBTF9NQVgpOw0KPiA+ID4gICAgIF4gaXMgdGhpcyBjYXN0IG5lY2Vzc2FyeT8NCj4g
Pg0KPiA+IFllcy4gSSByZW1lbWJlciBnZXR0aW5nIGEgd2FybmluZyB3aXRob3V0IGl0LiBMZXQg
bWUgcmVtb3ZlIGl0IHRvIHJlbWVtYmVyLi4uDQo+IEdvdCBpdCB0aGFua3MgZm9yIHRoZSBxdWlj
ayBjaGVjay4NCj4gDQo+ID4NCj4gPiAuLi5kb25lISBJIHRoaW5rIGl0IGNvbXBsYWlucyBiZWNh
dXNlIHRoZSBhcmd1bWVudHMgYXJlIG9mIGRpZmZlcmVudCB0eXBlczoNCj4gPg0KPiA+ICAgICBJ
biBmaWxlIGluY2x1ZGVkIGZyb20gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
eDBfcGh5LmM6ODoNCj4gPiAgICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
eDBfcGh5LmM6IEluIGZ1bmN0aW9uDQo+ID4g4oCYaW50ZWxfY3gwX2J1c19jaGVja19hbmRfYnVt
cF90aW1lcuKAmToNCj4gPiAgICAgLi9pbmNsdWRlL2xpbnV4L21pbm1heC5oOjIwOjM1OiBlcnJv
cjogY29tcGFyaXNvbiBvZiBkaXN0aW5jdA0KPiA+IHBvaW50ZXIgdHlwZXMgbGFja3MgYSBjYXN0
IFstV2Vycm9yXQ0KPiA+ICAgICAgICAyMCB8ICAgICAgICAgKCEhKHNpemVvZigodHlwZW9mKHgp
ICopMSA9PSAodHlwZW9mKHkpICopMSkpKQ0KPiA+ICAgICAgICAgICB8ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBefg0KPiA+ICAgICAuL2luY2x1ZGUvbGludXgvbWlubWF4Lmg6
MjY6MTg6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhfX3R5cGVjaGVja+KAmQ0KPiA+
ICAgICAgICAyNiB8ICAgICAgICAgICAgICAgICAoX190eXBlY2hlY2soeCwgeSkgJiYgX19ub19z
aWRlX2VmZmVjdHMoeCwgeSkpDQo+ID4gICAgICAgICAgIHwgICAgICAgICAgICAgICAgICBefn5+
fn5+fn5+fg0KPiA+ICAgICAuL2luY2x1ZGUvbGludXgvbWlubWF4Lmg6MzY6MzE6IG5vdGU6IGlu
IGV4cGFuc2lvbiBvZiBtYWNybyDigJhfX3NhZmVfY21w4oCZDQo+ID4gICAgICAgIDM2IHwgICAg
ICAgICBfX2J1aWx0aW5fY2hvb3NlX2V4cHIoX19zYWZlX2NtcCh4LCB5KSwgXA0KPiA+ICAgICAg
ICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn4NCj4gPiAgICAg
Li9pbmNsdWRlL2xpbnV4L21pbm1heC5oOjY3OjI1OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFj
cm8g4oCYX19jYXJlZnVsX2NtcOKAmQ0KPiA+ICAgICAgICA2NyB8ICNkZWZpbmUgbWluKHgsIHkp
ICAgICAgIF9fY2FyZWZ1bF9jbXAoeCwgeSwgPCkNCj4gPiAgICAgICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+DQo+ID4gICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jOjE1MjoyMTogbm90ZTogaW4NCj4gPiBleHBhbnNpb24g
b2YgbWFjcm8g4oCYbWlu4oCZDQo+ID4gICAgICAgMTUyIHwgICAgICAgICB0aW1lcl92YWwgPSBt
aW4oMiAqIHRpbWVyX3ZhbCwNCj4gPiBJTlRFTF9DWDBfTVNHQlVTX1RJTUVSX1ZBTF9NQVgpOw0K
PiA+ICAgICAgICAgICB8DQo+ID4NCj4gPiA+DQo+ID4gPj4gKyAgICAgICAgdmFsICY9IH5YRUxQ
RFBfUE9SVF9NU0dCVVNfVElNRVJfVkFMX01BU0s7DQo+ID4gPj4gKyAgICAgICAgdmFsIHw9IFJF
R19GSUVMRF9QUkVQKFhFTFBEUF9QT1JUX01TR0JVU19USU1FUl9WQUxfTUFTSywNCj4gPiA+PiB0
aW1lcl92YWwpOw0KPiA+ID5XZSBkbyBub3QgdXNlIFJFR19GSUVMRF9QUkVQIGluIHRoZSBmdW5j
dGlvbi4gSW5zdGVhZCB3ZSB1c2UgaXQgaW4NCj4gPiA+cmVnaXN0ZXIgZGVmaW5pdGlvbiBpbiBp
bnRlbF9jeDBfcGh5X3JlZ3MuaC4NCj4gPg0KPiA+IEkgdGhpbmsgaXQgbWFrZXMgc2Vuc2UgaGF2
ZSBkZWZpbml0aW9ucyB1c2luZyBSRUdfRklFTERfUFJFUCgpIGluDQo+ID4gaGVhZGVyIGZpbGVz
IGFuZCB1c2UgdGhvc2UgZGVmaW5pdGlvbnMgaW4gLmMgZmlsZXMgZm9yIGZpZWxkcyB3aG9zZQ0K
PiA+IHZhbHVlcyBhcmUgYXJlIGVudW1lcmF0ZWQuDQo+ID4NCj4gPiBOb3csIGZvciBmaWVsZHMg
d2l0aG91dCBlbnVtZXJhdGlvbiwgbGlrZSB0aGlzIG9uZSBpbiBkaXNjdXNzaW9uLCBJDQo+ID4g
dGhpbmsgaXQgaXMgZmluZSB0byB1c2UgUkVHX0ZJRUxEX1BSRVAoKSBkaXJlY3RseS4gVGhlIE1B
U0sgaXMgYWxyZWFkeSBleHBvc2VkIGFueXdheS4uLg0KPiA+DQo+ID4gQmVzaWRlcywgaXQgc2Vl
bXMgd2UgYWxyZWFkeSBoYXZlIGxpbmVzIG9mIGNvZGUgaW4gKi5jIGZpbGVzIHVzaW5nIHRoZQ0K
PiA+IHBhdHRlcm4NCj4gPiBhYm92ZToNCj4gPg0KPiA+ICAgICBnaXQgZ3JlcCBSRUdfRklFTERf
UFJFUCBkcm0tdGlwL2RybS10aXAgLS0gJzovZHJpdmVycy9ncHUvZHJtL2k5MTUvKiovKi5jJw0K
PiA+DQo+ID4gTGV0IG1lIGtub3cgd2hhdCB5b3UgdGhpbmsuIEkgY291bGQgYWRkIGENCj4gPiBY
RUxQRFBfUE9SVF9NU0dCVVNfVElNRVJfVkFMKCkgbWFjcm8gaWYgeW91IHRoaW5rIGl0IGlzIG5l
Y2Vzc2FyeS4gTXkNCj4gPiBwZXJzb25hbCB0YWtlIGlzIHRoYXQgdXNpbmcgUkVHX0ZJRUxEX1BS
RVAoKSBmb3IgdGhpcyBjYXNlIGlzIGZpbmUuDQo+IExldCB1cyBjb25mb3JtIHdpdGggdGhlIG5v
cm1zIGZvciB0aGUgbWFjcm8tZmllbGRzIHVzZWQgaW4gdGhpcyBmaWxlIGluc3RlYWQgb2Ygc3Rh
cnRpbmcgYSBuZXcgcGF0dGVybi4NCj4gDQo+IC0tUmFkaGFrcmlzaG5hKFJLKSBTcmlwYWRhDQo+
ID4NCj4gPiAtLQ0KPiA+IEd1c3Rhdm8gU291c2ENCj4gPg0KPiA+ID4NCj4gPiA+VGhhbmtzLA0K
PiA+ID5SYWRoYWtyaXNobmEgU3JpcGFkYQ0KPiA+ID4NCj4gPiA+PiArDQo+ID4gPj4gKyAgICAg
ICAgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gPiA+PiArICAgICAgICAgICAgICAgICAgICAi
UEhZICVjIGxhbmUgJWQ6IGluY3JlYXNpbmcgbXNnYnVzIHRpbWVyDQo+ID4gPj4gKyB0aHJlc2hv
bGQgdG8NCj4gPiA+PiAlI3hcbiIsDQo+ID4gPj4gKyAgICAgICAgICAgICAgICAgICAgcGh5X25h
bWUocGh5KSwgbGFuZSwgdGltZXJfdmFsKTsNCj4gPiA+PiArICAgICAgICBpbnRlbF9kZV93cml0
ZShpOTE1LCByZWcsIHZhbCk7IH0NCj4gPiA+PiArDQo+ID4gPj4gIHN0YXRpYyBpbnQgaW50ZWxf
Y3gwX3dhaXRfZm9yX2FjayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPiA+PiBl
bnVtIHBvcnQNCj4gPiBwb3J0LA0KPiA+ID4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgaW50IGNvbW1hbmQsIGludCBsYW5lLCB1MzIgKnZhbCkNCj4gPiA+PiB7IEBAIC0xMzIs
NiArMTcyLDcgQEAgc3RhdGljIGludCBpbnRlbF9jeDBfd2FpdF9mb3JfYWNrKHN0cnVjdA0KPiA+
ID4+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVudW0gcG9ydCBwb3J0LA0KPiA+ID4+DQo+ID4g
Pj4gWEVMUERQX01TR0JVU19USU1FT1VUX1NMT1csDQo+ID4gPj4gdmFsKSkgew0KPiA+ID4+ICAg
ICAgICAgICAgICAgICAgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIlBIWSAlYyBUaW1lb3V0IHdh
aXRpbmcNCj4gPiA+PiBmb3IgbWVzc2FnZSBBQ0suIFN0YXR1czogMHgleFxuIiwNCj4gPiA+PiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBoeV9uYW1lKHBoeSksICp2YWwpOw0KPiA+ID4+
ICsgICAgICAgICAgICAgICAgaW50ZWxfY3gwX2J1c19jaGVja19hbmRfYnVtcF90aW1lcihpOTE1
LCBwb3J0LA0KPiA+ID4+ICsgbGFuZSk7DQo+ID4gPj4gICAgICAgICAgICAgICAgICBpbnRlbF9j
eDBfYnVzX3Jlc2V0KGk5MTUsIHBvcnQsIGxhbmUpOw0KPiA+ID4+ICAgICAgICAgICAgICAgICAg
cmV0dXJuIC1FVElNRURPVVQ7DQo+ID4gPj4gICAgICAgICAgfQ0KPiA+ID4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHlfcmVncy5oDQo+ID4g
Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHlfcmVncy5oDQo+
ID4gPj4gaW5kZXggY2I1ZDFiZTJiYTE5Li4xN2NjMzM4NWFhYmIgMTAwNjQ0DQo+ID4gPj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5X3JlZ3MuaA0KPiA+
ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeV9yZWdz
LmgNCj4gPiA+PiBAQCAtMTEwLDYgKzExMCwxOCBAQA0KPiA+ID4+ICAjZGVmaW5lICAgQ1gwX1A0
UEdfU1RBVEVfRElTQUJMRSAgICAgICAgICAgICAgICAgICAgICAgIDB4Qw0KPiA+ID4+ICAjZGVm
aW5lICAgQ1gwX1AyX1NUQVRFX1JFU0VUICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAw
eDINCj4gPiA+Pg0KPiA+ID4+ICsjZGVmaW5lIF9YRUxQRFBfUE9SVF9NU0dCVVNfVElNRVJfTE4w
X0ENCj4gPiA+PiAgICAgICAgIDB4NjQwZDgNCj4gPiA+PiArI2RlZmluZSBfWEVMUERQX1BPUlRf
TVNHQlVTX1RJTUVSX0xOMF9CDQo+ID4gPj4gICAgICAgICAweDY0MWQ4DQo+ID4gPj4gKyNkZWZp
bmUgX1hFTFBEUF9QT1JUX01TR0JVU19USU1FUl9MTjBfVVNCQzEgICAgICAgICAgICAgICAgMHgx
NmYyNTgNCj4gPiA+PiArI2RlZmluZSBfWEVMUERQX1BPUlRfTVNHQlVTX1RJTUVSX0xOMF9VU0JD
MiAgICAgICAgICAgICAgICAweDE2ZjQ1OA0KPiA+ID4+ICsjZGVmaW5lIFhFTFBEUF9QT1JUX01T
R0JVU19USU1FUihwb3J0LCBsYW5lKQ0KPiA+ID4+ICAgICAgICAgX01NSU8oX1BJQ0tfRVZFTl8y
UkFOR0VTKHBvcnQsIFBPUlRfVEMxLCBcDQo+ID4gPj4gKw0KPiA+ID4+ICAgICAgICAgIF9YRUxQ
RFBfUE9SVF9NU0dCVVNfVElNRVJfTE4wX0EsIFwNCj4gPiA+PiArDQo+ID4gPj4gICAgICAgICAg
X1hFTFBEUF9QT1JUX01TR0JVU19USU1FUl9MTjBfQiwgXA0KPiA+ID4+ICsNCj4gPiA+PiAgICAg
ICAgICBfWEVMUERQX1BPUlRfTVNHQlVTX1RJTUVSX0xOMF9VU0JDMSwgXA0KPiA+ID4+ICsNCj4g
PiA+PiAgICAgICAgICBfWEVMUERQX1BPUlRfTVNHQlVTX1RJTUVSX0xOMF9VU0JDMikgKyAobGFu
ZSkgKiA0KQ0KPiA+ID4+ICsjZGVmaW5lICAgWEVMUERQX1BPUlRfTVNHQlVTX1RJTUVSX1RJTUVE
X09VVCAgICAgICAgICAgICAgICBSRUdfQklUKDMxKQ0KPiA+ID4+ICsjZGVmaW5lICAgWEVMUERQ
X1BPUlRfTVNHQlVTX1RJTUVSX1ZBTF9NQVNLDQo+ID4gPj4gICAgICAgICBSRUdfR0VOTUFTSygy
MywgMCkNCj4gPiA+PiArDQo+ID4gPj4gICNkZWZpbmUgX1hFTFBEUF9QT1JUX0NMT0NLX0NUTF9B
ICAgICAgICAgICAgICAgICAgICAgICAgMHg2NDBFMA0KPiA+ID4+ICAjZGVmaW5lIF9YRUxQRFBf
UE9SVF9DTE9DS19DVExfQiAgICAgICAgICAgICAgICAgICAgICAgIDB4NjQxRTANCj4gPiA+PiAg
I2RlZmluZSBfWEVMUERQX1BPUlRfQ0xPQ0tfQ1RMX1VTQkMxICAgICAgICAgICAgICAgICAgICAg
ICAgMHgxNkYyNjANCj4gPiA+PiAtLQ0KPiA+ID4+IDIuNDEuMA0KPiA+ID4NCg==
