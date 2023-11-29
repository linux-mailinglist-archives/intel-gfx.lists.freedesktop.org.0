Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 230A17FDAB3
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 16:02:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D09F010E609;
	Wed, 29 Nov 2023 15:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06CCC10E609
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 15:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701270147; x=1732806147;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HaV9hItIWxpG/y1pyekfiGhBuwHuZk0Yz24b4etBXmA=;
 b=nRt47A0HaSC2pHQASuaM8PD/akx0YIYfgZYuRkJH00CFVsYsszh3LadP
 t3hu8saoo+d/QK+AS1KPYuglnAlNbAwceTGNL3gm2wy1dV1FdlmVTS97n
 TeHMWOIcIZZ8lsfGR0Tya4Owt3PcKIhoCvjLqRJE2bW3Dc++ML7EXwoeA
 oGj0TWWlEJgVB4t9vbJdE9DsG/o95spZjNkFEIh+vlEe9ssZS3/XUsejI
 uDAZsEkjTe/iGhnoVKCybQa83DKmRTdn0y1wiOFUtmGUPpQFmXqSzKNPq
 3UjAT1bwCkTMFe4cvlcBPt2bZvntQOc2hNiVuYWLd48YCxNyEbIqF3IMQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="424324121"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="424324121"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 06:50:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="772708801"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="772708801"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 06:50:04 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 06:50:03 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 06:50:03 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 06:50:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VQuBtiBRTDgZviIdV0WQLXFmOn8H7Xm5Kr/BoIgnmobWD2s9nzU8YJ5yW8HIqwzscHC1olZx0TpKaK91N2DAJSaBsP+QxksJqN4BTtJw5E+tTdCy6puahPekjTADjYJIS+6wB2/MzN4M63hFmqWBwEM80zEbVPNyCvkzMCV+w9ujX18RLGrZkkQIOVFENLPyf0qdWaNXJRiJ0ob3US+8/FDzahmgGFcCK52UdxzFrUHjY3zU5X/oTMnQTVNK+gu7B9r2ZAnXobwk+1r2fDcloxuxDY50c4kvb0nOgR/SAVwdo3+55L/jL5z0/KrKibhTnfkZbSp/7dNlCsEQnxyYxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HaV9hItIWxpG/y1pyekfiGhBuwHuZk0Yz24b4etBXmA=;
 b=Z9qFtGerzIEUuY75Yex/37O1U/Ts9rkW6Y1K007j/VRJmWkH3iU1beOSzuv+eVSKwFF6YlpqtAKzUJBXEsya+mnuMtDleDPiPt4s9TRqyaYrm9N7+NUGebomMEAYa0FADNr94zavPWIROLt3qcd91t4Ma4iKWX50JISQ4ewzASIU0syC509IKEK6gyjLSNPGNoyWhrUhXZe8alv9l6uVyWywdJjQ1AeVbvx9sqg4f7AMNWL9fUtmXDrZw6LZQLFqw/80K3DUI8vrFsYA0LZWjbfd8CD2Ox9Jz1zRVZti8XFSfsg/i9uWaA+Fu+AppDwTxQkRpXDh/fdgmB5kfOzf2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS0PR11MB7681.namprd11.prod.outlook.com (2603:10b6:8:f0::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Wed, 29 Nov
 2023 14:50:01 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7025.022; Wed, 29 Nov 2023
 14:50:01 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/5] drm/i915: Replace a memset() with zero
 initialization
Thread-Index: AQHaHrAmCH2d6pyg+0u6aXW4dIlHHLCRaQTg
Date: Wed, 29 Nov 2023 14:50:01 +0000
Message-ID: <MW4PR11MB70542FE5A46B03F15E1C7F30EF83A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231124082735.25470-1-ville.syrjala@linux.intel.com>
 <20231124082735.25470-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20231124082735.25470-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS0PR11MB7681:EE_
x-ms-office365-filtering-correlation-id: 51c71fd7-7381-4855-b705-08dbf0ea76ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8TeZ4sbzloz9ei4OpfvoEI+4n6Uqhv+rl0JAQXbeznEJeFrShxRVXgNBkrh3i7qxO8/9vtLn7rjtTaqzWFIZnR/7xlQO1gz1dqLLiCI8LJt9dMUMvlJduiEDBcN4DTKbKN2b7kvcRHrHcNz6bDGBIVoj42T7AHFT1BtjTSl/koLjZ7eEDTzI+7I0iPyUFKCjRCq8wj4Mn4LATxXSaGz6dd/4rj9akH8J27BnutVMptaxRw2FSq/nz/oSzl8QDmVV3+OPUeaJVO76/tjpJCXNtkhw5JxJyuxEz6mL1TOn0ZMpT9A+kwRvCcjWhxdosDwv07q1NVet549G9re41DHeYuHnLGlAhdBQTwK0kvgf5CfBxlRUI/xCgCVVM4+JX4FAzKb5tPv8sixfGlPiJe75UOZX1gHhofIAB3MIVmZsRwNHZf/u6ZU+X9DPW4ioueiv5gUN2fjpP1fLAipW9jH8H3hChE/Xjc77020w01MNEgcRoe8v4LGbATOn6g7+El6gBb2Q22lK3we2y142sVD5e8xjCo6ZqPK1ZzqfTjH4WRq6M0Zm35Ke7Nw50uqiVBOw1S9CW0KJxhKrGRVZBCx8vlHJVgEaOzgWQyX08bh42lu9PfHK0KKM3x8j8RCxx2t7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(366004)(396003)(136003)(39860400002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(83380400001)(122000001)(38100700002)(7696005)(8676002)(52536014)(82960400001)(8936002)(71200400001)(53546011)(66574015)(6506007)(55016003)(66476007)(76116006)(66556008)(316002)(64756008)(5660300002)(110136005)(66446008)(86362001)(478600001)(66946007)(41300700001)(33656002)(2906002)(38070700009)(9686003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dkZ5MlZ5cmNPbldOV21nU0ZhUDRFR01TWDZsT3hNZ1crZ2lnSzlSQ1l1WVhI?=
 =?utf-8?B?L1lCeDFiWm1FK1Q2TGkzTGtQb0tRT0Q2cHpGL2NBUk5ZeTJqa2YxcFpqVXIy?=
 =?utf-8?B?WlUrbXVRSzYxSC92RFdyMWdpT0hpaW9hd0dJc0luelZIRitqaU1qL29IUjN0?=
 =?utf-8?B?bHQvOTZ5aER4eVp5bG9waFBXUGMvS0lwNzZUTEVVL2FPMmE0eVVqUm9RcXlH?=
 =?utf-8?B?aHgvSDVPUHdvMVE2UWZ2a0ZEcjRIbUhIcWNZRlBXbHUxN082aUlrb25ScU9S?=
 =?utf-8?B?cEM2Y0E3ZFJKWVQ0a1hYcUJrWTRZODYzVjJTMGdoSlg3dW9TM0NJMzN0Y1dB?=
 =?utf-8?B?K1I4YWRrNjBaSnFMUGFaa0NpNWJDYzRKZzJNZm5sNmkrRWZwZ3VROFljVlRL?=
 =?utf-8?B?Z1Ixa09hMHFCbHMrNFlncmlpS0xuTkdDYTJNU1JIeEJKckdzTnlic3pSQVlR?=
 =?utf-8?B?eXhoWEtDeS9oeWVxMStqbVFDYTdKRHlreTFEVU5qSGdQbUhFUWpmS3BYUWcr?=
 =?utf-8?B?ODNkWXZxT3pIM0RhdzluY1ZyWGRoZG8xY2xiS2ZNYnNWVG9mNFdMMmhkOE9t?=
 =?utf-8?B?UWV4TE43L2ZvdWZuRXdxY0ZxZXlhNllQbzF5U3owLytqVTdMUUFMWkx4Rngv?=
 =?utf-8?B?enU2KzBuRXk5OG5uZGtMSGlXV3pDM1FoQmhmRTVqQytSMFhmRVd3QjFWbFh5?=
 =?utf-8?B?TVVwclF6SGJkRVlJZXRURXpwVnRwSnZhQU44NUlQWFVOU3poK2hGYko2Ujhm?=
 =?utf-8?B?VG11QmMrc1FiNXcxL0ttN3ErWE5lZHhpdXdQcURvZkx0SmtZZWEwSUxNNFBr?=
 =?utf-8?B?QzhTVVdvYTNIUm5JMHJrR25zWnRRNWVqRFJMTEMrUWRZZVRKUFZWblU3L2ZL?=
 =?utf-8?B?NWY4bTF3OW50blMyOUtQODc4dTlPNHpuTjBKeVl6T3ROOUtFR0NDWXlRTEI2?=
 =?utf-8?B?M1lRZWlnVEM5VXdETFh5NDZEL0ZnQnhzbmRzRmhXQzZRdXpMbVBaZUtnRnpD?=
 =?utf-8?B?VjFNNlkycmhQT2s0Z3JFM0tWbis4WjVmdG5BZWpDeFBVZWRpT3c3TElMQkh3?=
 =?utf-8?B?cGRHRStnYjh6Tng3TkJWbnluZ2VhWVQrZUx6WmpPNnJZK2gxTDRYeUhnMW92?=
 =?utf-8?B?MjVCZTN3SDN4dU9NenpFMDNxUitraGtkQ0dHbDhWZ25yZW5SR2JNajdRR0NJ?=
 =?utf-8?B?V2FsNTBUdnROdE5oSjNVNldsR0htSTVmeGhjUURsWXlELzhQUTZrdUhBNUox?=
 =?utf-8?B?TEtuaUNPNWdEM0JkZ2FKOWVjZzZtVXI5T3FhSlc2eDJhNXRFeFRRU0hSNnB4?=
 =?utf-8?B?bUIzU2xDMEdzbm9QT1U0YXJGUE9rTVZVOHVXNElSNlkrYTdyVlVlM243Sjd4?=
 =?utf-8?B?OXZ2enV6UEpIM1Z3Y1I3MHBHWHM3cDIyNFc2TWd0OGxJZW1PWkJRY0FjZHps?=
 =?utf-8?B?SVI5eHVRWnpHcXd5QlYweUxwc2pGakN3TGYyMGZJc3JKTmo4MVo3eUlTTzBo?=
 =?utf-8?B?dlZXWnRmM1Vzb1N6VGZiYTBseFhRT3VUTkZhSzBSeWJZQXF3NEtGZEdiL2Z2?=
 =?utf-8?B?MTBiUk5RMnhJMHNJaEo4dDhBd2RhTWtjd0dwT1lxK0JscXZURGZyV3JlSllY?=
 =?utf-8?B?T0VaWjNHOUxlYkd1cyswbUV3V2ZoUStvaml6MW56aGRZZUZDSTFWazBCTVNS?=
 =?utf-8?B?azBMN2xmTnh4UDI1RDQxNkl6ODRFWXdaWGFBOEw0MHc3STArN2ZaU3Z1RXph?=
 =?utf-8?B?dFRVb2x5cGpSMzgya1FpMTZJTFRaS1ZJbFBqRDF0TlV5S24ySjA5Z1hUVVp2?=
 =?utf-8?B?YVQ2dkcra1JCa0hycFg2ODZLb1IvbXQ4d09LS1NHbUtyRUFyaTNvb0M0Rmwy?=
 =?utf-8?B?aVlqemRxRnQ4TkpPbXVxZDNwZnpTUFYxakc5Sk1XU1ZtNEpwYytjWjBteFpm?=
 =?utf-8?B?MGU4T2ZmdXhjMGYvOThEZ1l3RGhNbFFtOUZ0TG9FQUp1VURseHU5dXBvdjNX?=
 =?utf-8?B?VkRtaW93NEVzQ0pwWWgrendDN1JSaXZYa0VIY2dhQnk0ZW9wOU9PNkU4eWkv?=
 =?utf-8?B?MytFRXZMdVhKeUN5SGJhN244cmlreHBNRzc3YjA5NTlJVm1NT3hVRTRRd1Rr?=
 =?utf-8?Q?pAUc7q3+yXV2lo/M0okrwHwVi?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51c71fd7-7381-4855-b705-08dbf0ea76ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2023 14:50:01.0754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lh7Y+3qOWF53ZZSB1OBzNIbiTFHWsbzfzltyXEyVUsaYEwJ5e5EidGI5keTmsSdpHamMFn9JoP4svyRvr8owxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7681
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Replace a memset() with zero
 initialization
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlIFN5cmph
bGENCj4gU2VudDogRnJpZGF5LCBOb3ZlbWJlciAyNCwgMjAyMyAxMDoyOCBBTQ0KPiBUbzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFU
Q0ggMi81XSBkcm0vaTkxNTogUmVwbGFjZSBhIG1lbXNldCgpIHdpdGggemVybyBpbml0aWFsaXph
dGlvbg0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gDQo+IERlY2xhcmluZyBhIHN0cnVjdCBhbmQgaW1tZWRpYXRlbHkgemVyb2lu
ZyBpdCB3aXRoIG1lbXNldCgpIHNlZW1zIGEgYml0IHNpbGx5IHRvIG1lLiBKdXN0IHplcm8gaW5p
dGlhbGl6ZSB0aGUgc3RydWN0IHdoZW4gZGVjbGFyaW5nIGl0Lg0KPiANCg0KUmV2aWV3ZWQtYnk6
IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCA0ICstLS0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdy
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gaW5k
ZXggZWY1N2RhZDFhOWNiLi4wMzc2YWRjMzY3ODAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gQEAgLTQ0NjUsMTIgKzQ0NjUsMTAg
QEAgdmVyaWZ5X3NpbmdsZV9kcGxsX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LA0KPiAgCQkJIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiAgCQkJIGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkgIHsNCj4gLQlzdHJ1Y3QgaW50ZWxfZHBs
bF9od19zdGF0ZSBkcGxsX2h3X3N0YXRlOw0KPiArCXN0cnVjdCBpbnRlbF9kcGxsX2h3X3N0YXRl
IGRwbGxfaHdfc3RhdGUgPSB7fTsNCj4gIAl1OCBwaXBlX21hc2s7DQo+ICAJYm9vbCBhY3RpdmU7
DQo+IA0KPiAtCW1lbXNldCgmZHBsbF9od19zdGF0ZSwgMCwgc2l6ZW9mKGRwbGxfaHdfc3RhdGUp
KTsNCj4gLQ0KPiAgCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICIlc1xuIiwgcGxsLT5pbmZvLT5u
YW1lKTsNCj4gDQo+ICAJYWN0aXZlID0gaW50ZWxfZHBsbF9nZXRfaHdfc3RhdGUoaTkxNSwgcGxs
LCAmZHBsbF9od19zdGF0ZSk7DQo+IC0tDQo+IDIuNDEuMA0KDQo=
