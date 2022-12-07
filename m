Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E70496456DF
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 10:53:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9EB810E1AA;
	Wed,  7 Dec 2022 09:53:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2D4B10E1AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670406788; x=1701942788;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oPkj6+v/5ESa8bAg25odbKSL4uCjz2HTNY7UgXY/Ha4=;
 b=BPTooR1d1t/yl74Xwnlf+VS9iFfjT/DvSmF/4PBwcyf9fsYCDG8NdJmD
 bOOsZP/A44gLKgCOwKFVyphkAkbb5tDzCxNazlhesWlG6lIloth8Bjldb
 lggZpm9C1KfFvjr1/BnqjV4gSr1jKlJGTZA1wdr8VjiT1vcAEZlOx+Bbj
 0Se22+CJWWZyDM3poOQoMRcX2IZlX324ex0DGe9lqZkImVj8LtfvHwO+o
 cgmrx1UwNZLE5SUS8NtaNZQdpl4OCb4eqwgcdK7l0R1i64oADdwInOwJp
 JxGQkIQ0uQqSqsyiZk1U3CSnbU/UTGZJfFrMlMZvfj92uCv77KUAj3M36 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="379016893"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="379016893"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:53:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="788829664"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="788829664"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 07 Dec 2022 01:53:07 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 01:53:06 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 01:53:06 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 01:53:06 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 01:53:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mUerSg1u0I4fCC480hxDglX8Mzmox3bT159HVqKkEwdRRppX5HyC0GluuMiWDTOLk6mK4FQM/pnFpuRdIHmQ+df3o07bV1cJ0N4PNU1Uj6ePfsx/dp1ojPFHaYWrQnDbYdrurWOz2rzFtigoNOwPj3taF4ysQwyjztrBK4mh7D5uBancXbgrhvt2TUJq2Na3YYsRUd4PPjd8cfFmJ6rCJh44j69tuUHjmxeI+XqFgceFZgN9+FH91b82r1QT8Lc4+ErwacU6wRIucwKPM6gRgglzGSeNlobh/AmSpjnGhyu1M6MFvVfiMlEQ6doXPuhqqBQeSvkSfRgLJXglryn8CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oPkj6+v/5ESa8bAg25odbKSL4uCjz2HTNY7UgXY/Ha4=;
 b=in2iAkTvpEckUY99Euq5zYGgcj79y9jhsjw+mJnFXHKNO81mS9EB49z+QM4tIm0I4wKICtugqtjfh0HZlmG6gEiWW4dyem3GXdm3oafb0/PqbTEGBgAHDj0M5IHjI3QW5AmiSbDBze582jdsRdbGiZcnniJXcQBSev7nMbWN8Qbwq+BEfSjfeWjxCRttrN6XgtRXDeZuebQEUaCHlU2oXWp4Cr3oDgAqJeCzjoOk3Z0RKxD5fPziCHXwmA3IIAx2O99wGrNxBbjq2rXA5Gyl7HcjRzgvMGzBRZnF/4x1IGtPrk+PtBuFDwiHVoK3ITNwfe3lizi51zexpriBJc4Ndw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Wed, 7 Dec 2022 09:53:04 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488%4]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 09:53:04 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 11/13] Revert "drm/i915: Disable DSB usage
 for now"
Thread-Index: AQHY/1AsAPrzXOz8jU+M8STFEkUYHK5iRLbQ
Date: Wed, 7 Dec 2022 09:53:03 +0000
Message-ID: <DM4PR11MB636087B6BF36527852D34C6AF41A9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20221123152638.20622-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB5979:EE_
x-ms-office365-filtering-correlation-id: 5dce8fee-f2c7-43ba-834d-08dad838d591
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F7Ft5pT6M4dl5GUtNkENwr0DAuCu/Du4Ta/QeSrw/qGbR7FRQGZbZCdCdOgEuCK6zI+DJnGekVtESTXkNRd3aRs+CVosNN5bCUGh0sAPfCshbzUhTAnVkFbRq34rqctqjYLZemc3d5xlKi41AzNcfjo9w5zsPPaonV3TN1mwnrtbU/m6SGI6SUmy9QYGcCaNRpdWaalhXDKJqa/rRSOWBLK++73mPwQFNrtXZBhwl4ZTkiNMCTZ1Y1ytcBLCqCO0rnAYni5ieU4AjfEuXRq8b4wD6ttsouLwUzI87X9TIrL0UJ+xdItz8IDhYpmH2kRLOkQSzG30BT/XuvT/B6/bI5DNJ+/E+aX/eKcl/sDeQKfXcrici55jlgCcKk8q5LH4jO7mrrfYqvuQNVRP9ZMSXYhy7y6kGxwYOcoEJoa+z67d+iXV3OkGr/pFlvMXHWbeVmaEwPDpeby95S9BrUCBN3R2ky0Sd1tqfAMWvJWwyY9c+fnKUnnCLvGxsARmMs2mnxvN3komovkgpsnH0oAOI9IT9l7UOUTJ6gzt/i0HLWcvSySNGNcVFAjLpPeOR6BYXebl3KqzLSvJiKc1st5kevXg84S7uTuCfUR+1zeyrU5EUjjnmkUgRPI+S2YQFZe7BaznRlV9FRuBdFt2dVv5PoMilyNaGEdllxQUAJbgzEj79pDr2v03vriamL0wdLOb8uMyjuQTkoe+XD07VHNpOw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(376002)(39860400002)(346002)(396003)(451199015)(38070700005)(478600001)(38100700002)(82960400001)(5660300002)(71200400001)(122000001)(53546011)(2906002)(6506007)(7696005)(55016003)(66574015)(33656002)(26005)(9686003)(186003)(83380400001)(8936002)(110136005)(52536014)(316002)(86362001)(41300700001)(66556008)(66946007)(76116006)(64756008)(66476007)(8676002)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmQyeDBZZ3J0SXRGL2VoOHNYS1BsQ3MvelM4Wm5Nd1FFZElXM0JNVXZpMHpa?=
 =?utf-8?B?cUdWYVM3UWZ2M0cwNUE5WDVpRW1xM0hwWUVmNmEwU0xoM25ieU5YaExDQWor?=
 =?utf-8?B?WFh2WkFUNm1SMHA3d0UxVTN3R1BlTVFGTndOVk1LalBJRHJiOEkrN1FaQk9o?=
 =?utf-8?B?emVUMHNxRTRaN2JsOTdJUG1CRm40djcxdGp4QzdzT3RhNlN2TmNuNDAxMFhS?=
 =?utf-8?B?bm1PeWVYL2FiTk1TVEtvejd6YzVUWEhCQmptdE5CRS96VVE1bllTbjZUMHR3?=
 =?utf-8?B?N0xucjJmMk9sMEhPT3hBSHpWMHNWa0dSaVd4U244YnhLWkV2WmVFMzcrUmVv?=
 =?utf-8?B?ODcvUDJRSXB2dWNBTU55Q2hQTnVRQ3RuR3BXUG1FT3JjZjNLNHhLQ1RXUTJj?=
 =?utf-8?B?OTk3dVZEZ2UyUW4yNlJaeXM3VWhlNXd1K1RNdnp2cmV2U25tTVEwVHZUc2xN?=
 =?utf-8?B?M2lnSVdyUnNqVkxVajEzYUFIOE1CRjlzT3VNWlFxQmttM1hUY0ZId3JFTFRC?=
 =?utf-8?B?MnNPb1lCWEp5eFdkOEFBS1FMeHl1NFBDbnFYSUNScUdVbldGVHhUM1lQSjBx?=
 =?utf-8?B?RTBhRVhXUGZkNVltaUczSHZTR1RlSHIxK2hjaVhhb0V3UTk2Qm9LVFNmck5q?=
 =?utf-8?B?MjVpQjNHcWxYMXcyeDhRQ3oxQXJaWTl1U2QxTUxTV0pLbmgrTGRqTkFVL09G?=
 =?utf-8?B?d0NrSGRQYkIzNmlOSEROS0Z5RkNQZFVQSUZjb2ZtdnB6cmo2Z1RwSU9LWnRP?=
 =?utf-8?B?dFZ5U3NyVWgxQkxJM3NyTEwzWERsV00yVEhlbC9Bc3VRUkQ2SVJCQ1pUUk9j?=
 =?utf-8?B?S2RJckhmQXlJY3psRWwrNGQvVVdWT1ZLVlBRbjI2OFRWZW9KSGc2bWl4QzdH?=
 =?utf-8?B?S282M0U4dDJQZ2RFcWZJb2poWGNucDVjN0VhS0xSNWM1VnZHdDRkSmRMSUpi?=
 =?utf-8?B?OGxtRTdRMVZZdkxMazI0RDN2VllyZXdtQkxGUEJUakRNdHRYeis2aXNva2p1?=
 =?utf-8?B?K3Yxc2F5MVQ4OVVoRjEyVitrN3FEbFRmLzNhRlQ4NExrSWV1WVRkSUZOak9L?=
 =?utf-8?B?Vmc1dHJGd0x0cno3dGZDWktqZ2plWG1mNitZUEw2TnpnSVVkcVBBUzNpcW5s?=
 =?utf-8?B?UllnT2VMLzgwNG1RVnQrT01sUG5BOVZNampjSC9oVDBhdE1wbngwWEo5bHNh?=
 =?utf-8?B?ekNpQ0JPWDlhQkwwUTB4OWMzSFE3dFAwbzBxWkNEdmt0Wkp0NVk1ZndjQzZS?=
 =?utf-8?B?YWFySG1hVm9GYS84NnNja2Q3VmN6N0tFNnhLTG90TGhGQnJLRlUyQ2laMHFG?=
 =?utf-8?B?aldLY1UzeWlqNEs3NnlaTVp0VUFDT2hFSDNNWnZkV2RWbmtoV1ZWL3g4WWs2?=
 =?utf-8?B?MEZ2ZFQvNDRna29XMmE4VjVpMlIxamMzMVoxSmxjL29UTWJ1OHBaa0lHU290?=
 =?utf-8?B?QjFBb1hKcmxkbkY3N0tvc1VwWmxDd0hHV3BucHFBTDNzWUwyN2RMZVdmQjg4?=
 =?utf-8?B?eWZtZ2FpUDRXVTJLb0JXblBYaWxISWc1UzV5aTBsZDJ6UlAwaUxZbjJveU9Y?=
 =?utf-8?B?R3ZZWDdCNFpOTzYzOThBOG5zYkkwV3ZoZ2tQU0lLUmpLZW5XZVJKZ2NnYWNs?=
 =?utf-8?B?Q1hjUlJJcmFaY0IyM08rQ00zNytqb2Q3VVVUenVGZEc5bXVTSnZOZUIzOGwz?=
 =?utf-8?B?TWhkZkg1OHVacFVZaDNMd2FUVWxyQjJsWTBwb1JJV3RFWmc4T3ExRCtlVzdu?=
 =?utf-8?B?Mnpwem51ZHdmQXY5OGFrbUpFdXVaay9GTmpYRGQyanlJeTJGdGVVNTh6bC9z?=
 =?utf-8?B?RXZIeDZUOU1vSHJQZmpvN2N6bXd6aUN4UE1yVmVyYkZsc1FmNkFPVTY4cHpF?=
 =?utf-8?B?YllUK1BRRGhGQTAzcm5QdkF2eVNXSmpzWkJIY2ZDb3ZNQzlHaFpQbVNadEt5?=
 =?utf-8?B?NmNNQU9zWFhSYk1jd29CeEh4Kzk1bFk0M3p3R0ZGWFQzcHdIdlNEMmx6bnN6?=
 =?utf-8?B?QUthYld5WU9UZWJrTkEzRHQwME9YRWNoeE1PbWFJRzVFaXQyL21zUHhIcU82?=
 =?utf-8?B?QWNhWEQ3TUs1N29MYlByeHgrdTk5czRjdDNuMEdNblh0ZEZQb2JZOE5qWC9x?=
 =?utf-8?Q?2L/Ejrb+LPI5moASDlF2cTxZr?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dce8fee-f2c7-43ba-834d-08dad838d591
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2022 09:53:03.9041 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8qKqyJk0iWAQOQeIdqlDNz1HXtBvPs5V2is3Z2721CLwl8YeQYntZ+BxZnf1c6ah5kMkv56EWk+XikktT5XFrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5979
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/13] Revert "drm/i915: Disable DSB usage
 for now"
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
eXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMjMsIDIwMjIgODo1NyBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggMTEvMTNdIFJldmVydCAiZHJtL2k5MTU6IERpc2FibGUgRFNCIHVzYWdlIGZvciBu
b3ciDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiANCj4gVGhpcyByZXZlcnRzIGNvbW1pdCA5OTUxMGUxYWZiNDg2M2EyMjUyMDcx
NDZiZDk4ODA2NGM1ZmQwNjI5Lg0KPiANCj4gRFNCIGlzIG5vdyBnZXR0aW5nIGRpc2FibGVkIGxv
Y2FsbHkgaW4gdGhlIGNvbG9yIG1hbmFnZW1lbnQgY29kZSBzbyB3ZSBkb24ndCBuZWVkDQo+IHRv
IGFwcGx5IHRoaXMgYmlnIGhhbW1lciB2aWEgdGhlIGRldmljZSBpbmZvIChub3QgdGhhdCB3ZSBo
YXZlIG90aGVyIERTQiB1c2VycyBhdCB0aGUNCj4gbW9tZW50KS4NCg0KTG9va3MgR29vZCB0byBt
ZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+
IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyB8IDIgKy0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jIGluZGV4DQo+IDQxNGI0YmZkNTE0Yi4uZDhmMGY1MTJjOTQ0
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4gQEAgLTg4OSw3ICs4ODksNyBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGpzbF9pbmZvID0gew0KPiAgCVRH
TF9DVVJTT1JfT0ZGU0VUUywgXA0KPiAgCS5oYXNfZ2xvYmFsX21vY3MgPSAxLCBcDQo+ICAJLmhh
c19weHAgPSAxLCBcDQo+IC0JLmRpc3BsYXkuaGFzX2RzYiA9IDAgLyogRklYTUU6IExVVCBsb2Fk
IGlzIGJyb2tlbiB3aXRoIERTQiAqLw0KPiArCS5kaXNwbGF5Lmhhc19kc2IgPSAxDQo+IA0KPiAg
c3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyB0Z2xfaW5mbyA9IHsNCj4gIAlH
RU4xMl9GRUFUVVJFUywNCj4gLS0NCj4gMi4zNy40DQoNCg==
