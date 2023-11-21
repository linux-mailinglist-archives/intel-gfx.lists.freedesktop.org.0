Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0834D7F3237
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 16:20:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E31610E4E5;
	Tue, 21 Nov 2023 15:20:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C42910E4E5
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 15:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700580043; x=1732116043;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T2nUMf4IqvJKZZPWm6ukq5lfgJcyWGHbvH2eC6SIzSk=;
 b=DGjmrdk8nn7rQc3p8B0x+GuosoxwDulyvWL3CsVG6GKKi57IT67xsj8U
 oECDdd+1k58blG4e6amO/oEVgxDyGJET3eJqVWmSRFId2Q1SYHQp5JRhe
 VXzAI7RuTTkqXqQXrislRQr1N26KyEe72xW3Yz6CCC+ME8C609xDwOck7
 wG/a3KpySqDZeoDz4yCNGL/WNKBBxeqR0EsovaDD1s1wJE0ralWMJS63q
 9lTx/1xCUyTMI1+OK2X+2oXgLLLjKItATHaqBlFIQLcafaLCWImj0YFET
 B5+vlrOWNkkRYY3G07M2630hU8E8P7cf0229SHUV3JHoLzUqoktGVLptr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="13404214"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="13404214"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 07:20:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="766680116"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="766680116"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Nov 2023 07:20:41 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 21 Nov 2023 07:20:41 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 21 Nov 2023 07:20:41 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 21 Nov 2023 07:20:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ivkhkSx46qklUYAbTlbq+DDFHADS7dCZ2ghR/2fan8YXvzY22tSbukODFodi8u/SUiNt4HqS3xm5qcDI5+ha5PWldMVxbNivyUHqibziivtv6rskHCL1c1XxIY3DZpa35a4nVPfXh9kpbXyiSgl8a6BxGGB/jnvzRwRuLiz0IT7Dxwkp3vQwDS/vKcLzq4ewBu30BE1wxCx3LAYUrOxJVWZbV6RzYJkATXbbcXnwwAPX/KLgA2usn1Upv0KS9R8j1gZ2BtmwBgS3Ozdmq1PoJWEmWnOQs1fDO9mxkYXKpyAs3JX6kpgnPeH0VHrx8UDe7cyckchHGgYgDSSkS/j+zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T2nUMf4IqvJKZZPWm6ukq5lfgJcyWGHbvH2eC6SIzSk=;
 b=aIHPBQSWpM7C7PyieIis401t0Aye0+8alC2+9rUlpl7+JzZ2WRipI+aIP4OhXUCFyPagzKRwyh9j0Ou9rOSVdJB0HgQTFodrQHf9iUWJQmZ3XJ5+08bPsWSELwlI7IC+wsHn42w+XmACUYCfCroWMzAiRJMAAWLR6IPA2ycZIB7r1bXCeXqz+FAtkZy+iqFkkH58v4BiSeT1YHoQh0GNQ6s/IADstOxdAXs54Xm0d2dXoFcN54TsCW73Yj8WjTzf3+hk02A4RrEIGe8n5jF4Wh7wcf7EdVQ2X/LGVlRnpafUvRxtAU4fU7ewRg3IE6nhItY62sCpCw2Tribi+iDVXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS0PR11MB6493.namprd11.prod.outlook.com (2603:10b6:8:c3::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.18; Tue, 21 Nov
 2023 15:20:36 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7002.027; Tue, 21 Nov 2023
 15:20:36 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v1 1/1] drm/i915/xe2lpd: remove the FBC
 restriction if PSR2 is enabled
Thread-Index: AQHaE7jjYqO/hn7XmEmjqVQdF8zCU7CE9FSA
Date: Tue, 21 Nov 2023 15:20:36 +0000
Message-ID: <MW4PR11MB7054B981E83913DB658A2439EFBBA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231110093225.39573-1-vinod.govindapillai@intel.com>
 <20231110093225.39573-2-vinod.govindapillai@intel.com>
In-Reply-To: <20231110093225.39573-2-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS0PR11MB6493:EE_
x-ms-office365-filtering-correlation-id: a9d50fe5-aac0-400c-a028-08dbeaa569b4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DCQN4s5ylYyzNTuAR9OQaHHySH5uTojO2aYlDc+IFSBTkKU6yAzIF5ePwIJ8Ui+zCGE0Wl0ZxMpyI1c7P2FuQuG2kMaHq7A/dW37gK4piCFiG6ZKXfuTrN5E716IJj48b7taFkAq8Zkb+q8Xb/pWUcImmEJ5tvUSeXZLA0WX+pPSbVqrsPahYlHQkFkdxyYfg6Kvyeawv5ayRYCVObK4x9aEDMKEp2GXoPNuZ+JdvbPHjUylPr/A4x88ybtzke3cke3dF4DLD1luG9oHRjVSvlS48y4siBJKWnz7Qy/aDLdGKMPdpGKMl/l3w2+H5LyfH3Wx9ZHF8mq7+UriSV7BmkiXAE53sp43TfQI2zLBjtOwG4rJvTf5jbtubat3h9wQEwSJNxdxFrwnYnxOcctp9u56uYmih8l2/mXyIeM4yl2o5L70z1FbUmrOTje081Z8NzxlwK7uqiCTALwDtriwUSjhTNPflkgA+bQn+qxnkBOF6JXmxvsjMf7315fdYWmKwp6nSM8JBFYeHZ2zfSjz8ts+FapVDWKPRh5NZaEhr5njjfSKzJ7oer/78EUn6r1yGs8LYy6KsPxjTC8FrKh3hW3UdW+eX99A2V1g9SEt1HtFPzNtus1n/5JTRWl9qMDI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(396003)(366004)(136003)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(2906002)(5660300002)(4326008)(8936002)(8676002)(82960400001)(38070700009)(86362001)(33656002)(38100700002)(41300700001)(66446008)(122000001)(478600001)(66946007)(66476007)(76116006)(64756008)(66556008)(316002)(107886003)(26005)(110136005)(83380400001)(53546011)(7696005)(55016003)(9686003)(52536014)(71200400001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VHZwMFpIRHBhOGNkL1VFWTNpako0VXVFOHBnYW1ZeXJCc3BOaVZnVFhCVmtx?=
 =?utf-8?B?N1Y3SEpGSXhxTlQvdENrRlV4T3dQVy9ZK2h2dGJ2d3pSUzJEMW5CZ1dsb0Fz?=
 =?utf-8?B?L0l5WmxjRE8wQ01FdmpwNjVvb08wNGovdUIzZGpyeFlEMEZVdnVvblFRdXhn?=
 =?utf-8?B?OEZSRDNvNUMxbWVDVExRVUtHQjQwNkZ0MzhBb1BzRm9jWk1nR2tGOEJxc0pm?=
 =?utf-8?B?V2lKczZxU2RJWWtpYitySmpxTUdKWG5sakYvd3htMEYrRFE0eExFOXZQbHFH?=
 =?utf-8?B?SmE2M3ZJMk1sWnIzSGdEc3BkV2preVh3cTBLaC9pbng1UkFkVTJvVTZVazJu?=
 =?utf-8?B?cUJMeHV6V0JHNEI3MXg3Qkg0NllCMENMVnhzcldIMEtZRmJ2WnBIWiswSjRJ?=
 =?utf-8?B?d3dVaDBwUytMd3lRLzBXVjhnM2xiOFpRVHlDaDRnL2hJZ3E1U2RMUHNyQ2N5?=
 =?utf-8?B?bExUenplMWZkSlUxT3VzY2JTZ2ZMRHBaWkthczdtUHl0TDdVbmtKTlR4UU4w?=
 =?utf-8?B?dHlxNTI2RHFmUDBEMXNsMjc1NCt6cE1GRkMwM0gyOWttNVlIalk5Q0RWRW5K?=
 =?utf-8?B?cFZVZGVZbVpCUjliQlZYWjhDdU1ZNkxKTDlnYzVvSlBqQlpoRnVkejdOUVps?=
 =?utf-8?B?ZTA4dXZYcm53MVMzZ1JFZkVmUWRBSHFTdjU0OStOdzE5WVRWclIrOUErWDVC?=
 =?utf-8?B?MGY5WlU1dFNDdm42YnQ1NFJ4MEIxREE3MS93bldCVHhCUzgyN2JMK0U4ekx2?=
 =?utf-8?B?VG52Q2hLS2RnZWp5OGpibzNWUG8yWkJiRjZMc04xMzdUNktUSi82cWFPRk5L?=
 =?utf-8?B?NURPaVlmOEJiQlVaNEYyRmZaSjE3SFlvTHB2bmZ3TGh2RGljUUdCaDVOZUFy?=
 =?utf-8?B?Wm9OK0ZidW1BbGRnTEFGR1Q0M2RSTzM2SG5lOTNEZUZwczBpVzlONmIzMkVR?=
 =?utf-8?B?ZXdsenVROGJaUVB4MllleS9qNTg2TEdmNkxQdnltOWk5YW1Lb3RBbS9HZGdK?=
 =?utf-8?B?dnhzaU1NMHQ4M3lsWjltR3FHMHpNOGJEZU9qTi9sc1Zwci9sT1E1MnUxenJ0?=
 =?utf-8?B?ZXI1OXdZQ2NqSzRUMGtuU010anBIWGpTT0VTYVNTTUtia0tpc1l4bG5EbHc4?=
 =?utf-8?B?UURaVDFYVE9zWjlOb1FXMlNHVlc1NVUvajRwdzRQYW8wSzlNU2JTN21mRGx3?=
 =?utf-8?B?QzFRQnZ3ckhRelZrckdWMEtWbXlBNk5tNEhISUFQV01DR0dKRFRhN1VyOHhB?=
 =?utf-8?B?L0NKR0g1VnRXL1JMMXMrbmVRb09MdHdQMXU1aXVuYkJPM3JiM3hFVWdUQm9x?=
 =?utf-8?B?SExyYXk0S1F3Z0hVUlJyR1gwVXlXaEpKR3daZjlZWi8rYzdNZVBKc3ZSU3ZL?=
 =?utf-8?B?Z1FrODVnQThCc3gvd0I0d3BhUUorQUxiUEk5MHI3MlR3aloxNk1qR1JYamo0?=
 =?utf-8?B?am1Fd0F2b0J2Qm02UHNROWdyaXV0a2E1dmg1UkNHVC8wNnZ3YkZWMzg1TW9W?=
 =?utf-8?B?ZUt3aGtHREtXSHhjVEJJWnY2ZDRJbzRKbDNPMU5scUdOTzNTV3NLYXRXNXp1?=
 =?utf-8?B?VXNyRjl2RWJhR2lDK3dlYmtJZEg4Zkt1T05GeW9uVHBWL0NZamsvWDRJcU5n?=
 =?utf-8?B?REFjN3NDZUNnQjJJNzhvSUxsVXYxYWdvVk5hOHNWQ0g0TXNDN0hQR0Zxbk55?=
 =?utf-8?B?UUhyQ2I3T2VWd1hXc0R0Y3VTN3orVGNKM1dwaGE5SkwzaWtwUng0b0hvZFJz?=
 =?utf-8?B?akR5OEZ4OEhrNEtmTEx6dnRXckF1QnZKS0EvZS9sWHl4SXg1RGRIRERBMkVT?=
 =?utf-8?B?Q1hSRnpDNXhyaURIazR1YitLeEExcS81NjczQzRHMytHeWh0VzBaOFk3cFpM?=
 =?utf-8?B?VXFJMmVoYkJxOTNROUYvV0tRU2c0VGV4ZTI4b2xZdFFmTFNGbFBaZzNsa3pk?=
 =?utf-8?B?c0dCM0J6WGx0eHpRaU9QUzNrOW9XZWZ1MUtzdWhSc0xRaUFOcTlDMit1Y3dZ?=
 =?utf-8?B?QTAySDlJTUFyUW9Fdi9ibmcwa2YvU3pEd1djdXlzcEMvUU5WWlhDZTJocEI5?=
 =?utf-8?B?UFdCVy84SmNGTzdBTjNiZDM4WWZ4bmxNNVNWZndpMGIwVVEwM1FycmVJR1Er?=
 =?utf-8?Q?P9MsVGeG+m1+tMU8RVq1YCuyV?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9d50fe5-aac0-400c-a028-08dbeaa569b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2023 15:20:36.6711 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8edvoQGP3vpcrDYxPQoSpI+ZI4zDfBZ+J9hNzz6AYfAC1um4a0wtxyXcvdd1ffVLdaFeAnYtaPDC0bWYUS3UZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6493
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 1/1] drm/i915/xe2lpd: remove the FBC
 restriction if PSR2 is enabled
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbm9kIEdvdmlu
ZGFwaWxsYWkNCj4gU2VudDogRnJpZGF5LCBOb3ZlbWJlciAxMCwgMjAyMyAxMTozMiBBTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogU3lyamFsYSwgVmlsbGUg
PHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
djEgMS8xXSBkcm0vaTkxNS94ZTJscGQ6IHJlbW92ZSB0aGUgRkJDIHJlc3RyaWN0aW9uIGlmIFBT
UjIgaXMgZW5hYmxlZA0KPiANCj4gSW4gZWFybGllciB2ZXJzaW9ucywgRkJDIHdhcyByZXN0cmlj
dGVkIGlmIFBTUjIgaXMgZW5hYmxlZC4gRnJvbSB4ZTJscGQgb253YXJkcyBubyBzdWNoIHJlc3Ry
aWN0aW9ucyBhcmUgbmVlZGVkIGFueW1vcmUuDQo+IA0KPiBIU0Q6IDE0MDE0MzA1Mzg3DQoNCkZC
QyArIFBTUjIgY2FuIGNvLWV4aXN0IGZvciB4ZTJscGQuDQoNClJldmlld2VkLWJ5OiBNaWthIEth
aG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdv
dmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAyICstDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBpbmRleCBiZGUxMmZlNjIyNzUuLmYzZDU3
MmQ1NGU4MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5j
DQo+IEBAIC0xMjAxLDcgKzEyMDEsNyBAQCBzdGF0aWMgaW50IGludGVsX2ZiY19jaGVja19wbGFu
ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkgKiBSZWNvbW1lbmRhdGlv
biBpcyB0byBrZWVwIHRoaXMgY29tYmluYXRpb24gZGlzYWJsZWQNCj4gIAkgKiBCc3BlYzogNTA0
MjIgSFNEOiAxNDAxMDI2MDAwMg0KPiAgCSAqLw0KPiAtCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+
PSAxMiAmJiBjcnRjX3N0YXRlLT5oYXNfcHNyMikgew0KPiArCWlmIChJU19ESVNQTEFZX1ZFUihp
OTE1LCAxMiwgMTQpICYmIGNydGNfc3RhdGUtPmhhc19wc3IyKSB7DQo+ICAJCXBsYW5lX3N0YXRl
LT5ub19mYmNfcmVhc29uID0gIlBTUjIgZW5hYmxlZCI7DQo+ICAJCXJldHVybiAwOw0KPiAgCX0N
Cj4gLS0NCj4gMi4zNC4xDQoNCg==
