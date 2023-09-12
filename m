Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DD879C88C
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 09:49:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD77C10E3A6;
	Tue, 12 Sep 2023 07:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53C2D10E3A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 07:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694504976; x=1726040976;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=T1DVh1XhiosIKlfezQOI3V9u1Oy41ey+Y1Py86FLufk=;
 b=e50pl46Q6/eQFGOJAldXjwOWn4d2zQHHw/aOtzaFjnFuXwQlUdT7e/4U
 l9/a8y23xVj8zYoUKus1yuS5r07lVeFTTMG+RkoLc2Nhe++6NVzgSeZ1X
 AK5xRZrA5EEbTU8fB/KeERLfIyKmTVKUJm+WQl9NgaO/HyJ8AqKjhGA2F
 p8+yXPPnzxxxL86qPoDs3AZkSgrU7XT730mZMZ6bxpgi1hDEAZ02RIbFG
 aC+96n6QQ/YeCx6elQoj2N4dwNGry85arngWHxiabTmoUuj/bVNolNckJ
 +K8bbYTOKG54Pb+pbzo+t5O5wsQ5wtwIymTty1wL58UhITVJ6DxvA8DYD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="409259016"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="409259016"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 00:49:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="917336010"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="917336010"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 00:49:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 00:49:34 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 00:49:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 00:49:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 00:49:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ROGP3acFhGmhEzGhdFVrJMKDfJPDqQB4b9FYe/h45F0wYWV843+fkxb/s+EmDrHveAwzWYIrtgCh2xfcKax1fpv81KMSzn49v4oVGHc4UgXNK5hCZC6XWP+SC0maAguabSu6UIAHGwaOOULGKLrexQTQaM5AUp8aY7MtN3jpdFjn4HtxiXujyy7+U5QvEJNL6sgH4pQU7W6VPhph0kR61NApFhsrX7e9GovVRz6fK95QXqNCT1+SC00cx7+IuRMYU2oi+AYtWZghOoHHRBCDE3enpiZaJXfGJOtf+mOhbeEiko0OVtGdwZQfXjjDfCkg+r9n1Ca4iesIcmZ7q8KJJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T1DVh1XhiosIKlfezQOI3V9u1Oy41ey+Y1Py86FLufk=;
 b=MG/cU/Dg5qiJLzreprZ27fAy/7nmwnBok2ipwHUSa9KNL6ZOQEE9BzslVClZK1LOkRZuNtUXOgL6+WgwadoCFqZiBdDQim9qwCSCWC3gT/ocgZtg/bLzgzGrYp/uUwZynE1f0TQyhWUuw2+kkZFa8SRKUk1SPP0bZkkhEpE1bg5nqndKV9T+LvSHpdZemdC2woYH+HQmScroYEJvCYfGsKmQOVXvBr2D0fHVvz4YTl0XeSOnqa8tDVk4USjIw6HvWMSNfX9JC7PaF/R+BXytOBBs2ILt3z/S0i8gxev/JGwc20dnAq7tL67V3ocWRm60+GoIyFSxOF/TZi0VrkujWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CYYPR11MB8358.namprd11.prod.outlook.com (2603:10b6:930:c9::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.38; Tue, 12 Sep 2023 07:49:23 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 07:49:23 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 02/19] drm/i915/dsb: Use non-locked
 register access
Thread-Index: AQHZmKtHeccOclpyqEaRmzSIRNu+Oa+AzGOAgJXc+jCAAL1jAIAAAj2w
Date: Tue, 12 Sep 2023 07:49:23 +0000
Message-ID: <DM4PR11MB6360A28726B5DA60D4F23E1FF4F1A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-3-ville.syrjala@linux.intel.com>
 <87edmmrxbe.fsf@intel.com>
 <DM4PR11MB6360F00A1944B8F6D83FC19DF4F2A@DM4PR11MB6360.namprd11.prod.outlook.com>
 <87cyynet9n.fsf@intel.com>
In-Reply-To: <87cyynet9n.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CYYPR11MB8358:EE_
x-ms-office365-filtering-correlation-id: 9156a534-e28f-4184-fd96-08dbb364c7b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ESM0pCgzs5zrjqjzxh6veAw6KIEDecgoEJtZInhG+OFHjFczvhw/fh/LgQvMx8R82eKhKM8f+fpRVPCjdG/IMg00xBdhKAPdx8NiPqK+WD0xEWQ9osKiEog6GPonK46LARbL5vu6D/x07e1Y4u516i1SPLSKRnWzHNbRjFe1FmzEuVuokKotS1d5d94VdrANhsmeEJgwCa96mV1gtzYNQSHa9UXkJw+Fb0JGLTqJF8UYogw1moYuWraGlVyEncTcs1Fwqe9cgEVDmyAuJrqIilbLF4qy/Z3sDItzeNJgFQ3fNEisF4V4E1GzDuS/5BoWdhsRFjtp0S6R5uHKBp01/qjF1E14limWSkZQHuBpctNFliO3fyyiKwZ/8bxFvn+zFmCcMQJ/D9B9Sbfgtwwq+ejoHqCTCS/8+crQKS9zjsAKwD2jAEebXDig+UHtNMyAYlzNsUwrI2LaQ9oihnIp5QLN3fprWqWQYBVTvI3/ESXM8o7RnVfoj9e8p2CGuH+z0ZzB/rWY1RV0FUhlF40O00a+JOKCgp0bV0V1yHcJ+aRcOGgqSKgiPW3AUttoyp1yv8ufE9GOSJaaXgglpmWihVXHgEjSSwnPZg1OFDVmnbbIWshteeQ57TTESLmhqFTE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(346002)(39860400002)(396003)(366004)(186009)(1800799009)(451199024)(7696005)(53546011)(6506007)(71200400001)(9686003)(478600001)(83380400001)(66574015)(26005)(2906002)(64756008)(66446008)(66476007)(66556008)(66946007)(316002)(76116006)(110136005)(52536014)(5660300002)(8676002)(41300700001)(8936002)(86362001)(33656002)(55016003)(82960400001)(38070700005)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZG1MR0tWOFYrVXRJeEh5TjYxVVdVaVlveDB6Y3YyUllqaXczbkQyQkxZL3B5?=
 =?utf-8?B?TlBxVWRmTkxjTWJ6dDR6QS96N29JakVoYzRCbXAwd0ZUckNyY0VRbWlTTzQ4?=
 =?utf-8?B?RWdBVXhZMTVDSGMzMjBkZGh4QnE1VWY5K3FWanFUcXg5djFZNGhDSndVblVo?=
 =?utf-8?B?Mmx4SklMb2RvSk96cldKTCs1bXlqRi8zS2JMSWZGYVlqbHZ6dUswelpvTUV3?=
 =?utf-8?B?RzU5eWxSbU43cU1jTnNuZDREZ0JJMFBWalk3NlJCeEtNWHVqbHpzemdZeVRN?=
 =?utf-8?B?Q3A4NExqeG1PZ2ZmRkJxTVF1Y0JQdk1ERGJTbDkwSURJMmVqNVJHRXhsTDNs?=
 =?utf-8?B?dks0U29SYkl2cEN1NnRGUmFvQ2I1UHF5aStyQ3E4elVicWsrT1piRWh4WktO?=
 =?utf-8?B?N2J4bHBXSHhzalBCT0dNWVR3dkxrZzZ6SVhScENxNzc2Y1dlVnFwYTl5bDlQ?=
 =?utf-8?B?bzJiRnB6YjlyZngzaktjTFpPWjI1eXg0T0xESUFkdjlrMEdmZnlXMVg2dlNV?=
 =?utf-8?B?NHRWSE0vTXQ0N284TUZxZTZZbURsWEpsUDlva2RWVjYvQktWL2g5SlBiaWVt?=
 =?utf-8?B?YWhYeTB6dklFNWtDckIzUVluNWNxdFRiZ2FGQTZMeGF6VExZSnZuT2JrRTgv?=
 =?utf-8?B?a2Fac0tPQ0RycnZITW43RUs4OWxVTXBvdFIvNjFLMFRJM2JJanJzRHc1cG0w?=
 =?utf-8?B?TWtDV0J4WTF6Y21SUjZWd0hDU2pKazk1amRRQzBCY2FZOTAwWlhrQmtLMnNJ?=
 =?utf-8?B?Sk1Eb3RITVVzTWZGdXNoZURCenAyeVJxSUxVVW04T1VQZDAxT01QL2Q0Y1Vl?=
 =?utf-8?B?U3pFRitaZDhCV0hmUHUzc2JTQ2p1UzBCcFlQaHBwVkJvcDZRMkxkWGZ1RWtC?=
 =?utf-8?B?d2E4MEhkQzBXdDJVa1FZZUZJWXMrOXJvczhpR0J6Y3FMSXZ0NnFVNEZRWGVY?=
 =?utf-8?B?TEJDS0h0UVFZVXFQSmpjK2dacFEwYlVSdncwMVRYalJaTUlHTDhqNDdYZWV5?=
 =?utf-8?B?cEwxRXNWWm42aGxMUElDdFJvQVNlM2JqYjRMMituSURCVXltZjk1Wm9GWGVY?=
 =?utf-8?B?UGFiYXpSclR6eUM3MDJlVzhGaVN1ZG45clFFbDM0ZnB4SDNNS2IrQmZXWWxL?=
 =?utf-8?B?OThUaEs2OGJEOUJqblNKWlI4bjQ3TkxjMXFJNGN6SUIrVXZFK09jbFZEOFhO?=
 =?utf-8?B?UmRkMFFDbXc5MkxUU3Z2bkVVQXM3VlJ2SUpmQVlvTlBGUFg5QnBzRnI0S2x2?=
 =?utf-8?B?cGdza2tycEYvUmowY2tuVjlzcW5pSGZqYytPUFJtaWhxeW81QmdWOXZXZXdo?=
 =?utf-8?B?bUpBeE0zTkJ3THUyZnFKaUdOZ3BBV0JYVWVvWUhVWW1BSm1NRXZMWDVmaGJl?=
 =?utf-8?B?bDR6VjNZVmVMTE9NWGE2clY4amJ3K0MwQ1MzQ2hwTkdiMXdaZU5DeW5tQTZ6?=
 =?utf-8?B?eDNJMzF2VjFZMmZLNTBXUmJYQzFHWWhEcjF6OXFRV0d4b1dBL2Fpc1NjWTd4?=
 =?utf-8?B?aG1VVm9PVG10Z3lVdUM2bUZBaDBaNHdlRmcvUWlJb1NLeXNrRVZQcVBQS0hV?=
 =?utf-8?B?aVJOYkJGaXZWK1N5R2VEWjIveHF5MjBkV1Y3QWcwenN6UkdQcW9kWGxsRXlC?=
 =?utf-8?B?V1JuWkovajBJU25oQSsyRUFHWEc3ZVdqdE9mUzJzOVE2ZlRja1FGMnBNaHc5?=
 =?utf-8?B?YzgveXBJTE9Mb1ZRblphNkRCTWx0VC8wTUp2WHpWWS9sMTcxakxPdEVkM1Mw?=
 =?utf-8?B?R0R0ajNDUGRKVytuWUs3M3VQcUc3d05mdStXRURlN3pBS1VXTDVyYk05OHl2?=
 =?utf-8?B?V0NKZWdRY3BPNUkydno5RDBWc2JUazhiMWs3aHJwbDFoSTZ0ekdZNkNub3Yy?=
 =?utf-8?B?RnlFRjhyL1BwMjRxN0xCOUhlWk9RUWx2RWJuYXU5RStXdHVEY05tQ2l6R3Ju?=
 =?utf-8?B?bXAwN1lmalJXN3g2ampWMHYxZzFSc1hPcXgyN2gwY3k1ODMyUVV3U0xuZHZZ?=
 =?utf-8?B?NXNvMU1ZNUZReXE1cmM5Y3hIVGVPaWJ2SHNqYXptbVpQQmVhbTF3SjBzVGRC?=
 =?utf-8?B?YkZ3MjM1c1QvVURKN2R5VkxPamtmaEZxeVBQVFdGSkE0Rk1lRFg1SkxvWjcv?=
 =?utf-8?Q?9JLhsKOBFUE3BX/dYaOORb1TG?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9156a534-e28f-4184-fd96-08dbb364c7b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2023 07:49:23.1304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l3qPXW53YtQHP6cS8fLkeCmsP9OMUPRzHrtAglIOAdECKHGI8kYeTbfHe0XhcgKd9S7IQJgfCbeC8yGMvlS8cQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8358
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 02/19] drm/i915/dsb: Use non-locked
 register access
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgU2VwdGVtYmVyIDEy
LCAyMDIzIDE6MDggUE0NCj4gVG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29t
PjsgVmlsbGUgU3lyamFsYQ0KPiA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiBbSW50ZWwtZ2Z4XSBb
UEFUQ0ggdjIgMDIvMTldIGRybS9pOTE1L2RzYjogVXNlIG5vbi1sb2NrZWQgcmVnaXN0ZXINCj4g
YWNjZXNzDQo+IA0KPiBPbiBNb24sIDExIFNlcCAyMDIzLCAiU2hhbmthciwgVW1hIiA8dW1hLnNo
YW5rYXJAaW50ZWwuY29tPiB3cm90ZToNCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gPj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3Rv
cC5vcmc+IE9uIEJlaGFsZg0KPiA+PiBPZiBKYW5pIE5pa3VsYQ0KPiA+PiBTZW50OiBUaHVyc2Rh
eSwgSnVuZSA4LCAyMDIzIDU6MTYgUE0NCj4gPj4gVG86IFZpbGxlIFN5cmphbGEgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPjsNCj4gPj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiA+PiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIIHYyIDAyLzE5XSBkcm0v
aTkxNS9kc2I6IFVzZQ0KPiA+PiBub24tbG9ja2VkIHJlZ2lzdGVyIGFjY2Vzcw0KPiA+Pg0KPiA+
PiBPbiBUdWUsIDA2IEp1biAyMDIzLCBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6DQo+ID4+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPj4gPg0KPiA+PiA+IEF2b2lkIHRoZSBsb2NraW5n
IG92ZXJoZWFkIGZvciBEU0IgcmVnaXN0ZXJzLiBXZSBkb24ndCBuZWVkIHRoZQ0KPiA+PiA+IGxv
Y2tzIGFuZCBpbnRlbF9kc2JfY29tbWl0KCkgaW4gcGFydGljdWxhciBuZWVkcyB0byBiZSBjYWxs
ZWQgZnJvbQ0KPiA+PiA+IHRoZSB2YmxhbmsgZXZhZGUgY3JpdGljYWwgc2VjdGlvbiBhbmQgdGh1
cyBuZWVkcyB0byBiZSBmYXN0Lg0KPiA+Pg0KPiA+PiBNbW1oLCBJIGFsd2F5cyBmaW5kIGl0IHNs
aWdodGx5IHB1enpsaW5nIHRvIGVuY291bnRlciBfZncgY2FsbHMgaW4NCj4gPj4gY29kZSwgd29u
ZGVyaW5nIHdoYXQgdGhlIHJhdGlvbmFsZSB3YXMsIGFuZCB3aHkgd2UgY2FuIHVzZSB0aGUgX2Z3
DQo+IHZhcmlhbnRzLg0KPiA+Pg0KPiA+PiBTaG91bGQgd2Ugc3RhcnQgYWRkaW5nIGNvbW1lbnRz
IGV4cGxhaW5pbmcgd2h5Pw0KPiA+DQo+ID4gSSBiZWxpZXZlIGl04oCZcyBhIGxpZ2h0IHdlaWdo
dCB3cml0ZSB3aXRob3V0IGFueSBsb2NrcyBhbmQgZm9yY2V3YWtlLg0KPiANCj4gVGhhdCBwYXJ0
IGlzIGNsZWFyOyB0aGUgd2h5IGlzbid0LiA6KQ0KDQpZZXMgSSBhZ3JlZSwgdG8gYWRkIHRoZSBy
ZWFzb25pbmcgd2lsbCBiZSBnb29kIPCfmIouIFNvbWUganVzdGlmaWNhdGlvbiBpcyBhZGRlZCB0
aG91Z2g6DQoiaW50ZWxfZHNiX2NvbW1pdCgpIGluIHBhcnRpY3VsYXIgbmVlZHMgdG8gYmUgY2Fs
bGVkIGZyb20gdGhlIHZibGFuayBldmFkZQ0KY3JpdGljYWwgc2VjdGlvbiBhbmQgdGh1cyBuZWVk
cyB0byBiZSBmYXN0Ii4NCg0KPiA+IE1heWJlIGEgY29tbWVudCB0byBleHBsYWluIHRoZSByYXRp
b25hbGUgd291bGQgYmUgZ29vZC4NCj4gPg0KPiA+IFdpdGggdGhhdCBhZGRlZCwgdGhpcyBpczoN
Cj4gPiBSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4g
Pg0KPiA+PiBCUiwNCj4gPj4gSmFuaS4NCj4gPj4NCj4gPj4NCj4gPj4gPg0KPiA+PiA+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+ID4+ID4gLS0tDQo+ID4+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMgfCAxOCArKysrKysrKystLS0tLS0tLS0NCj4gPj4gPiAgMSBmaWxlIGNoYW5nZWQsIDkg
aW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4gPj4gPg0KPiA+PiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4+ID4gaW5kZXggYmVkMDU4
ZDJjM2FjLi45N2U1OTNkOWYxMDAgMTAwNjQ0DQo+ID4+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPj4gPiBAQCAtOTYsNyArOTYsNyBAQCBzdGF0aWMg
Ym9vbCBhc3NlcnRfZHNiX2hhc19yb29tKHN0cnVjdCBpbnRlbF9kc2INCj4gPj4gPiAqZHNiKSAg
c3RhdGljIGJvb2wgaXNfZHNiX2J1c3koc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVu
dW0gcGlwZQ0KPiBwaXBlLA0KPiA+PiA+ICAJCQllbnVtIGRzYl9pZCBpZCkNCj4gPj4gPiAgew0K
PiA+PiA+IC0JcmV0dXJuIGludGVsX2RlX3JlYWQoaTkxNSwgRFNCX0NUUkwocGlwZSwgaWQpKSAm
IERTQl9TVEFUVVNfQlVTWTsNCj4gPj4gPiArCXJldHVybiBpbnRlbF9kZV9yZWFkX2Z3KGk5MTUs
IERTQl9DVFJMKHBpcGUsIGlkKSkgJg0KPiA+PiA+ICtEU0JfU1RBVFVTX0JVU1k7DQo+ID4+ID4g
IH0NCj4gPj4gPg0KPiA+PiA+ICBzdGF0aWMgdm9pZCBpbnRlbF9kc2JfZW1pdChzdHJ1Y3QgaW50
ZWxfZHNiICpkc2IsIHUzMiBsZHcsIHUzMg0KPiA+PiA+IHVkdykgQEAgLTI0MywxMyArMjQzLDEz
IEBAIHZvaWQgaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxfZHNiDQo+ID4+ID4gKmRzYiwg
Ym9vbA0KPiA+PiB3YWl0X2Zvcl92YmxhbmspDQo+ID4+ID4gIAkJcmV0dXJuOw0KPiA+PiA+ICAJ
fQ0KPiA+PiA+DQo+ID4+ID4gLQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRFNCX0NUUkwocGlw
ZSwgZHNiLT5pZCksDQo+ID4+ID4gLQkJICAgICAgICh3YWl0X2Zvcl92YmxhbmsgPyBEU0JfV0FJ
VF9GT1JfVkJMQU5LIDogMCkgfA0KPiA+PiA+IC0JCSAgICAgICBEU0JfRU5BQkxFKTsNCj4gPj4g
PiAtCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBEU0JfSEVBRChwaXBlLCBkc2ItPmlkKSwNCj4g
Pj4gPiAtCQkgICAgICAgaTkxNV9nZ3R0X29mZnNldChkc2ItPnZtYSkpOw0KPiA+PiA+IC0JaW50
ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERTQl9UQUlMKHBpcGUsIGRzYi0+aWQpLA0KPiA+PiA+IC0J
CSAgICAgICBpOTE1X2dndHRfb2Zmc2V0KGRzYi0+dm1hKSArIHRhaWwpOw0KPiA+PiA+ICsJaW50
ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpLA0KPiA+PiA+
ICsJCQkgICh3YWl0X2Zvcl92YmxhbmsgPyBEU0JfV0FJVF9GT1JfVkJMQU5LIDogMCkgfA0KPiA+
PiA+ICsJCQkgIERTQl9FTkFCTEUpOw0KPiA+PiA+ICsJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3By
aXYsIERTQl9IRUFEKHBpcGUsIGRzYi0+aWQpLA0KPiA+PiA+ICsJCQkgIGk5MTVfZ2d0dF9vZmZz
ZXQoZHNiLT52bWEpKTsNCj4gPj4gPiArCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBEU0Jf
VEFJTChwaXBlLCBkc2ItPmlkKSwNCj4gPj4gPiArCQkJICBpOTE1X2dndHRfb2Zmc2V0KGRzYi0+
dm1hKSArIHRhaWwpOw0KPiA+PiA+ICB9DQo+ID4+ID4NCj4gPj4gPiAgdm9pZCBpbnRlbF9kc2Jf
d2FpdChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpIEBAIC0yNjYsNyArMjY2LDcgQEANCj4gPj4gPiB2
b2lkIGludGVsX2RzYl93YWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikNCj4gPj4gPiAgCS8qIEF0
dGVtcHQgdG8gcmVzZXQgaXQgKi8NCj4gPj4gPiAgCWRzYi0+ZnJlZV9wb3MgPSAwOw0KPiA+PiA+
ICAJZHNiLT5pbnNfc3RhcnRfb2Zmc2V0ID0gMDsNCj4gPj4gPiAtCWludGVsX2RlX3dyaXRlKGRl
dl9wcml2LCBEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSwgMCk7DQo+ID4+ID4gKwlpbnRlbF9kZV93
cml0ZV9mdyhkZXZfcHJpdiwgRFNCX0NUUkwocGlwZSwgZHNiLT5pZCksIDApOw0KPiA+PiA+ICB9
DQo+ID4+ID4NCj4gPj4gPiAgLyoqDQo+ID4+DQo+ID4+IC0tDQo+ID4+IEphbmkgTmlrdWxhLCBJ
bnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXINCj4gDQo+IC0tDQo+IEphbmkgTmlrdWxh
LCBJbnRlbA0K
