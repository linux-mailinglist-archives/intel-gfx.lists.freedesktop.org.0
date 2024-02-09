Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CAF84F4DB
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 12:56:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B25F810E935;
	Fri,  9 Feb 2024 11:56:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JZvudwVa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 324AD10E78C
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 11:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707479762; x=1739015762;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LkHXTBFVu90BmULZwx6aBkNDTuPbBYkqKd3ggjkeHOA=;
 b=JZvudwVaLO4qaUCBnUoyQwyhRRhuy5QsG0Z8QX6XSRclqsB202CAiiW8
 UDgJrNIYSLv3Xn4nSC5plVT+7QAE96op/IiCrQ08thrc2Nbw3RT8FI/Vy
 UUkklphjGfIPvrqHtYJVAK7b9cV0t0YNcNIF7HauDfDLhtcIy5NCTo3qd
 sSyPcJls2uX4HZ/kmXcYM7+oHdmD+H7C/s05TcvS5m+J/rr1wLmtDviQe
 XKJ3TSR4wb71O7Lf1MnG5gXKeZekAOS5K2lW1D5YOwuLlxNIstg0XUvpM
 wHVW6LOrssGe38Hrgld5CuqrNn+Urxw8+ZJmjPSN0OhYdV+z+uY0yQVXo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="436552575"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; d="scan'208";a="436552575"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 03:56:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="2264830"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Feb 2024 03:56:02 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 03:56:01 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 03:56:00 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 9 Feb 2024 03:56:00 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 9 Feb 2024 03:56:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O5T0I3otSFMBVYIhaiSlDgrmQLqWfZawuDL0tKiJRY4CXlb97gXpXzAvTh55Id1Rs7aKKS/ogxXCUtvp6PmO5nZfb9wMaoWn9cFGMTWm8B5Z0hxGdCPNpNN5HQ4dhswUXXMmzptXfD6pUIQiN8bDBCz7yaUoZEXLaaWG8Y9VnsCVSIiQxxgYIrRPRoLJbbkH6/1TTy3W7Mwzsk+6RkNhBVE9KBOSe5B45Nlu632MCs1dzbPQYoQAU/7/l7NOjCGzEIlhG0DMLdMeB+eW3IC4Bculi+ecoWUWp4F1CmTBganvqxb+1w0OmfMUbs6y7Rx7IbOMZMyqF9ryi0eAtZoTVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LkHXTBFVu90BmULZwx6aBkNDTuPbBYkqKd3ggjkeHOA=;
 b=CPGB5xAopGhanw7OSYDt3KKUoW7qsFvaf/4lfW2RjtW/n7VU8lZ1Lt0i/hzPqJgUsOQpB5ZEtv5aw7nWUHw+Gd0MrvY6DGYOYErS/D1y3XI7iuaIDsKBA7gCpatfCLHSc1+X8o3O3euJlSifexceYGsMiyzVdXpOdYSuR7jOX7VhB7JMrlpP03WbhANeWhGpu1E1cf4wcjVZsQGhsH3PTGHCJ9czsRFYDvBSOwYDWjG0kQ2GFCKrGHNW6iZcLeiUcNJzcJZ2++wlHxWZ9bfK796KdZZ6d1mJ49cn3VikpTAHyhccv2MG59PyU4Ya8VCIBB7Q65S6fN/R8k4qflYHzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH0PR11MB4823.namprd11.prod.outlook.com (2603:10b6:510:43::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.38; Fri, 9 Feb
 2024 11:55:58 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d%3]) with mapi id 15.20.7249.038; Fri, 9 Feb 2024
 11:55:58 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/display: Force full modeset for eDP
Thread-Topic: [PATCH 2/2] drm/i915/display: Force full modeset for eDP
Thread-Index: AQHaWMxp9m04XFnFyU2whKA1SeZXRrEBvO2AgAAtrDA=
Date: Fri, 9 Feb 2024 11:55:58 +0000
Message-ID: <MW4PR11MB7054254B4B9C319878D99FCBEF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240206070937.197986-1-mika.kahola@intel.com>
 <20240206070937.197986-3-mika.kahola@intel.com> <87a5oaatws.fsf@intel.com>
In-Reply-To: <87a5oaatws.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH0PR11MB4823:EE_
x-ms-office365-filtering-correlation-id: 0f071b0b-6cc9-4dec-f3a5-08dc29661453
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SpIhzbIH10/q96PTq1+RGZWIaIKnfI9MJrjECC/FtwRavKyZcTBRBUi2wwi9rP9YRZYfwPi/0c+a6idB2j5mW4wTMb8V9x51P+6Lsf5Aqy1f3Mm3CSZDw6LWyfhb4U1tIdkOdAyjaouwwpx+7oa8aRJUenXk9DxR+Cedw5iOsQybysCxeUSdRfNRaMLE2aveaVaugZlqKWY5OLMcxJ5CprAqzZQbYiYGofozKqTD096AcgbRsO2N6fTicR464TsdE404HoVXakF2YhIpBYGq6jEVadSzrhEBjm4vgbuO1lqqrRdgl9q77+snh5vu3DEEO299Rq7MNXFVci2zPPFt1WgWKMO97uK9/9RMCKicXI5vEPOnOpp7KaPyCogU33V5nkJXRIhkvIAaeaNNeIxUGQKoDsayS17WCVQok8F2de5rcEGyAQ7bzphB38kBk8XYISC8HbkrFzpyePnMEzagapQWsbjHtaxO47K4PdKBICNLD3Sgx8N39xIMyK+J763rOqqtDey5XgumrotJdlrjbOQ+V4pMflfDnxPsLkc36pU9sAMmEpMFReS8on9nsael2xlJqiQtBafaW9UVOX9v8vp4vgErrpd9Xg0tz4AlU3HZ4HhS6/VuqPHwop+93ce9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(376002)(39860400002)(136003)(396003)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(41300700001)(9686003)(66556008)(53546011)(66476007)(66946007)(110136005)(7696005)(8676002)(64756008)(33656002)(6506007)(71200400001)(76116006)(478600001)(66446008)(8936002)(316002)(38070700009)(83380400001)(38100700002)(82960400001)(26005)(86362001)(122000001)(52536014)(5660300002)(2906002)(55016003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?amwwYXJ3OXJWMEs5bitnYjNJRUU3Q2t4cDU2MTl1TGttZTdUZWJrSkh6NnQz?=
 =?utf-8?B?VDM1TkZSUG9PdXAxaEVHZWxQZmJDMk1qV2tvdTZhYXI4MHpDa0pDQktjM3lX?=
 =?utf-8?B?ZXNNYWxVS0VzWHFLdVpOQ2FsOVVzSzdrRUlreGlNUDBzR0oyaHpXNXV0OWdi?=
 =?utf-8?B?VWtreVVHNU1BdzZwejh3K2JxbWpMdWI0UjRwRE93b2hVaVJXVWFpY3VtM3pa?=
 =?utf-8?B?SDd4Y2xQY0NXRHpkekxONElUVnhrL0xsUEh3eFlQcGUyTUZ1aGhMeWNvVGVB?=
 =?utf-8?B?cWRpV25JLy90TUxOL25LOHd6OFdVS3BQZFhwZHRGdW9vUm1XUHN0TkoxamlX?=
 =?utf-8?B?UXVNdzd0UENEZWpCWWtGVzhSMC9tMmowYmdSVDV0ZjBMb2V6eThkb09HMmEz?=
 =?utf-8?B?YlZZMXlXUkV0S00ya2xVa2RkcjErQm90dWRVZkFKZXJXZUFaN3c4a0FKRXZL?=
 =?utf-8?B?TmhaZitFeEZUMTdlallCZkJsMEhpSFNyeWxaZTRsbU8wRHhNM0Rvdmp0VkQ3?=
 =?utf-8?B?Q2I1NU55YnVtVlBtcHQ2UWZ4UCs5VFQ2UzNSNFVVWG5WVk1Id3NHbmFDb0VE?=
 =?utf-8?B?VVltWHBYTXhwc2R1OUhGNDN4OFVCK0NzMWJYdUtNQ3Q5M05ZWFoyWmd0SXdi?=
 =?utf-8?B?MGdXYjdUOTN3bDNNVWpSeWh3VG50TTh5b2RrZmZwZmVPU2ZvMGZoOGs4SnNv?=
 =?utf-8?B?WWxXR0VLb3J4OVN1MHNXMnU3c25GT3lrVEFMY1JoTnByS3BXdkhCSHZlWmtk?=
 =?utf-8?B?NE10eTk1UDRlWkt2ZmhQZmdpbTdleWlDNHp3VExkNURndXZ2SVlzMW9IcjVE?=
 =?utf-8?B?UFZ4NzJHWFZiajZpTlA1VmdQQVJIaE5sWVFaSUJ4elh4cjVJVzB4bzA0clJq?=
 =?utf-8?B?ZEZrL0ZSdGNrTXNGV2pqb3VHMytxTXBuSmJLVUdDSXI4RUpvOVdwdDMyOXFu?=
 =?utf-8?B?S3lxdXZmZThCZFd6UG1GVU5uVUtZN2QxbFNMSVlnOEsvUTFGZC9wOTNOK0NG?=
 =?utf-8?B?N2pFQlNpMHRFR0E0ME9EUFRVdVcwbFlXN2lQeFNTWTZna0k5TWNlVmh1L2R5?=
 =?utf-8?B?K0hQbE5sbFkzdWkzRW9oMGlRWEY1bVZNWDludUgrN2d3RDA4QTZ6RnBCVmIy?=
 =?utf-8?B?MGZROGlxVEtJMlBSdmd1OFJBRlMzcVVvYjEvQzVuOU5NSDR2KzVPbnRCK0JQ?=
 =?utf-8?B?NnN6OWRBN2lQM2htTys4Rm4yTWEzN3FTaElkQVY5L0JQYVkrZXJpZUN0UjdJ?=
 =?utf-8?B?SExqRXBNUWxON01RZkpvb3BWand6NWNudTF6Tkc2VzlsNTNQMHQzczJXTmoz?=
 =?utf-8?B?eGg5bmNtdzU2ZnVIOWdORDZLemZOT2R1QzJwSUJDZExCZGpobi9MVUtzVkRj?=
 =?utf-8?B?YjhuelhXZTJvdjJHZTk3THQvZElJSXJmblc4YWNoamhIRUk2LzJDK1Y0b1hK?=
 =?utf-8?B?MVZ1bXFTNFVwZnVJL1lNT2NNV2lodVNKZzg0bTBEOGMwSFZGUk9qbGRhcklo?=
 =?utf-8?B?aldkb3piN3RHS0hjdWEwbExYeDhuOXVrc3A0cVdYOXJVS1lJaGszYnc1V0lC?=
 =?utf-8?B?blFoWVlhR2VWL1lINWNHVC9PSDlEKzA1L3hTSjdhclNOYk0xMDZCbHE1cFpI?=
 =?utf-8?B?VWY1L0hmckpZWmQ3Z0MyM3Y4KzFLNUo3eGlXMmRGcDc0SDV6S2RWdlpwUS95?=
 =?utf-8?B?N0s3dG1vRDNmUCtCTWp4eW4zR2plMXhPMUk3WjFoVDVPLzJMNGw0MTNnWHJV?=
 =?utf-8?B?Ky9mUW1tUlMzMVB6UE41MVlyRlNlVTZrZDhNY2lWZU9HRUlVZHhJaG11dC84?=
 =?utf-8?B?bytBamlqZkxYUk9LQ0VPV2ttUzM3bHR4ZVI0Qnp6MlB3c1d0cHBOQ01QOE1F?=
 =?utf-8?B?TUduRWJDTHc5VlZyS0dXWG5oL0tEcjZXeTh5dEdGTUhRbTQrWTRrNDJmaUd6?=
 =?utf-8?B?RlRkazdIZ2dYK3RFREc4Q0FRRnlqYzNXV1dwanM4cmpndFJzNThHaTdkZDQy?=
 =?utf-8?B?Y1BMc1YrTkhrQ0tWR1JMNU5JNzd4bjdkSUI2MXo1ZFVlU2RFVDNLZ0NCYTVR?=
 =?utf-8?B?WDN1ajU5VEVNN1JqNFJBanVHT1g0L3dLeVdjQ1hlWmZyT01nOFZTdVpPeTAv?=
 =?utf-8?Q?bfLG2VuAS9TLIdLhjmpWQQDWH?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f071b0b-6cc9-4dec-f3a5-08dc29661453
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2024 11:55:58.3710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XGLu3L51VdVumGhYqmXSsPKdcA3cxh5OU6TOuuStcwvUC5l87ADF4bpWkR8nZVaJVzuNTmEAlmOZxFc+vmDkNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4823
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIEZlYnJ1YXJ5IDksIDIwMjQg
MTE6MDYgQU0NCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogS2Fob2xhLCBNaWthIDxtaWthLmth
aG9sYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMi8yXSBkcm0vaTkxNS9kaXNw
bGF5OiBGb3JjZSBmdWxsIG1vZGVzZXQgZm9yIGVEUA0KPiANCj4gT24gVHVlLCAwNiBGZWIgMjAy
NCwgTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gRm9yY2Ug
ZnVsbCBtb2Rlc2V0IGZvciBlRFAgd2hlbiBib290aW5nIHVwLiBHT1AgcHJvZ3JhbXMgUExMDQo+
ID4gcGFyYW1ldGVycyBhbmQgaGVuY2UsIHdlIHdvdWxkIGJlIGFibGUgdG8gdXNlIGZhc3RzZXQg
Zm9yIGVEUC4NCj4gPiBIb3dldmVyLCB3aXRoIGZhc3RzZXQgd2UgYXJlIG5vdCBzZXR0aW5nIFBM
TCB2YWx1ZXMgZnJvbSB0aGUgZHJpdmVyDQo+ID4gYW5kIHJlbHkgdGhhdCBHT1AgYW5kIGRyaXZl
ciBQTEwgdmFsdWVzIG1hdGNoLg0KPiA+IFdlIGhhdmUgZGlzY292ZXJlZCB0aGF0IHdpdGggc29t
ZSBvZiB0aGUgcGFuZWxzIHRoaXMgaXMgbm90IHRydWUgYW5kDQo+ID4gaGVuY2Ugd2Ugd291bGQg
bmVlZCB0byBwcm9ncmFtIFBMTCB2YWx1ZXMgYnkgdGhlIGRyaXZlci4gVGhlIHBhdGNoDQo+ID4g
c3VnZ2VzdHMgYSB3b3JrYXJvdW5kIGFzIGVuYWJsaW5nIGZ1bGwgbW9kZXNldCB3aGVuIGJvb3Rp
bmcgdXAuIFRoaXMNCj4gPiB3YXkgd2UgZm9yY2UgdGhlIGRyaXZlciB0byB3cml0ZSB0aGUgUExM
IHZhbHVlcyB0byB0aGUgaHcuDQo+IA0KPiBOby4gV2Ugd2FudCB0byBhdm9pZCBmdWxsIG1vZGVz
ZXRzIGlmIHBvc3NpYmxlLCBib3RoIGluIGdlbmVyYWwgYW5kIGF0IHByb2JlLg0KPiANCj4gQW5k
IHdoZW4gd2UgZG8gZW5kIHVwIHdpdGggbW9kZXNldHMsIHRoZSBkZWNpc2lvbiBuZWVkcyB0byBi
ZSBiYXNlZCBvbiBjaGFuZ2VzIGluIHRoZSBzdGF0ZSB0aGF0IHdlIGNhbid0IHdyaXRlIHRvIHRo
ZQ0KPiBoYXJkd2FyZSB3aXRob3V0IGEgbW9kZXNldC4NCj4gDQo+IFdlIGNhbid0IHVuY29uZGl0
aW9uYWxseSBmb3JjZSBhIG1vZGVzZXQgb24gZURQIHBhbmVscyBhdCBwcm9iZS4NCg0KVGhhbmtz
ISBKdXN0IHdvbmRlcmluZyB3aGF0IHRoZSBvcHRpb25zIGhlcmUgbWlnaHQgYmU/IFdpdGggZmFz
dGVzdCB3ZSBlbmQgdXAgaGF2aW5nIGEgbWlzbWF0Y2ggd2l0aCBvbmUgUExMIHZhbHVlIHdpdGgg
YSBmZXcgcGFuZWxzLg0KDQpTaG91bGQgd2UgdHJ5IGlkZW50aWZ5IHRoZSBwYW5lbHMgYW5kIHNl
dHVwIHNvbWUgc29ydCBvZiBxdWlya3MgZm9yIHRoZXNlIHByb2JsZW1hdGljIHBhbmVscyBvciB3
aGF0IHdvdWxkIGJlIHRoZSBiZXN0IHNvbHV0aW9uPw0KDQotTWlrYS0NCg0KPiANCj4gDQo+IEJS
LA0KPiBKYW5pLg0KPiANCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWth
LmthaG9sYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYyB8IDEzICsrKysrKysrKysrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDEzIGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYw0KPiA+IGluZGV4IGFiNDE1ZjQxOTI0ZC4uOTY5OWRlZDFlYjVmIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IEBAIC0z
MzE5LDYgKzMzMTksNyBAQCBib29sIGludGVsX2RwX2luaXRpYWxfZmFzdHNldF9jaGVjayhzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiAgCSAqIG9mIGNydGNfc3RhdGUtPmRzYywg
d2UgaGF2ZSBubyB3YXkgdG8gZW5zdXJlIHJlbGlhYmxlIGZhc3RzZXQuDQo+ID4gIAkgKiBSZW1v
dmUgb25jZSB3ZSBoYXZlIHJlYWRvdXQgZm9yIERTQy4NCj4gPiAgCSAqLw0KPiA+ICsNCj4gPiAg
CWlmIChjcnRjX3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlKSB7DQo+ID4gIAkJZHJtX2Ri
Z19rbXMoJmk5MTUtPmRybSwgIltFTkNPREVSOiVkOiVzXSBGb3JjaW5nIGZ1bGwgbW9kZXNldCBk
dWUgdG8gRFNDIGJlaW5nIGVuYWJsZWRcbiIsDQo+ID4gIAkJCSAgICBlbmNvZGVyLT5iYXNlLmJh
c2UuaWQsIGVuY29kZXItPmJhc2UubmFtZSk7IEBAIC0zMzI2LDYNCj4gPiArMzMyNywxOCBAQCBi
b29sIGludGVsX2RwX2luaXRpYWxfZmFzdHNldF9jaGVjayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwNCj4gPiAgCQlmYXN0c2V0ID0gZmFsc2U7DQo+ID4gIAl9DQo+ID4NCj4gPiArCS8q
DQo+ID4gKwkgKiBGSVhNRSBoYWNrIHRvIGZvcmNlIGZ1bGwgbW9kZXNldCBmb3IgZURQIGFzIG5v
dCBhbHdheXMgQklPUyB3cml0dGVuIFBMTA0KPiA+ICsJICogdmFsdWVzIGRvZXMgbm90IG1hdGNo
IHdpdGggdGhlIG9uZXMgZGVmaW5lZCBpbiB0aGUgZHJpdmVyIGNvZGUNCj4gPiArCSAqLw0KPiA+
ICsJaWYgKCFjcnRjX3N0YXRlLT51YXBpLm1vZGVfY2hhbmdlZCAmJg0KPiA+ICsJICAgIGludGVs
X2RwX2lzX2VkcChpbnRlbF9kcCkpIHsNCj4gPiArCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAi
Rm9yY2luZyBmdWxsIG1vZGVzZXQgZm9yIGVEUFxuIik7DQo+ID4gKwkJY3J0Y19zdGF0ZS0+dWFw
aS5tb2RlX2NoYW5nZWQgPSB0cnVlOw0KPiA+ICsJCWZhc3RzZXQgPSBmYWxzZTsNCj4gPiArCX0N
Cj4gPiArDQo+ID4gKw0KPiA+ICAJcmV0dXJuIGZhc3RzZXQ7DQo+ID4gIH0NCj4gDQo+IC0tDQo+
IEphbmkgTmlrdWxhLCBJbnRlbA0K
