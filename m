Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFB65B9FF9
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 18:50:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 822C310EB6E;
	Thu, 15 Sep 2022 16:50:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E5AE10EB6E
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 16:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663260624; x=1694796624;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hoprquFkaIrsVEwifwPu//pKrC8v5MyBMaqwPhynSGc=;
 b=ImFhD0yDvgs4wTJvp4zVy0s/SYAmNOzE4CwHbbQTdWFVwT1ncy9MSbwk
 HIZpDoJG2VS+kXoexyeIx3hdL0Fapt2aKkSISPqNEF3aKfGnZK2E1a4CX
 K5HVOggMYA1EBCzwlcGPo7t3Ps/q84sL68E8fzM7xK+2AsaJuyS242q0z
 uDgYy8ObZwEZLPU+0kZV4xUgYXlUuxK9KQRzkruPv+CVAWygdJ2HCmPs2
 6W39IJiGAPDkk6LfyZ56TI/PgdLl8Y9h1CH4vrC1CrmKLy//rpE8Sg/W8
 PyBNYO1TUjXLJivkaSqs2RrLtQsJskmIqFdCRuMPh7ZmdhNfPnKcLqptS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="325034427"
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="325034427"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 09:49:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="679603476"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 15 Sep 2022 09:49:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 09:49:46 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 09:49:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 09:49:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 09:49:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nGPlfAe8RvB85LCHQJqAm7ilHjFM4hPdspn1ILos7RSMktTaLYolp8AJ9QPJFmI+CnzlXQNtNJONXrmBkt7mBckdQVShFOK5ev4ChtX6rhUGpkP9VNagWrRBj+B9oXInYNmf+UOFNVd++oB9cNkes0V0Hal4CximHY700CZZaNsUBV+b/SGyTqfKTE5CvPXPULp92TsXhiZWbUqrTwm1sGzVE3oBAmYtJ8Jip+te1p2/Ms4IaC7xxU36XHNM6xX3bEs1vXkc8IMLisOkPyKdY3EciGFT8HZHFlTjS940Is6GQU/IRENrZZKzPJ/lBSgnUFIzvi01DP6oS6Ymc62hNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hoprquFkaIrsVEwifwPu//pKrC8v5MyBMaqwPhynSGc=;
 b=fzz3pSghqRtiKt/yLxsJZuxyZx/OD+9NEtDbklxkvuG3ilDtzntQXzevyenQcD/Ssas/4PeVIbyXzNiI9wnsZbycEfqWcVazvOlAD55Vk09sNjnEq/Vn3i/oNQQCaX+Pj4AzZDK272yA73G/l0tMv8QHDG4oWW+ytKVQeIuwJpjg52huKSPo4cyaNd0xf/yDNBjb0oBoP2nEIE6o+aq1TEUQSV/OudbDEtPJv/apohckkdRTmU4sFhhDPUpUSSGzA2g807SNjDqUa0Y01N2Cjo3lED43Ig+pyRTke2dZxT+QagdLeVs0uNo5CUCapKobzVbThYsL0G1KsuK6GArQ/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by CY8PR11MB6938.namprd11.prod.outlook.com (2603:10b6:930:5a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.15; Thu, 15 Sep
 2022 16:49:44 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6d1c:5833:c6ab:f244]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6d1c:5833:c6ab:f244%5]) with mapi id 15.20.5632.015; Thu, 15 Sep 2022
 16:49:44 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC 1/1] drm/i915/dgfx: Handling of pin_map against
 rpm
Thread-Index: AQHYyO6f51LjJpIIM0KXpzFEjjEQI63gifgAgAAoVlA=
Date: Thu, 15 Sep 2022 16:49:44 +0000
Message-ID: <CY5PR11MB621163C11F32F1C1B8A4053595499@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220915103311.5634-1-anshuman.gupta@intel.com>
 <20220915103311.5634-2-anshuman.gupta@intel.com>
 <77ec2a74-be57-65b3-88d1-1b3767b7dab6@linux.intel.com>
In-Reply-To: <77ec2a74-be57-65b3-88d1-1b3767b7dab6@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|CY8PR11MB6938:EE_
x-ms-office365-filtering-correlation-id: 1f6da9d8-b43c-4140-447f-08da973a4ae8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F7Z2NjUuNXKEZ3bFNYPlVC3N3zvpIJ2H4YIlSsxwZDXS0fZydd2ThLjwqT9wAMJi8otkyFcDNHxdFPSKlkjW6FERM/eULwsA0mM8t+P1V4Vj9lKhKbJP2sbHGtMR7Y6Iw6q4E34p4tXuoSzRuTxYtBiM0pGlicBJICTEGQ0Mzh95aauQxHmX2mACSXoR1y0siXiqbWdycsdYw3ALDxo9qAKrldFkKMh1qftFqbO6CpqoQKXKCQNR2wMiRCU1LbWIvdLQKSnuaCMAxrripoDygOvQ9VO+qyqFf5e2QCkyvSNGyJbtuI99Wzfr76ZR4sRtDdhAXKc1Q8IU2WHVGhPjwaQJQSt4fHRwUFXQLFZ3QdCcW+uR1D18r3AF/BEQY/sEfg/tnT6rWcj4+Aex//spDMUPlySKhhtJs6Z5qvT2RsdpesFEYQjmnk+RcAAZjyyXPrrBJScFWdamfCkA4+9mnsg6GxzLqkOdOGjR3T2QADfpBhLgnYobVEWf2sBZHSTyBLS4skcNiobvLGrvLHTSWcX/9OT39lnUxbaren0FidWCRnRGEINVvzzXTFAM/ozYQN+e/xH43baNbRk93/dGC6g+nNLAgKGMNdv6NqM4CJN89tF/wU0A+thkAG8Zrd7pMuuXQxd+16TYhs9sdaoknCTuWO/KZM6+8rGk40LUmI5Vxkz4Ur85ftagSM4grh+WVm261orY6WIDDP4u03B33HWt3dM+Q0F4UKz77QULfttxgEBuifwFbvatd1cw/gQRMn9mMiv1lKgnnYmU1/756w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(136003)(396003)(366004)(39860400002)(451199015)(8676002)(66556008)(66476007)(66446008)(76116006)(66946007)(64756008)(4326008)(2906002)(6506007)(5660300002)(55236004)(26005)(52536014)(86362001)(8936002)(7696005)(53546011)(9686003)(122000001)(82960400001)(55016003)(33656002)(38100700002)(186003)(38070700005)(41300700001)(83380400001)(110136005)(478600001)(54906003)(71200400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OEx5cWJKdjJXbE1FQlFlbmVNMHkvd2FiQWFuM0h1djYyRklZSkJKc25TL3Fl?=
 =?utf-8?B?M3RZU3dVVGxwcmY3S0lQVmhlWkhzUEg0bmk2b2hMVXhkTUZUYmpkNFlueVpv?=
 =?utf-8?B?VDliZjlnem5SUzZnNFMrMDVydWRKbnBiSlhSVndtWkdHU1JJYmd1MDJ3K1Rz?=
 =?utf-8?B?TWF5emI5d0dIVHorbkx5bnZHSFFPc01qUWhRSHpWS3dudkFKNVZONVFVKzlk?=
 =?utf-8?B?VWZ0TjBqb3IzQzgxVjEyNkw1VGhnVGJMY0JHOTRBQjBOT25YM3JNNFpzVTFi?=
 =?utf-8?B?NjNIclZYa0tUS2pnR3pMKzVPdWpMUkE5ZlJLbHVBMDdRbDNHSXVyZk9mUkNB?=
 =?utf-8?B?dUpNUXhlNit1SU5kVW8zMjg2TWlNUkQvcHowSG5ST2EwYTBhSyt6NldLRU5T?=
 =?utf-8?B?bG5LYklLNVlWT1NKeFNHS0doZmJ6SGpUeDBnT1NGbnkyZm1OdDM2bnUvRzZO?=
 =?utf-8?B?UFB2amhzKzBNdm40eTlaTGJYZUlyVUhWbUwva2Q3YWxtYTB1cC9Gcm9abzNP?=
 =?utf-8?B?OUxBS09MNkRxWFQvWDZFUVdKZC9UYlZJRHdwNExyeFlSOXd2NEZNM2JBZTlB?=
 =?utf-8?B?aXk4dzF6am1KZnJ2elNleTdCenpsd0oxY2dhYjNPeGtMZ1Z3WUNqN0k4Y0My?=
 =?utf-8?B?UnU2bXBqVm9xb3R2Vk1OQzlsT054cTBiYVdYcjBqWExrL1pqUW02WjJUSDdY?=
 =?utf-8?B?cSt2T3BrbjFCOFJUalo5d2VtTkRybDBXeVY0K25aeTRsZ1MySk1rczBnd0sr?=
 =?utf-8?B?bkdFTVFneU5MQ1JZTEdsSEUxNnk3Z0tXbGR3RHhwZFVhN3hEVDZaVFZxRWF5?=
 =?utf-8?B?MzdXV0NLMkpmRnhwaUpTWU5EbGpDRzNjenZoZTYyTEtwNlZEaTA0SDQ0d0dF?=
 =?utf-8?B?NVoyMEQvSURSbTN0WEY2djZjQlBFQWFTQmtENXBNdmtiRkFHdTJNZENodEo4?=
 =?utf-8?B?NXZjZmVEMXIxVlpsalNMZ3J6TC9YclE1dGZwT0w0OE0wK0pZay92dEFkMkZz?=
 =?utf-8?B?czZBMkoxRnB5b3UyQlFlNHpnK1Y4WXpiSVFaM0JmbVo3cU5QWnNyclNKWnNF?=
 =?utf-8?B?WWpBbGQycXYvTDZOcVovVWRRTTNVcThkTENab2krZWNDdmd5Ym9NZnI2MjZk?=
 =?utf-8?B?dGlWZ3ZxMUk2UmVGcHdKU2pkUFBIYXJNaU80MDQ1bk1HdFBrYmgvWlVPNXFQ?=
 =?utf-8?B?b0ZkUENpVjJINWdrNGREc21yY2ZxWjBkTDZVeURFcmZwMlh0UjVVMW1mWkJk?=
 =?utf-8?B?OThidytJWXozck9acFN5dFlIRW9UMG5FOHpyWGcwUjhIY0t3MEVjOGhmbG1U?=
 =?utf-8?B?MHp5aGc2QjhRZHh0eGcvL21hQUg1REZsRncyeDJPcTNCQk1zOTExaGdvRk4v?=
 =?utf-8?B?eC9RK004amZtQm05dzZ4a0FwVU1wSXhXSENHWEdRTkRnVWVqT0pyUUlJeDJG?=
 =?utf-8?B?UklNV1NhNTkxK2p5MXZLZFZ5bW9CTWhjT3BzSElpYktJUUFrNWd3K3N1Q2hv?=
 =?utf-8?B?cmpiR3labUY1L3FSSTd1T1ZoVGxOQVNScmRXVXlESFd2bWcwKzd6ejE2bDBi?=
 =?utf-8?B?TDN4OWdRRFBCWEd4WVpzaDhFVW0wd3Bsb3ptZytCVHkzMHd5RGp2b3RkQTA5?=
 =?utf-8?B?ellnK000ZU5TdHJuWENqL1J4OTdFbFhvaDJHU3RvMEJ1NEJySUpBT3YvVnRa?=
 =?utf-8?B?L3NEekdEVTBYN2hsNFl1d0VyZk5ZOTNzQVBUUXdGakI1a09qZm0vR3FyMHRn?=
 =?utf-8?B?M2IyN3JMaEZnVW1IZ1JTeXNNM0d3R0pubWQzOTYrRUJYbTRtdGdadmtId1dS?=
 =?utf-8?B?VWlZeUZDTVF0KzdjaXEyMm80UzVYYXFJSE1DTktWbzdHRXkrbnZmTC9OdEd1?=
 =?utf-8?B?WjRkMXJaRFNRSFpSRzB3WFZ2NC9vOC9ZNjBrdnlUd0c4UEdWTDlwTXYzOUVw?=
 =?utf-8?B?RS83VzNWQmpCVU85cVdWSUhlTTJHS05YQnlhVFFTWEFmK2YwK2d4QVVaY2RB?=
 =?utf-8?B?djhFYXFZMytLZ3lFRm9KZGRYOThFeHdCMHZIVzhnWmlrZXdKZk5lRklEclVs?=
 =?utf-8?B?OURibVRQbzFWdGVaaHgwdWo0YlBiWS9ZV0xlOVd0MWd0UlhLTUVVLzlVcTdN?=
 =?utf-8?Q?EKCDAZW438Bc/cNMsHMyv2BWM?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f6da9d8-b43c-4140-447f-08da973a4ae8
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2022 16:49:44.6511 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2YECHJnihMVyuRVcbPHdMyFn5qYuVnU4+AUYni3eaAw8Jv0czEWuWDtBaL9Ip29KrAZa8fppzTKtEU5Qd+ZcZCxC37X2zRaXkWY/mc3XEBg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6938
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/1] drm/i915/dgfx: Handling of pin_map
 against rpm
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIFNlcHRl
bWJlciAxNSwgMjAyMiA3OjQ4IFBNDQo+IFRvOiBHdXB0YSwgQW5zaHVtYW4gPGFuc2h1bWFuLmd1
cHRhQGludGVsLmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBBdWxkLCBNYXR0aGV3IDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPjsgVml2aSwgUm9kcmlnbw0K
PiA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtS
RkMgMS8xXSBkcm0vaTkxNS9kZ2Z4OiBIYW5kbGluZyBvZiBwaW5fbWFwIGFnYWluc3QNCj4gcnBt
DQo+IA0KPiANCj4gT24gMTUvMDkvMjAyMiAxMTozMywgQW5zaHVtYW4gR3VwdGEgd3JvdGU6DQo+
ID4gSWYgaTkxNSBnZW0gb2JqIGxpZXMgaW4gbG1lbSwgdGhlbiBpOTE1X2dlbV9vYmplY3RfcGlu
X21hcCBuZWVkIHRvDQo+ID4gZ3JhYiBhIHJwbSB3YWtlcmVmIHRvIG1ha2Ugc3VyZSBnZnggUENJ
ZSBlbmRwb2ludCBmdW5jdGlvbiBzdGF5cyBpbiBEMA0KPiA+IHN0YXRlIGR1cmluZyBhbnkgYWNj
ZXNzIHRvIG1hcHBpbmcgcmV0dXJuZWQgYnkNCj4gPiBpOTE1X2dlbV9vYmplY3RfcGluX21hcCgp
Lg0KPiA+IFN1YnNlcXVlbnRseSBpOTE1X2dlbV9vYmplY3RfdXBpbl9tYXAgd2lsbCBwdXQgdGhl
IHdha3JlZiBhcyB3ZWxsLg0KPiA+DQo+ID4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxk
QGludGVsLmNvbT4NCj4gPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
Pg0KPiA+IENjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGxpbnV4LmludGVsLmNvbT4NCj4gPiBT
aWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPg0K
PiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5j
ICAgICAgIHwgIDIgKysNCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9v
YmplY3QuaCAgICAgICB8ICA1ICsrKysrDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggfCAxNCArKysrKysrKysrKysrKw0KPiA+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMgICAgICAgIHwgIDggKysrKysrKysN
Cj4gPiAgIDQgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYw0KPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jDQo+ID4gaW5kZXggODU0
ODJhMDRkMTU4Li5mMjkxZjk5MDgzOGQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jDQo+ID4gQEAgLTk1LDYgKzk1LDcgQEAgdm9pZCBpOTE1
X2dlbV9vYmplY3RfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdA0KPiAqb2JqLA0KPiA+
ICAgCW11dGV4X2luaXQoJm9iai0+bW0uZ2V0X3BhZ2UubG9jayk7DQo+ID4gICAJSU5JVF9SQURJ
WF9UUkVFKCZvYmotPm1tLmdldF9kbWFfcGFnZS5yYWRpeCwgR0ZQX0tFUk5FTCB8DQo+IF9fR0ZQ
X05PV0FSTik7DQo+ID4gICAJbXV0ZXhfaW5pdCgmb2JqLT5tbS5nZXRfZG1hX3BhZ2UubG9jayk7
DQo+ID4gKwltdXRleF9pbml0KCZvYmotPndha2VyZWZfbG9jayk7DQo+ID4gICB9DQo+ID4NCj4g
PiAgIC8qKg0KPiA+IEBAIC0xMTAsNiArMTExLDcgQEAgdm9pZCBfX2k5MTVfZ2VtX29iamVjdF9m
aW5pKHN0cnVjdA0KPiBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopDQo+ID4gICB7DQo+ID4gICAJ
bXV0ZXhfZGVzdHJveSgmb2JqLT5tbS5nZXRfcGFnZS5sb2NrKTsNCj4gPiAgIAltdXRleF9kZXN0
cm95KCZvYmotPm1tLmdldF9kbWFfcGFnZS5sb2NrKTsNCj4gPiArCW11dGV4X2Rlc3Ryb3koJm9i
ai0+d2FrZXJlZl9sb2NrKTsNCj4gPiAgIAlkbWFfcmVzdl9maW5pKCZvYmotPmJhc2UuX3Jlc3Yp
Ow0KPiA+ICAgfQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3QuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdC5oDQo+ID4gaW5kZXggNzMxN2Q0MTAyOTU1Li5iMzFhYzZlNGMyNzIgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oDQo+ID4g
QEAgLTUwMSw2ICs1MDEsMTEgQEAgc3RhdGljIGlubGluZSB2b2lkIGk5MTVfZ2VtX29iamVjdF9m
bHVzaF9tYXAoc3RydWN0DQo+IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikNCj4gPiAgICAqLw0K
PiA+ICAgc3RhdGljIGlubGluZSB2b2lkIGk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAoc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QNCj4gKm9iaikNCj4gPiAgIHsNCj4gPiArCW11dGV4dF9sb2Nr
KG9iai0+d2FrZXJlZl9sb2NrKTsNCj4gPiArCWlmICghLS1vYmotPndha2VyZWZfY291bnQpDQo+
ID4gKwkJaW50ZWxfcnVudGltZV9wbV9wdXQoJnRvX2k5MTUob2JqLT5iYXNlLmRldiktPnJ1bnRp
bWVfcG0sDQo+IG9iai0+d2FrZXJlZik7DQo+ID4gKwltdXRleHRfdW5sb2NrKG9iai0+d2FrZXJl
Zl9sb2NrKTsNCj4gPiArDQo+ID4gICAJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7
DQo+ID4gICB9DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdF90eXBlcy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgNCj4gPiBpbmRleCA5ZjZiMTRlYzE4OWEuLjM0YWZmOTVh
MTk4NCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0X3R5cGVzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0X3R5cGVzLmgNCj4gPiBAQCAtNjU3LDYgKzY1NywyMCBAQCBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCB7DQo+ID4NCj4gPiAgIAkJdm9pZCAqZ3Z0X2luZm87DQo+ID4gICAJfTsN
Cj4gPiArDQo+ID4gKwkvKioNCj4gPiArCSAqIHdha2VyZWYgdG8gcHJvdGVjdCB0aGUgaTkxNSBs
bWVtIGlvbWVtIG1hcHBpbmdzLg0KPiA+ICsJICogV2UgZG9uJ3QgcGluX21hcCBhbiBvYmplY3Qg
cGFydGlhbGx5IHRoYXQgbWFrZXMgZWFzeQ0KPiA+ICsJICogdG8gdHJhY2sgdGhlIHdha2VyZWYg
Y29va2llLCBpZiB3YWtlcmVmIGlzIGFscmVhZHkgaGVsZA0KPiA+ICsJICogdGhlbiB3ZSBkb24n
dCBuZWVkIHRvIGdyYWIgaXQgYWdhaW4gZm9yIG90aGVyIHBpbl9tYXAuDQo+ID4gKwkgKiBmaXJz
dCBwaW5fbWFwIHdpbGwgZ3JhYiB0aGUgd2FrZXJlZiBhbmQgbGFzdCB1bnBpbl9tYXANCj4gPiAr
CSAqIHdpbGwgcHV0IHRoZSB3YWtlcmVmLg0KPiA+ICsJICovDQo+ID4gKwlpbnRlbF93YWtlcmVm
X3Qgd2FrZXJlZjsNCj4gPiArCXVuc2lnbmVkIGludCB3YWtlcmVmX2NvdW50Ow0KPiA+ICsNCj4g
PiArCS8qKiBwcm90ZWN0cyB0aGUgd2FrZXJlZl9jb3VudCB3YWtlcmVmIGNvb2tpZSBhZ2FpbnN0
IG11bHRpcGxlDQo+IHBpbl9tYXAgYW5kIHVucGluX21hcCAqLw0KPiA+ICsJc3RydWN0IG11dGV4
IHdha2VyZWZfbG9jazsNCj4gDQo+IE9uIG9uZSBzaWRlIGl0IGZlZWxzIHdhc3RlZnVsIHRvIGhh
dmUgY291bnRlcnMgcGVyIG9iamVjdC4gQnV0IHRoZW4gSSBhbHNvIG5vdGljZQ0KPiBwaW5fbWFw
IGlzIG9ubHkgYWxsb3dlZCB1bmRlciB0aGUgb2JqIGRtYV9yZXN2IGxvY2tlZCAtIG1lYW5pbmcg
dGhhdCBsb2NrIGlzDQo+IGFscmVhZHkgaGVsZC4gU28geW91IHBvc3NpYmx5IGRvbid0IG5lZWQg
YSBuZXcgbXV0ZXgsIHNvbWVvbmUgbW9yZSB1cCB0byBkYXRlDQo+IHBsZWFzZSBjb25maXJtLg0K
VHJ1ZSAsIGJ1dCBsaWtlIGk5MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKCkgd2lsbCBy
ZWxlYXNlIHRoZSBnZW1fb2JqZWN0X2xvY2sgYWZ0ZXINCnBpbl9tYXAsIHNvICB3ZSBuZWVkIHNv
bWUgcHJvdGVjdGlvbiBpbiB1bnBpbl9tYXAoKS4NCj4gDQo+IE9wdGlvbiBCIC0gdHJhZGluZyBz
cGFjZSBlZmZpY2llbnkgZm9yIG9uZSBtb3JlIGF0b21pYyAtIHdvdWxkIGJlIHRvIHRyYWNrIGl0
IG9uDQo+IHRoZSBsZXZlbCBvZiBpOTE1IGFuZCBtYXliZSB1c2UgYXRvbWljX3Q/IFdvdWxkIHdl
IGhhdmUgdG8gd29ycnkgYWJvdXQNCj4gb3ZlcmZsb3cgbW9yZSBpbiB0aGlzIGNhc2U/IEhtIHNv
bWUgcHJvdGVjdGlvbiByZWdhcmRsZXNzIG9mIHRoZSBvcHRpb24gd2lsbCBiZQ0KPiBuZWVkZWQg
anVzdCBpbiBjYXNlLg0KSSBkaWQgbm90IHVuZGVyc3RhbmQgeW91IGNvbW1lbnQgLCBpcyBpdCBh
Ym91dCB1c2luZyB0aGUgYXRvbWljX3QgdmFyaWFibGUgZm9yIHdha2VyZWZfY291bnQgPw0KSWYg
dGhhdCBpcyB0aGUgZmVlZGJhY2ssIGkgY2FuIGRvIHRoYXQgaWYgY29tbXVuaXR5IGlzIGFncmVl
IG9uIHRoaXMgUkZDIHByb3Bvc2FsLg0KVGhhbmtzLA0KQW5zaHVtYW4gR3VwdGEuDQo+IA0KPiBS
ZWdhcmRzLA0KPiANCj4gVHZydGtvDQo+IA0KPiA+ICAgfTsNCj4gPg0KPiA+ICAgc3RhdGljIGlu
bGluZSBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqIGRpZmYgLS1naXQNCj4gPiBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYw0KPiA+IGluZGV4IDRkZjUwYjA0OWNlYS4uYjYz
OGI1NDEzMjgwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9wYWdlcy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3BhZ2VzLmMNCj4gPiBAQCAtMzcwLDYgKzM3MCwxNCBAQCB2b2lkICppOTE1X2dlbV9vYmplY3Rf
cGluX21hcChzdHJ1Y3QNCj4gPiBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosDQo+ID4NCj4gPiAg
IAlhc3NlcnRfb2JqZWN0X2hlbGQob2JqKTsNCj4gPg0KPiA+ICsJaWYgKGk5MTVfZ2VtX29iamVj
dF9pc19sbWVtKG9iaikpIHsNCj4gPiArCQltdXRleF9sb2NrKCZvYmotPndha2VyZWZfbG9jayk7
DQo+ID4gKwkJaWYgKCFvYmotPndha2VyZWZfY291bnQrKykNCj4gPiArCQkJb2JqLT53YWtlcmVm
ID0NCj4gPiArCQkJCWludGVsX3J1bnRpbWVfcG1fZ2V0KCZ0b19pOTE1KG9iai0NCj4gPmJhc2Uu
ZGV2KS0+cnVudGltZV9wbSk7DQo+ID4gKwkJbXV0ZXhfdW5sb2NrKCZvYmotPndha2VyZWZfbG9j
ayk7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICAgCXBpbm5lZCA9ICEodHlwZSAmIEk5MTVfTUFQX09W
RVJSSURFKTsNCj4gPiAgIAl0eXBlICY9IH5JOTE1X01BUF9PVkVSUklERTsNCj4gPg0K
