Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC46B6CBC4A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 12:14:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8F0E10E46A;
	Tue, 28 Mar 2023 10:14:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F41B210E45F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 10:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679998489; x=1711534489;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=49zg3GX7t5l72tjmad6FIylgbPC471JhIOCCfNuNT9U=;
 b=SHFC9pv9NI+bntHqiGljLmqpMh/RG9z5MoTHNO/RX4E1CVktrIppmUwK
 ONiicXmamY8YQ8DvQ907HCiYZQdDvfX9wbU8hNZuXlj2uzOA1qu9JHpZN
 l+VGkvXkLWXkAgp2qYTnQmwfjY2Ltsx84cG/+9yS79KsKFWdnyydQRNwm
 YcRUUPEX7OlqOVYE4XSzLof2ulpSfMUDJIDkyzrjA4WADcj+ipBz2Yojh
 6xh0qmNEd2cxpNvuu5tODK5AE3wm63KW1frhQtkU14RlPwaDcgu097KtF
 h2wLjCZujjv2lF3h9C+uEM692ncNHYeD6Qe7REranqdFvWB4J8aoxsEVU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="342115574"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="342115574"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 03:14:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="714188249"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="714188249"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 28 Mar 2023 03:14:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 03:14:21 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 03:14:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Mar 2023 03:14:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 28 Mar 2023 03:14:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RK4vNA/ww8OEp7D5PWcaAVEK0VdeO6cIv1Sd1a+eQltqTve7uU0Wy8NawOQ9OATWfAJ0DvAdCGe7WtmsONqxV4pe+67pcybPLbckvf0IL3ZkZVChKFfOwoSKRTRaFBBrHixpteAvK0CzTB3zV51mx4ugHjBFAQiFqPPS/vW/RNYz+pu92TGN2m9MLFdxoUbVjeY5Vt4wYMZzG9KFi0yldmbY53wJsV5n2CF2LaCTj3W/PcTIs630i2LvuKOWnXmujpadRgNVnsw9gPHjkoBFBB6Q5iyWwlbnbL1uAL5wTV+562vrchDl+QN9naCZapqAwZboh+c089TkIYFtbzsNag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=49zg3GX7t5l72tjmad6FIylgbPC471JhIOCCfNuNT9U=;
 b=mw7RS9BANWu7B+xcVR6VEgyWR8QKQzx4KcFHjIwGqWE9zukzorPksTuA5Q7FNLmPiTZYsS68fnWFLSMcme47tAUgBSjCQ7WFY5nBpfzS0vGjDv2jQyPxNELJ/FW2dz9OUEchaoKzMdLE7biDjD63gjJAOPeWintGLf8nRD+HsgCvpaKFbWbYYCfcXu0z3892j78C3IX27yNuz6pHILxT4QpmN+IP59ZhikCn55xKyOTSS1a9I/bNn12OtuXkEpMDscGNU453zYFDpJh/jwhDP7m5dL9kLT4waubg/Ii7rpHC4dcDhi+xyYWskVlkH+qDKBVOA2SjWLzv7AjHEENQjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH8PR11MB6779.namprd11.prod.outlook.com (2603:10b6:510:1ca::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Tue, 28 Mar
 2023 10:14:18 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%6]) with mapi id 15.20.6178.041; Tue, 28 Mar 2023
 10:14:18 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 26/29] drm/i915: Move shared DPLL disabling
 into CRTC disable hook
Thread-Index: AQHZXZLIX2WyTu0CKEW3V4uciDhrKa8QANgQ
Date: Tue, 28 Mar 2023 10:14:18 +0000
Message-ID: <MW4PR11MB7054524B2D27A318753A7318EF889@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-27-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-27-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH8PR11MB6779:EE_
x-ms-office365-filtering-correlation-id: df340ce9-573f-4b40-d47c-08db2f753109
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ug4BCbVtSUT9qSmiMLgrUQqPrKeHJqqaZCuY65MfDFH5j/J3VXB+vkQL96arvI+C4Ino4QyS9faagUPDN+rLSP1j/JN61BrBwHJsiutflnCL5ukFCNMHNM/Sl6z3YWipvJbfMqTOnt2ZRyRzxFEUE/j4OU/yqqQFCe0QdMa5JTCYAAv7izYcToamP0gPLjCPfwKPxfMEKtk7gE7gu4Ak2deiGi0hVWTJlIW+wpnt56SIL+VWdSg94ZnkGx1PXPGijdsEWwin6QJBCI7IUQczCurUCj40UcDFYMcsqcp5cbT3R4BOFi+GEiFZYddhUX6MFBU/PUh3Z6ORd3XNhT9gSM3ZSxPs4rswYyoFaTQ06C/WdTsMsKgJ4fcWRSI0hlDU3wxfUjHfEQWMU1bs0BU8E2XO9FrOq/CKItggiOqij98CITUh4d/rtKaTJuj76A/HVC9igmUwgqoRaWau48eSaYkGE2JFk6nFmQtnRn0c6a5TbCXHUCtzPBUJG6q/1OrPIZXPZtfQft836+rIoii9xQB9oLXIIIPMHUl/JUG0+w+DCvRojpd3iYBJsn9LfSJFxfrbTePu/BBRdpfoLoPQk92+S0NpdeV5iPMBsPbscaujFlovFQhkn7GZhKRs0MsP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(366004)(136003)(346002)(39860400002)(451199021)(316002)(110136005)(478600001)(52536014)(8936002)(122000001)(82960400001)(38070700005)(86362001)(5660300002)(66446008)(76116006)(2906002)(64756008)(38100700002)(66476007)(33656002)(8676002)(66946007)(66556008)(41300700001)(6506007)(186003)(55016003)(26005)(9686003)(53546011)(83380400001)(71200400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Znpyc1JIQjU5NVNrU2paQ0xRWHJrVTAzSDVieStuekdZenh2ai9XdXNSK2kr?=
 =?utf-8?B?Y3JVRGdGVlBKUnpKbS84OTduSkFsYWJ4dlVCYTgzUjBidFVMWTVYZ2hIVlFD?=
 =?utf-8?B?Q3hDRmk5aGdrekJndnpxS0VGZTQ1ZzVXMWdzVGpzTlNFUmRWZ0JJZldoZm8v?=
 =?utf-8?B?UnAvd2VPejRXSlRjTWtiSlJNWXdjenJaejBybElrRDNvR2xwVmpSMFlMVndI?=
 =?utf-8?B?NnRITlJHWDNRZ3p4WWk2dWwvdDBsdFNaZ3NzelRYL2JzejZiaHc1cWFHL0ds?=
 =?utf-8?B?WC9DVzJMdE9vc2ZMa08xZ2ZtYUlUZ1U3SUFka09SbnRpNG9jTy9OSGRPUmhz?=
 =?utf-8?B?NXRCM3k1VHU0ZFk1RWlycU5Xei9Wc2lVUkJJNVVmQU0wQzIyMkhtTFo0clFa?=
 =?utf-8?B?MVViSWgyRzlaSFFLWml5WGZ5SmQvdVdPbWZ6YWRNa25CVmRxQVZKaXQ2VGtm?=
 =?utf-8?B?YjhmNjdVQ1VUUHdHWWdINVlvanhOREpMb0w4aEpLb0xCMk55Q1RhSkNlTzJV?=
 =?utf-8?B?M2VDZVNrNFFkUElLTSsvbXVWZTZtNUdaaWFnWFVuVGs0alZVSUtRUnZiWjdE?=
 =?utf-8?B?ZGRILzJxamtWMU5jNjlJOGxIUTR1QlFjWFBoWGQ2eURCVUc3NlFwbFF4WFZK?=
 =?utf-8?B?SkZidWdLRDJsNkoxTjE1OE4zQVJFcEx0UTU0cU53c3RmMWRxSm5aQWFoR21I?=
 =?utf-8?B?a1FHU2lFK0V2em1ZbzhWWDBYUHhXSitCc3FwOEdqZE5KSjVYRzJUODVjU2hi?=
 =?utf-8?B?bUpiWncxaktmNCtvVExlTVRvd3ZRakd1UXBDd3JUSjh6MnJ1VS93VWU1YmdB?=
 =?utf-8?B?eWVUR2RlWVZ0NEJ2NGFTQWJvek5NZm90WTdUUkRTeXB0QTFYc1F3b3lLdHda?=
 =?utf-8?B?TmtHdVUxeXhLcnh1d0dIZmZrOG42NGg2SUJsc3NRTEtWY3kyNG1xRm80cnh2?=
 =?utf-8?B?YkQ0eG1oVDlkWXZOSk5ScmdETUdBU3BOcURQTXh2dmhCYytEb3gwT3E4T2pR?=
 =?utf-8?B?TEtHZWFtOVZSUTNtZm82eWJVR1g2M2dKU2hiMzR6NnhtS3F5dGczSmEyQWdY?=
 =?utf-8?B?T1kxUTdHalFtb3JnTHpMMXdGbWFpazBpSFdSRkNYK3MvaC9SM3RGMEY3ZlRF?=
 =?utf-8?B?SVJ6NS9xME80S2c2WTVOVG5aNnY0UitqRTFUVnFXYW1HSTZxOTUxWlNoTUNV?=
 =?utf-8?B?aFZxeEgwZ1ZoMzUzbkFZbzZpR05xZDV2cmNzMVRkaUQrREZpcU9vTWtSeFRN?=
 =?utf-8?B?SUhOejlocXN0OUZDbExTa3p1M21iblE2MitwV0dBR0UrcUFzQUlHa3R5M3ky?=
 =?utf-8?B?STJXaDhOLzNJZXQrUDR1TS9FRXhUN0JrTEVZVEYyenhuMXBOSXN2Q2Nzb1V5?=
 =?utf-8?B?QzdtU1Y1a3psSldhcnFjZ0VhYk43RXYrZGM0S2RDZmNFckhocGIvS3owbCtz?=
 =?utf-8?B?b0VSY2l2N2xGTFFqVlU0L3N5VldNei82Q3JMZVBGaEc1N2pBeWNBYVhoZnRF?=
 =?utf-8?B?SldBbGh1Z0JpL0dsVGh5V3VTRzZGZUhIdllJVnJjV1RoSzU0TFQxVGJxQVMr?=
 =?utf-8?B?Q1U5ZFErMXBGL2lGb05IK3VqTS9VVWFwOVpyRFZBNXNsanhJNlZRd0JMSGt5?=
 =?utf-8?B?RUlGcExtOGZjUUQySHROM0FmdjJSQlFaTjRhV0NvbVNBSFkxeTg2L2lpMVJx?=
 =?utf-8?B?dDdzL0JkUDBPTTFyQUNhR0hjd0IveFJNN1hBMEZna2JISHpIMERTMys1UnBm?=
 =?utf-8?B?Zll6R3NlQ2t4Q3Q1T09qSWozR2tSUWtBZVJqUWdtTkZpakpST2JJclcwQmhC?=
 =?utf-8?B?U0xuSi9OZVJBRUdZazBqT1pzbnFTQUowZWVNazJ1RFBsYTdXN3RiVFF3dWFa?=
 =?utf-8?B?QnZMdTROK09iNHVidWZPbDYrQ1VIQzRrK0s4M3dJNExvdjlIeEs5RytqME16?=
 =?utf-8?B?VFZqdDdDd1VNTlI4d1d1RldhQ3lSR2trc3lpNHpKelp4eUMwTzVGdTR2QlRy?=
 =?utf-8?B?dlprWE1LU3pJbGkxYU9vY2JkSG9RbUJ0dHIyajFselE1ZWladHFNenBDU2ll?=
 =?utf-8?B?S2hxaUVFQnlZYWttc0VVdlI0WE05b2FTOTd3M3kzRkgyWFFndjZGdkRhbGcw?=
 =?utf-8?Q?/eL7L2brqXkVN9QC/0bcIRJ3j?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df340ce9-573f-4b40-d47c-08db2f753109
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2023 10:14:18.3308 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dtU9ZnIiah1/hKhniDMKAUPwcM/I+UhH8KogvzjQt5n2LDrZ475/IpY+huLUa7wd9qB2bzQqCq4XZ2GkXPljQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6779
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 26/29] drm/i915: Move shared DPLL disabling
 into CRTC disable hook
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
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMSBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MjYvMjldIGRybS9pOTE1OiBNb3ZlIHNoYXJlZCBEUExMIGRpc2FibGluZyBpbnRvDQo+IENSVEMg
ZGlzYWJsZSBob29rDQo+IA0KPiBUaGUgc3BlYyByZXF1aXJlcyBkaXNhYmxpbmcgdGhlIFBMTCBv
biBUQyBwb3J0cyBiZWZvcmUgZGlzY29ubmVjdGluZyB0aGUgcG9ydCdzDQo+IFBIWS4gUHJlcGFy
ZSBmb3IgdGhhdCBieSBtb3ZpbmcgdGhlIFBMTCBkaXNhYmxpbmcgdG8gdGhlIENSVEMgZGlzYWJs
ZSBob29rLA0KPiB3aGlsZSBkaXNjb25uZWN0aW5nIHRoZSBQSFkgd2lsbCBiZSBtb3ZlZCB0byB0
aGUNCj4gcG9zdF9wbGxfZGlzYWJsZSgpIGVuY29kZXIgaG9vayBpbiB0aGUgbmV4dCBwYXRjaC4N
Cj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0K
DQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDUgKysr
Ky0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
IGluZGV4IDVhMzg2YzdjMGJjOTIuLmNhMDI0ZjI4OGFiNjUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xOTA1LDYgKzE5MDUs
OCBAQCBzdGF0aWMgdm9pZCBpbGtfY3J0Y19kaXNhYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUNCj4gKnN0YXRlLA0KPiANCj4gIAlpbnRlbF9zZXRfY3B1X2ZpZm9fdW5kZXJydW5fcmVwb3J0
aW5nKGRldl9wcml2LCBwaXBlLCB0cnVlKTsNCj4gIAlpbnRlbF9zZXRfcGNoX2ZpZm9fdW5kZXJy
dW5fcmVwb3J0aW5nKGRldl9wcml2LCBwaXBlLCB0cnVlKTsNCj4gKw0KPiArCWludGVsX2Rpc2Fi
bGVfc2hhcmVkX2RwbGwob2xkX2NydGNfc3RhdGUpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lk
IGhzd19jcnRjX2Rpc2FibGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsIEBAIC0x
OTIzLDYNCj4gKzE5MjUsOCBAQCBzdGF0aWMgdm9pZCBoc3dfY3J0Y19kaXNhYmxlKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQlpbnRlbF9lbmNvZGVyc19wb3N0X2Rpc2Fi
bGUoc3RhdGUsIGNydGMpOw0KPiAgCX0NCj4gDQo+ICsJaW50ZWxfZGlzYWJsZV9zaGFyZWRfZHBs
bChvbGRfY3J0Y19zdGF0ZSk7DQo+ICsNCj4gIAlpbnRlbF9kbWNfZGlzYWJsZV9waXBlKGk5MTUs
IGNydGMtPnBpcGUpOyAgfQ0KPiANCj4gQEAgLTcwMzUsNyArNzAzOSw2IEBAIHN0YXRpYyB2b2lk
IGludGVsX29sZF9jcnRjX3N0YXRlX2Rpc2FibGVzKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlLA0KPiAgCWRldl9wcml2LT5kaXNwbGF5LmZ1bmNzLmRpc3BsYXktPmNydGNfZGlz
YWJsZShzdGF0ZSwgY3J0Yyk7DQo+ICAJY3J0Yy0+YWN0aXZlID0gZmFsc2U7DQo+ICAJaW50ZWxf
ZmJjX2Rpc2FibGUoY3J0Yyk7DQo+IC0JaW50ZWxfZGlzYWJsZV9zaGFyZWRfZHBsbChvbGRfY3J0
Y19zdGF0ZSk7DQo+IA0KPiAgCWlmICghbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkNCj4gIAkJ
aW50ZWxfaW5pdGlhbF93YXRlcm1hcmtzKHN0YXRlLCBjcnRjKTsNCj4gLS0NCj4gMi4zNy4xDQoN
Cg==
