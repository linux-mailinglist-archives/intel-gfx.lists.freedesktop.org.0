Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2BC62FC03
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 18:51:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D86A510E244;
	Fri, 18 Nov 2022 17:51:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8812610E244
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 17:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668793908; x=1700329908;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IWVI6kt3Ee/GCHO/AaL+q6SrJ73TPmp+n/jSFiy3wwU=;
 b=BbEydKa2K0kU10GpbjaVhYpc6+2iLQ62A1VjCgt3Z4wfJ41vRIwAs58A
 nIFkfkMUuH/mGFKRqd56U6zhIe3oQksFgK963IY5l9q0J7DdUZ0LITkYG
 Bi2HKLfqoH7Fme2LuzPyaooQ9WuXKJQxYnV0mV2Iam8fP556r2CSUWy89
 6ASK7yWHl2+oCqOqv7t94vlFjIhlyZTniZK+GEhwunzYW3aks3VPuDPVi
 KdItvl11wbbdm+veqQhtLCylGpmq937SVyHss4SRv7e81l/WUzJFOpn5S
 b8/fhQF7i+bE3g+esQb3xSrYXgfdFP8VtNfAZe9gBWyN50VgwEo92sTZg A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="314344776"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="314344776"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 09:51:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="729307813"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="729307813"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Nov 2022 09:51:47 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 09:51:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 09:51:46 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 18 Nov 2022 09:51:46 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 18 Nov 2022 09:51:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h3iV/CYrytMvtwfIN6VaUAabNmM/4LIWQbwvXkckfBe0+hWuve1Zwih7hHfKIcEojpr9hkyhAhrQ41KTlFQy74LYj/2iorRmKNqW1lzeVtbXyZW/eJKwhFysmQEq34Roqv92fUKj/mARiT4rf77f1MVzw4kXT8wXmBhOIty80tNtERdUC0INB/Gt2daQi1GRGSnEqp4/UaOmkpyzKBsscozLryDa/CS0xoKup+VTZ8m/0sUjRUkmbtt7YsxD8uGWsg4BMeKwTzVqISKOp6Br+EDEIllwAzsn3yVFpcSlUt6FkshjP3sqcjjxWhQJk5UxIlcnVCf3ucc1Ui2jX7lSPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IWVI6kt3Ee/GCHO/AaL+q6SrJ73TPmp+n/jSFiy3wwU=;
 b=MXWnYG+mejXJu+0dvJzz1/arJQmvPNgrRwXsZPVlUzAuS0mdC5Rm6a9/G7/Sj5w/YRyG/H94oRlJvS6CnwoJCfBwdNAfVagrJ+DTlOhPlpZ3tBDQ4fkRCKBDc2ed/af3CVUlXsMNUenwe5A4OQVV/7GQJcagOSALtx8pWxoRtxo0qw6JBwcqMfbulYIAZpJZkgR6fSM2NUfHbil/WvI4WgEjlQH06YX+w+uveyCGgAdN1JTcgKaIuD3Oj3Jqzfjx0nRB4n2FWgZ8z6NjV+hhPpnhBWbcYZWBeV10NaIILMXx/tG8MoR1GiMRjo3fCdvZU3a/qAMZqHgJp4TqJVQZLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB5526.namprd11.prod.outlook.com (2603:10b6:208:31d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.18; Fri, 18 Nov
 2022 17:51:37 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488%4]) with mapi id 15.20.5791.022; Fri, 18 Nov 2022
 17:51:37 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 13/20] drm/i915: Prep for C8 palette
 readout
Thread-Index: AQHY+D9NLh75ROvbUU6bOkV5pEZFJa5E/Ckg
Date: Fri, 18 Nov 2022 17:51:37 +0000
Message-ID: <DM4PR11MB63605188F8E0B3F26D62BA9EF4099@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
 <20221114153732.11773-14-ville.syrjala@linux.intel.com>
In-Reply-To: <20221114153732.11773-14-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB5526:EE_
x-ms-office365-filtering-correlation-id: c6a2b019-05df-47d3-0a74-08dac98d8a4f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KIpX0FLMG/xArNWShUZGAk7T2hL8soo3D5SedAIWXiLavMJbmqnxvN3zHLdzfHCs++dDdaUYIsjQo536NsoKHd/ECaMLWjvwcSAChMVEYBD+QV0oIaHB7JVGawv/6eT0RyeW2MShtxQ+mkHNhn3FXydXKp2qlNiFVmk1Ry/ZZbFTRWnKbrzXJ3s5Na7cS6nk2TM8Z2bmk0qjA793hmsMzqwcirYQX1dbAYnS6Pv6PAYG4jTxnmA3mK+2of6RgrNoTAb/HpNZqnO3k8/RmlYiMkpkYaKcKzVDkaV9MB7y6kOBNqy19s3643WxD/ZkEMP3lEhRjnuB/CAot0gUZ2cMNJuLOZCU/Zj+q96twN1kWaj8YM25LPseD90LCTkC5xhBAp9X8c67cVb97DZmB6VnKTC05jUWjHQHvQqhrP6Ub0mTf2gDz+V+tys+lim5b3yOSZfvoXMzaes8D+7vUhznLoChinbAZm0jsPLc9OVGzE36sHrjBd8D0yPHZZrvFMHIiuK6DZ+oNKxF/xZoAcvbMGGrYL7eoPxZL3XdaaS/XmzuEip81WmwCbuFiQ/tjfnlNkJjh4XV04kM3uwzXoo3RAd3jI7xVImCVpvOsv4mJBuF9p8e65tEacO7Clcz0lierS7DY1vkCHRRD6rqXDBON+YRyp4EJZwXyc9BSf7nNtcqo/4U2F6Lqz3Nmnh+AWupWcvgGizKIZDwqbunsSjEhQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199015)(110136005)(71200400001)(66946007)(66446008)(64756008)(26005)(8676002)(316002)(76116006)(66556008)(66476007)(478600001)(122000001)(55016003)(38070700005)(186003)(82960400001)(38100700002)(86362001)(33656002)(6506007)(9686003)(53546011)(7696005)(83380400001)(8936002)(52536014)(5660300002)(2906002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUEyaGdaWk5VTTFvVTQrWW5weXFEaVdjUk1HNnBuLzczRkFvYkFzUTI2Y3hz?=
 =?utf-8?B?eEZKQlVPN0VHbnZQN1c0bjdZVGFJMTZlYVF2ZHFkL0pmN1JpMU5KWUZVQnZj?=
 =?utf-8?B?YWcvR0xtekI4RWlJcldPNWhwbjZmZWtWTHlSYTFFV1h2TVI0cEx0cjd1bjRY?=
 =?utf-8?B?WUF6alpNU25NVEVQYnlrN0daZUExTWZZcWZrUUVsOEJXSldHNlZ3K3V5Zkl4?=
 =?utf-8?B?d2h3ek02R3d4RVp2M29yenE4bU1XRU5hS2VvNFFha1B4b0JRNGtzS0FvS0xV?=
 =?utf-8?B?bWFFTElqckk1Y0xnVVFVNlcvUnhSRHAyUngvVEpVNzRxSVpROS9jQUhBajlE?=
 =?utf-8?B?YldEeHJ1eFQzdi8xeWd1cFlORXlPUldocTZ5Sy9MaWdReVRMR2ZQV2J1ZUtZ?=
 =?utf-8?B?VW0xS2N1WGk4b2wvNDE5NHpvcTJSTmJnWCtwMloycHNRZFhkOUdPUHNFZDFw?=
 =?utf-8?B?aXMwZ21FOVNQR0pMK01xZHhSVW0wSnhzUDRHNXlxSDlsa3JSUXdKZ1AxTlBK?=
 =?utf-8?B?dVlqcUFjcy9YV3ppL0c1Zm9wOVMvdUNhY1FhVkpKWnNwQmtiOWZ2Vm04YzFH?=
 =?utf-8?B?UWczZmZWT25mMk02U0tJSThSaHBlMzJxY1BJTWxiSGJ6emkrLy8reVJ5b1Bj?=
 =?utf-8?B?dW5HeURMUlExcytTRTRqYnhFdDFXbUF4REp1M0o4VkxCaUVod3RsalRJT1pG?=
 =?utf-8?B?azdHcXd0ZllQQXVzN2F6MFlVWHJvSkh0STVNVFZMdWo1c3hVWEpGNGFKN2VT?=
 =?utf-8?B?eEdoY2lFR3JmbStNbXlPR3F2TmU1aEIvbHczbUJKUXAycCtKZ3BYSy9sWHF5?=
 =?utf-8?B?TDFxeWRSZU5xdnFyQWRpMk9tQStWcEdtOFFIWGNvNERQOS9QajUweERISXRN?=
 =?utf-8?B?dnpyN3Rpb3BpdDFCdFZ4VkhGNlRJVnZYSVlzZVFwb1lFNEd6a2xwTDdFWGdH?=
 =?utf-8?B?cHVveFU1NFFTWkJiODlFTGJHaVdGNlp6WUE5SmVidUUvZWhqaTdpOHVqL1R5?=
 =?utf-8?B?TDdudnFDbEhDbytmTXZudSsxak5zb2VpRDJvcCthN2JKMkgrNXFRVi9NMkFQ?=
 =?utf-8?B?cXpvaFpSWU92MXFrbE5laEVNOGhHOGJxZ3MxaTdKTFJIaCtLWE1XZDF2VVhF?=
 =?utf-8?B?VVJSZTAyRVIxSVlYV2pvVk1nQ1ltM1BEb1JhcnBPSVRiOElnYjhIT0ZiREpC?=
 =?utf-8?B?cGluZHVUbEo3ZUhnTGFpeGJaZk42WXlMT2orQUhaWWRxdWZUL3hVZTZmRnR0?=
 =?utf-8?B?Z0NRZnNEMENpaXpIWURxazFBem4yMXYwc3BRQkljMDdEMVFqL3VDcUVqU1hn?=
 =?utf-8?B?Q1Q1akZ4cG8zRjhQeS9HK1k0UHBDVmNEcHBGMlAwMXpxb3RqSGVLVzNMWDVB?=
 =?utf-8?B?N3d5KzdkZktOZ24rZjk0OWVYNUZxQ2wxV3Y5UnU0TjUzUTNXOVk1TElOdjJS?=
 =?utf-8?B?YU1zbC9pMmpCTy9wL1ZmVitJclFnYWxOZ3l0TFhJU0cya0diREM5TGVRSDZO?=
 =?utf-8?B?SlVRNk9GS3l5RGUxSTUzenNZaUkyZ1RtWWp0Y3Y0UjJsZ3N4ZU1CWDFHSm4v?=
 =?utf-8?B?UUZVUlNnUzVXN1hxa0tJQXI1NUhpU2R5VFhGVCtIc25jemx2eTZSVXBqMUJs?=
 =?utf-8?B?K0hRSDlHVUNUbmkrNk9iNitQS1ZHd2czaW96SmZNR0g1TjNiVUE3RFJab3Zs?=
 =?utf-8?B?dlU4MUZiUGUyMmFTWVMydTNYb20rRUllUGZuYi8wd3FKOWZTdXRwWldDajU1?=
 =?utf-8?B?SWRyZElycStIbEk3Vm9jdk1pcWp4WVVNT0JsbEExcVZkR3VDVUNub0dPWUw1?=
 =?utf-8?B?SjFjSmJsS1IrU1BXRGhHVDBveS9pS1dzQml6SVRCaG9ySExQNFVwVEsrZzB0?=
 =?utf-8?B?VEF3eWRMbXlkVFRhU3ptblVTTmY0ZDBsczZ0WEF2TVh0S0QvaFdTUjAwRVVk?=
 =?utf-8?B?WUFhcGg0c3d2cGdLT05ZbVg2NEVGYi9nZTlaeWkyWThBUmNmWlZYakUxQ3hy?=
 =?utf-8?B?L0loa3liOTlORDhPdFpMQUo5d3dIbGRPdDBLdUpIRnRXakZLWDFvVFZtU0s4?=
 =?utf-8?B?a0RSSnJKR3A2Sk0wVkEwd25VZ3NXbXVqNlB2T3ZCaVdReml1bDkrYjBCazFl?=
 =?utf-8?Q?Ear29cz87NEj/loqZAQzRI1Y5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6a2b019-05df-47d3-0a74-08dac98d8a4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2022 17:51:37.4197 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s09dj+DyLVMMjxlZQ5KkF4nw9XUJ/Q3yfYAaRg/iTXAUMyVoQkTJN6k5MfrNAflv/UtkQ+X3J+L3uEu1VHLEkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5526
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 13/20] drm/i915: Prep for C8 palette
 readout
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMTQsIDIwMjIgOTowNyBQTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBb
UEFUQ0ggdjMgMTMvMjBdIGRybS9pOTE1OiBQcmVwIGZvciBDOCBwYWxldHRlIHJlYWRvdXQNCj4g
DQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IA0KPiBBZGQgdGhlIGFwcHJvcHJvYXRlIGM4X3BsYW5lcyBjaGVja3MgdG8gbWFrZSB0aGUg
TFVUIGNvZGUgcmVhZHkgZm9yIEM4IHBhbGV0dGUNCj4gcmVhZG91dC4gTm90ZSB3ZSBjdXJyZW50
bHkgbGFjayB0aGUgYWN0dWFsIGM4X3BsYW5lcyByZWFkb3V0LCBzbyB0aGlzIHdvbid0IHdvcmsN
Cj4geWV0LiBCdXQgbm8gaGFybSBpbiBtYWtpbmcgdGhlIGNvZGUgc29tZXdoYXQgbW9yZSByZWFk
eSBmb3IgdGhlIGRheSB3aGVuIHdlIGRvDQo+IGdldCBjOF9wbGFuZXMgcmVhZG91dC4NCg0KTG9v
a3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50
ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jIHwgMjIgKysrKysrKysrKysrKystLS0tLS0tLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGluZGV4IGVmMTcxODM3ZWY0
NS4uY2EwMWIzZTZiNTg1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NvbG9yLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jb2xvci5jDQo+IEBAIC0xODAxLDcgKzE4MDEsNyBAQCBzdGF0aWMgaW50IGljbF9jb2xv
cl9jaGVjayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkNCj4gDQo+ICBz
dGF0aWMgaW50IGk5eHhfcG9zdF9jc2NfbHV0X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHsNCj4gLQlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2Vu
YWJsZSkNCj4gKwlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSAmJiAhY3J0Y19zdGF0ZS0+
YzhfcGxhbmVzKQ0KPiAgCQlyZXR1cm4gMDsNCj4gDQo+ICAJc3dpdGNoIChjcnRjX3N0YXRlLT5n
YW1tYV9tb2RlKSB7DQo+IEBAIC0xODE3LDYgKzE4MTcsOSBAQCBzdGF0aWMgaW50IGk5eHhfcG9z
dF9jc2NfbHV0X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZQ0KPiANCj4gIHN0YXRpYyBib29sIGlsa19oYXNfcG9zdF9jc2NfbHV0KGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSAgew0KPiArCWlmIChjcnRjX3N0YXRl
LT5jOF9wbGFuZXMpDQo+ICsJCXJldHVybiB0cnVlOw0KPiArDQo+ICAJcmV0dXJuIGNydGNfc3Rh
dGUtPmdhbW1hX2VuYWJsZSAmJg0KPiAgCQkoY3J0Y19zdGF0ZS0+Y3NjX21vZGUgJiBDU0NfUE9T
SVRJT05fQkVGT1JFX0dBTU1BKSAhPSAwOyAgfQ0KPiBAQCAtMTg0Nyw3ICsxODUwLDcgQEAgc3Rh
dGljIGludCBjaHZfcG9zdF9jc2NfbHV0X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QNCj4gaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gDQo+ICBzdGF0aWMgaW50IGdsa19wb3N0X2NzY19s
dXRfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSAg
ew0KPiAtCWlmICghY3J0Y19zdGF0ZS0+Z2FtbWFfZW5hYmxlKQ0KPiArCWlmICghY3J0Y19zdGF0
ZS0+Z2FtbWFfZW5hYmxlICYmICFjcnRjX3N0YXRlLT5jOF9wbGFuZXMpDQo+ICAJCXJldHVybiAw
Ow0KPiANCj4gIAlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpIHsNCj4gQEAgLTE4NjMs
NiArMTg2Niw5IEBAIHN0YXRpYyBpbnQgZ2xrX3Bvc3RfY3NjX2x1dF9wcmVjaXNpb24oY29uc3Qg
c3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+IA0KPiAgc3RhdGljIGJv
b2wgaWNsX2hhc19wb3N0X2NzY19sdXQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpICB7DQo+ICsJaWYgKGNydGNfc3RhdGUtPmM4X3BsYW5lcykNCj4gKwkJcmV0dXJu
IHRydWU7DQo+ICsNCj4gIAlyZXR1cm4gY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSAmIFBPU1RfQ1ND
X0dBTU1BX0VOQUJMRTsgIH0NCj4gDQo+IEBAIC0yMDA5LDcgKzIwMTUsNyBAQCBzdGF0aWMgdm9p
ZCBpOXh4X3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkg
IHsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0
ZS0+dWFwaS5jcnRjKTsNCj4gDQo+IC0JaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpDQo+
ICsJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUgJiYgIWNydGNfc3RhdGUtPmM4X3BsYW5l
cykNCj4gIAkJcmV0dXJuOw0KPiANCj4gIAljcnRjX3N0YXRlLT5wb3N0X2NzY19sdXQgPSBpOXh4
X3JlYWRfbHV0XzgoY3J0Yyk7IEBAIC0yMDQ5LDcgKzIwNTUsNyBAQA0KPiBzdGF0aWMgdm9pZCBp
OTY1X3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHsNCj4g
IAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFw
aS5jcnRjKTsNCj4gDQo+IC0JaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpDQo+ICsJaWYg
KCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUgJiYgIWNydGNfc3RhdGUtPmM4X3BsYW5lcykNCj4g
IAkJcmV0dXJuOw0KPiANCj4gIAlpZiAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSA9PSBHQU1NQV9N
T0RFX01PREVfOEJJVCkgQEAgLTIxODAsNw0KPiArMjE4Niw3IEBAIHN0YXRpYyB2b2lkIGlsa19y
ZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJCWlsa19o
YXNfcG9zdF9jc2NfbHV0KGNydGNfc3RhdGUpID8NCj4gIAkJJmNydGNfc3RhdGUtPnBvc3RfY3Nj
X2x1dCA6ICZjcnRjX3N0YXRlLT5wcmVfY3NjX2x1dDsNCj4gDQo+IC0JaWYgKCFjcnRjX3N0YXRl
LT5nYW1tYV9lbmFibGUpDQo+ICsJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUgJiYgIWNy
dGNfc3RhdGUtPmM4X3BsYW5lcykNCj4gIAkJcmV0dXJuOw0KPiANCj4gIAlzd2l0Y2ggKGNydGNf
c3RhdGUtPmdhbW1hX21vZGUpIHsNCj4gQEAgLTIyNDAsNyArMjI0Niw3IEBAIHN0YXRpYyB2b2lk
IGl2Yl9yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+
ICAJCWlsa19oYXNfcG9zdF9jc2NfbHV0KGNydGNfc3RhdGUpID8NCj4gIAkJJmNydGNfc3RhdGUt
PnBvc3RfY3NjX2x1dCA6ICZjcnRjX3N0YXRlLT5wcmVfY3NjX2x1dDsNCj4gDQo+IC0JaWYgKCFj
cnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpDQo+ICsJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFi
bGUgJiYgIWNydGNfc3RhdGUtPmM4X3BsYW5lcykNCj4gIAkJcmV0dXJuOw0KPiANCj4gIAlzd2l0
Y2ggKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpIHsNCj4gQEAgLTIzMDMsNyArMjMwOSw3IEBAIHN0
YXRpYyB2b2lkIGJkd19yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNf
c3RhdGUpDQo+ICAJCWlsa19oYXNfcG9zdF9jc2NfbHV0KGNydGNfc3RhdGUpID8NCj4gIAkJJmNy
dGNfc3RhdGUtPnBvc3RfY3NjX2x1dCA6ICZjcnRjX3N0YXRlLT5wcmVfY3NjX2x1dDsNCj4gDQo+
IC0JaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpDQo+ICsJaWYgKCFjcnRjX3N0YXRlLT5n
YW1tYV9lbmFibGUgJiYgIWNydGNfc3RhdGUtPmM4X3BsYW5lcykNCj4gIAkJcmV0dXJuOw0KPiAN
Cj4gIAlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpIHsNCj4gQEAgLTIzNzIsNyArMjM3
OCw3IEBAIHN0YXRpYyB2b2lkIGdsa19yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUN
Cj4gKmNydGNfc3RhdGUpDQo+ICAJaWYgKGNydGNfc3RhdGUtPmNzY19lbmFibGUpDQo+ICAJCWNy
dGNfc3RhdGUtPnByZV9jc2NfbHV0ID0gZ2xrX3JlYWRfZGVnYW1tYV9sdXQoY3J0Yyk7DQo+IA0K
PiAtCWlmICghY3J0Y19zdGF0ZS0+Z2FtbWFfZW5hYmxlKQ0KPiArCWlmICghY3J0Y19zdGF0ZS0+
Z2FtbWFfZW5hYmxlICYmICFjcnRjX3N0YXRlLT5jOF9wbGFuZXMpDQo+ICAJCXJldHVybjsNCj4g
DQo+ICAJc3dpdGNoIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKSB7DQo+IC0tDQo+IDIuMzcuNA0K
DQo=
