Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF7D81C52B
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Dec 2023 07:34:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6243110E747;
	Fri, 22 Dec 2023 06:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4550210E747
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Dec 2023 06:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703226889; x=1734762889;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kXHqbVKpsVVRJ2pcZoieVAMAAJf5Vs+UIZkHHqsUtnU=;
 b=foHFEjSRoW8xHRz78OiFmLDxuPMsz2UJQCfC8vEe8+wL6rQ4CUQTQvnu
 RwwxGeTffmNqdgh0YWOBx+eboqt+sNPUOLZfuYVv0dMXvQ4wWsewpyXFA
 W4S8AoVNnrMVoKuFmdgsXSj2TyoJLzw+HyhK7IQxFN4++YttKsIKPoHgr
 mJU+7DIXSZWpiXT4chB7tOCeQkfylBLdAsHW0CJM9lVMWfPlOyGPeNv60
 EBcA5Oidx9UbHzXOBpm3pNJHHCMfgz+UoIP+ZhOTWI/lfQEppVoAmBWjZ
 xaMTv/wTSC0vUmAL58Uoq1+bFuy8uKZai84siW11DMUw4nJIZZQWQjzrs A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="482263506"
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; d="scan'208";a="482263506"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 22:34:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="842858481"
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; d="scan'208";a="842858481"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Dec 2023 22:34:48 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 22:34:48 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 22:34:48 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Dec 2023 22:34:48 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Dec 2023 22:34:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=odQL65KQK7EqhoudxE5R5DNk9nP+ivGcFKl6sEVQUTqthHC+D4A4uByAsCKkZ742NpbVUvBVXnwiDCW3YGdc5iIk2FIy4N4u2CKjqUg6Mxt7MsLhHz3cMAqbtuILz1b+xFA3DM3VWNVT6ZuXZBdFb+UcuTSnXh7aZRL9V5nDl0mQj6nTlmh7ujze/xMa8jza+p9PPIGARa9eHB0fvBYOyVtXOGmfeBAQK4zXOch2jS8O2Rc9u1cvuefZTNErySJohHgswbG46wFrO8kmdD74000C5fzpOQ+ySDBtedfX7XET9NvMexwgTAxS2z5BvNwp2V+WkjAWsJRkxy0tqjc7gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kXHqbVKpsVVRJ2pcZoieVAMAAJf5Vs+UIZkHHqsUtnU=;
 b=T5bnCydAbHDoHEsNf684G6g4dxp7lnpr6i+NoN6ysUBrN/suwh/5SoZ+8XmkSMExVNOJeGXbZ4wYGluhE67gAJfjzAk0/A8o2At7kp/SERNBt3m5HeVCD/YobmzkOPfzuht3B6Lf0TK8PjDicpXEmzTfrwjbJFFBfPsIP67VjnQzXR0ZcUwBIEgOCCeE1UHj0mURnFxJMDClFZQJrNVkBwjHii2p7aTY7cF7TqkxsZ1zZRayMrdpAi1K73LpjxzdGGPsI4WaNvyTWi2kAuEancT4EoqmJAfxI9z9seTrZfr4p82yvfiG4uI+yOaElOzBBIy1sS6teIzyhqc6zQggEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB5049.namprd11.prod.outlook.com (2603:10b6:806:11b::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7113.21; Fri, 22 Dec 2023 06:34:45 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7113.019; Fri, 22 Dec 2023
 06:34:45 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 0/7] VSC SDP rework
Thread-Topic: [PATCH v2 0/7] VSC SDP rework
Thread-Index: AQHaMzBpupPZ9uTwNUuI10d0e9GIb7C024UA
Date: Fri, 22 Dec 2023 06:34:45 +0000
Message-ID: <eecbcb79129f861ce6041b73b3a3262216155ec4.camel@intel.com>
References: <20231220103609.1384523-1-jouni.hogander@intel.com>
In-Reply-To: <20231220103609.1384523-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB5049:EE_
x-ms-office365-filtering-correlation-id: 79319b29-f93f-40f3-fc2e-08dc02b816bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8h1bfho+yw8aotVadIMMOwtQIUs8OoGxXeEaLidFdguL7ep2GUorTVwoMmYbrxzEp1nDsCaShBHAeC1DGq7SZlWy+QDntMEZEvGy64NdFpmnXOjqrJjPlZD2YcBD4nosS8XGvCjRvXjxiEVU6x4XKsxxOajtX7m5OMndqH+A4zW3SN8xnLxPtlcK52RydlNJf4h/ZKIwulNZoCvmNAj4AlCH4WcqLk/U/1y73NCcmrNoRUBug8sZCIkbNs9FlBXTsa/+9441NmrVy/FpCn52Imd8E5NLYkk2kWyIATJI8CInoryXIfhBJ6JBKZ3URbQppiUfuOHd02yDbA60Z/6t7nDkSuSeVgklegxMDEg+cnL4I0/zCP83m1sd/nqYGF35ArgdveiYPa54EamRR4NRf9zik5ihTwc1Y62m0vzyEkn95SvypZ80ObTXODxcYZ2WL+e2zNPqol0Bn8Yuy01maH0XFXFJLeUdMpGhNlDNbgFPKaYFIVyKhJzeE7acjTkpySlg0PF2Jm+StsEdCd0ktSrscSGku5X7LQIu8G6FUWkkYWvz63UxHNl92ea/RAcmbg+YygpD8GBPGsRJMgQuSmnifTryDfPkqWJmSWT620I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(376002)(136003)(39860400002)(396003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(91956017)(478600001)(966005)(6486002)(38100700002)(122000001)(4326008)(82960400001)(5660300002)(54906003)(64756008)(316002)(6916009)(66446008)(76116006)(66476007)(66946007)(66556008)(8676002)(8936002)(26005)(2616005)(107886003)(83380400001)(71200400001)(6512007)(6506007)(41300700001)(86362001)(38070700009)(36756003)(2906002)(4001150100001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NXRwazJVSDhxREFNbi9aYXBMdmNXUllGbDV2VXRtNlBlT0VTMmhhc3IwOWFD?=
 =?utf-8?B?aVhhV0tvbzlGV1VBNU1PQ3dTTm9zM2ordXpaK0Y4YjRzbnRCNyttS2d1a0xL?=
 =?utf-8?B?ZC9sNUZub0lHcFVHNmJ3VDIvS2lsSTBwNjBxait1RUx4bVdkR1l1YzMwWGN3?=
 =?utf-8?B?N1hpTkV5TWlFMUlQNndvQnNCa3M0dVVLTzVKYmNxai9jMVkyb21adkEwdnpW?=
 =?utf-8?B?VHJGK1k4WERaK3Brc0JHVFprc0d4YTcxaEFRR0FKNTgxSFBKS05GZlRaYU5J?=
 =?utf-8?B?N0dMNkpFak1QK1BSM1ZZZmovVzRPOWR1UlEzd1Q0WXpkd2hQVzh2Sld4MS9p?=
 =?utf-8?B?R1c0ZWhVK1IybHBTQWt0d2dwTnBmTFpXd3o1bU5JWXczRXhRN251bXlYc1hk?=
 =?utf-8?B?MWZ5YTFRK1p6ODIxZU1uWE9rSVV0V0hKWHQyMVdrK1lncjE1cnBkbTJqR21h?=
 =?utf-8?B?NEFIVzJRUm1DQVFsR2VsNG5EdzV5aTdvZnFqVzdtOTNLVC9VWTNKb2JKbUtE?=
 =?utf-8?B?MjFwWk9CUTd3MnltV0RHQnRhc3oyTXlFbzJYVXB1WVZvbzFQWjllUjNkaW1h?=
 =?utf-8?B?ay9IR1FHQXdNQWZmaTh6YmptYkhIenAvS1ZmMGdoZ1ErbEpsbXZCTk43cW1R?=
 =?utf-8?B?VzZIM0llcU5wQUNaZlJSU2U3UVB5dW1oMUkzT2gvNWVOYVhhNzBXMGZRbTd0?=
 =?utf-8?B?OU1mbFJrT2U4WTZTd3NqR0d6Wk93VTNTblYybHg2Y2ovSkF4YWxPWFFBbFNh?=
 =?utf-8?B?OVpKbXFyOHdNMERHVVZoWEs4eXpQYllwV3ZxUHl5cnpIM09nejlTUE9LOFBw?=
 =?utf-8?B?bUh6SUZqRFhLdVBuWVpCakF4b05HczA2SXNnNDFUQTRNc2Q1dDVKWDJBV3Ru?=
 =?utf-8?B?aGFCOWRPaTVDSTNpOWhVdUFEYnpjcytmYjJCMXZSYmdERk4rWmVQSldTREgv?=
 =?utf-8?B?OVNFWGF5U2ZFTk5aOUxyMHc2OThWM1JIQVo1UU1NUXhQK1RTd0d2LzVxaG1J?=
 =?utf-8?B?Tm5CazQ2OUt2NEZzcm10RkRBZTROQ3ZmTzV0bDd6TkdyTXRzM25nV0VaNEc4?=
 =?utf-8?B?NzlVUWQ5V2szQ2h2MDlCbjdYZ1lhYUttMHhncERZRFo0UVZ4S2xWNytZMjRt?=
 =?utf-8?B?alpYUnU0Zmo0M2orNEVCTGZHOG9LTHBwSThqUW1zYnBObS9YaFdlckFGc2pT?=
 =?utf-8?B?bENnQzYyVWhqSndnTTZDMWp6WnBlNFFiSFFKY1d6VmplR2tsU2JPUVQwczFi?=
 =?utf-8?B?cTBaUTFRNjNmc3hQeXpJelVPT2lpYlFVdzV3UHVSVUlmMHJ4dzlua0R1SFpE?=
 =?utf-8?B?T1lDR0pnSlFYZ0xUUUhxMi8zZm8xbkllUEVFYTNYRWdPamUyQ1huL0JBdCs0?=
 =?utf-8?B?YkIvVURWc3dpMWZ6dHJWWktsekN5WjMrcThBQ3RDeVBFOHErZk5FVDRjandM?=
 =?utf-8?B?cXJ0aUtMaTRTMWgvblBDOFE1ckZTTDUxajRIZDU3aGUzZ1ZOSk9SeXhxUk5m?=
 =?utf-8?B?THM1eXF0OTdqQ29RSlVQcUFtbWh3b0huSTFVQ0VtODBHZk0rSFdXVFcrMEVU?=
 =?utf-8?B?VCsyM1ROcnp1QlQ0cHdnWFJ1RS9lRHY1c2o5dzl2dEsyUjZSVTJmNFlCZ0NY?=
 =?utf-8?B?WXdCak5zUGZ3K2dZd0VvY2h6ak9ZYVEwNmFrYlk1L3Z4VGxzTURLTWllTnV6?=
 =?utf-8?B?alNJaW41aXE2VmJtQXUyTE04U3Y1RGtZZk9Mb3Q2b2N2cG9HTzBVM2Uyc09u?=
 =?utf-8?B?eWdTVS8zeU9jQkh0Yk5LeGN0enJ4Q2VMQVU5RE9leVYwd2p1N3l3a3JNT3RR?=
 =?utf-8?B?UHhzbTlDYTNmWnZJQjIyQ3k4WHBvK2NrMGFnRStyZlVDZDI4NHJYTmk5SHBQ?=
 =?utf-8?B?T0thbTh0c1NVaEtIVmw1NUxta2NNR1BnNW9ML24xKzZjM1VaekdxV3F2VUhF?=
 =?utf-8?B?RDQyM1E2NXVjZEM4ZHhJWEIrVE5vRnhJSlE4dWVseTZFMHpMWjlwOGliT0Zs?=
 =?utf-8?B?RWlCUlFadmtONHRobWJpTzZDZDJCMit6NWlpV3RIM3ZhUktrSW80WDVhZjIw?=
 =?utf-8?B?OGgwZGVNYUZENHdjZGpJVFlpalBjblQ1VXVlbjNGUUNVaGNVUWVNY09vL0xO?=
 =?utf-8?B?M1lOUXNMVnRrRCs2V1RJY3JtcWc0T1hlUm8vSTg1WkFZZE1XMkVXWnY5L3pC?=
 =?utf-8?B?dEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <AE5C17E2C23B414AA0C9F12DC86C162A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79319b29-f93f-40f3-fc2e-08dc02b816bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2023 06:34:45.8064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q3dLycr9rtEFJZGnNDvXL6n3/eNvMW424MMo2G4bKwdFwRJA7kuxkxZ6MKzfnN72Er1s18rIqsCh3yuo8/5sZkYXBEOxAxbU/p8YIVm5vKs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5049
X-OriginatorOrg: intel.com
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
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGVsbG8sDQoNClRoZXNlIGFyZSBub3cgcHVzaGVkIHRvIGRybS1pbnRlbC1uZXh0LiBUaGVyZSBh
cmUgQkFUIGFuZCBJR1QgcmVzdWx0cw0KYXZhaWxhYmxlIGluIHBhdGNod29yazoNCg0KaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMjc4MDMvDQoNCkR1ZSB0byBwcm9i
bGVtcyB3aXRoIG91ciBDSSByZXN1bHQgbWFpbHMgd2VyZSBub3Qgc2VudCBhbmQgbm90IGFsbA0K
Y2hlY2tzIHdlcmUgcnVuIG9uIHZlcnNpb24gMi4gSSBjaGVja2VkIElHVCBmYWlsdXJlcyBhbmQg
dGhleSBhcmUgbm90DQpyZWxhdGVkIHRvIG15IHBhdGNoZXMuIEFsc28gSUdUIHdhcyBwYXNzaW5n
IG9uIHZlcnNpb24gMS4gUmVzdCBvZiB0aGUNCmNoZWNrcyB3ZXJlIHJ1biBvbiB2ZXJzaW9uIDIu
IENoYW5nZXMgSSBtYWRlIGluIHZlcnNpb24gMi4gd2VyZSBtaW5vcg0Kc28gSSBkZWNpZGVkIHRy
dXN0IG9uIHJlc3VsdHMgb3ZlciB2ZXJzaW9uIDEuIGFuZCBtZXJnZSB0aGlzIHNldC4NCg0KVGhh
bmsgeW91IFJvZHJpZ28sIE1pa2EgYW5kIFNoYXduIGZvciB5b3VyIGhlbHAgd2l0aCByZXZpZXdp
bmcgYW5kDQp0ZXN0aW5nIG15IHBhdGNoZXMuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0K
T24gV2VkLCAyMDIzLTEyLTIwIGF0IDEyOjM2ICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEN1cnJlbnQgVlNDIFNEUCBjb25maWd1cmF0aW9uIGNvZGUgaXMgYnJva2VuOg0KPiANCj4g
MS4gRHJpdmVyIGNvbmZpZ3VyZWQgaGVhZGVyIGFuZCBkYXRhIGlzIG5vdCB1c2VkIGF0IGFsbA0K
PiAyLiBDb2xvcmltZXRyeSBkYXRhIGlzIG5vdCBhZGRlZCBpbnRvIFZTQyBTRFAgaWYgUFNSMSBp
cyB1c2VkDQo+IA0KPiBUaGlzIHBhdGNoIHNldCBmaXhlcyB0aGVzZSBwcm9ibGVtcyBhbmQgbWFr
ZXMgVlNDIFNEUCBjb25maWd1cmF0aW9uIGENCj4gYml0IG1vcmUgc2ltcGxlciBieSB1bmlmeWlu
ZyBQU1IgYW5kIG5vbi1QU1IgY2FzZXMuDQo+IA0KPiB2Mjogcy8tY29sb3JpbWV0cnkvd2l0aG91
dCBjb2xvcmltZXRyeS8NCj4gDQo+IEpvdW5pIEjDtmdhbmRlciAoNyk6DQo+IMKgIGRybS9pOTE1
L2Rpc3BsYXk6IFJlbW92ZSBpbnRlbF9jcnRjX3N0YXRlLT5wc3JfdnNjDQo+IMKgIGRybS9pOTE1
L2Rpc3BsYXk6IE1vdmUgY29sb3JpbWV0cnlfc3VwcG9ydCBmcm9tIGludGVsX3BzciB0bw0KPiBp
bnRlbF9kcA0KPiDCoCBkcm0vaTkxNS9kaXNwbGF5OiBVbmlmeSBWU0MgU1BEIHByZXBhcmF0aW9u
DQo+IMKgIGRybS9pOTE1L2Rpc3BsYXk6IEZpeCB2c2Nfc2RwIGNvbXB1dGF0aW9uDQo+IMKgIGRy
bS9pOTE1L2Rpc3BsYXk6IElnbm9yZSBvbmx5IHBzciBzcGVjaWZpYyBwYXJ0IG9mIHZzYyBzZHAN
Cj4gwqAgZHJtL2k5MTUvZGlzcGxheTogUmVhZCBQU1IgY29uZmlndXJhdGlvbiBiZWZvcmUgVlND
IFNEUA0KPiDCoCBkcm0vaTkxNS9kaXNwbGF5OiBUYWtlIGNhcmUgb2YgVlNDIHNlbGVjdCBmaWVs
ZCBpbiB2aWRlbyBkaXAgY3RsDQo+IMKgwqDCoCByZWdpc3Rlcg0KPiANCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jwqDCoMKgwqDCoCB8wqAgNCArLQ0KPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jwqAgfMKgIDkgKy0NCj4g
wqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKgwqAgfMKgIDQg
Ky0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmPCoMKgwqDCoMKg
wqAgfCA5NyArKysrKystLS0tLS0tLS0tLQ0KPiAtLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuaMKgwqDCoMKgwqDCoCB8wqAgNyAtLQ0KPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jwqDCoMKgwqAgfMKgIDggKy0NCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDExICstLQ0K
PiDCoDcgZmlsZXMgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygrKSwgOTYgZGVsZXRpb25zKC0pDQo+
IA0KDQo=
