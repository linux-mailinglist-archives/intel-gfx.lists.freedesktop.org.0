Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AC9853117
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 14:00:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95C8C10E185;
	Tue, 13 Feb 2024 13:00:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xd5oOndl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B9C10E185
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 13:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707829200; x=1739365200;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zUwG0GKQ01QfrmPZFL8ilkE+k5OOlDbQzY/4DJVQbds=;
 b=Xd5oOndlZ68KUNC6+vJU/paFH0b2Igibh4lsFT13M9MBDZoFawifvJ3a
 FPeYH2PdzbRNqR7hM+dXnAo+zFRZuegoTvpTAwsVgGxFYQFPaaANCvo5S
 RvpBAYo5tzIM+XSkVF5p5wsU+9Ur12cmcplcjWdRhgdou0aQFGg1kDFcP
 cpf/IWSqB+meEK+rcUSX6DEwhaucazwBQGYQV9Y3Dxs6kVX/GcrQHuoQz
 6SFaw801jzsE1pwEnVKj7gd7ZUqAMem7wJXOxmzCnOWKa2oxJJgHKok9s
 csGN94uwbsPyuCja6jmON27NvXnFwxR7GN9qy4E+iMl/igXROUV3CvyeU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1701412"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="1701412"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 04:59:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="911782982"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; d="scan'208";a="911782982"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 04:59:57 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 04:59:57 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 04:59:57 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 04:59:57 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 04:59:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UCsQo2dHbNZpo9UrLyyteNIj5xNEsvannCPUnRwOkNPR2qzMQ9HZ6muFVs5KyA4KuiTqCctRuONRnuYt8yCzvHkEhZhc86U2IcuyvBJGud8nzLAI0qynVvneN6xUzchyr/dcq/cW7Fi6a0kiJllTZqhHV1rIQc7yMHItWNQbhmw2ywmbpm88xp0bpqpNpHdT9Tc7Sd+t4Nbfx7M99cV6EKZvosp6b8TAU8+k7CQWVkD9iWR58nZiZ2e/XIHFQI1kxGcJ1SmuDy9uUn40AGeuH5FhgZMnceAKzZIhIwho0dkmIoAq5l7JJf6dE0K60hGW9BSGClATBwWNgABYIGzOvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zUwG0GKQ01QfrmPZFL8ilkE+k5OOlDbQzY/4DJVQbds=;
 b=L0xq4vYZvxoA1+bnWOj5/koFvSSC0jiJMcB6Y4Jtif5M4PeV6xsq9TVshbXXSJKatyvIxf2SdLq/w/lj/EnklnFToV54Roiz0mCUoE/5pnvBIzhvfZgSD3bWakL6mykMakicDIYaSZKUWShD8BPU/E1HncKKp+gzaT/4b5zTXazKqA3GvXUZEw7ZIhr61dGoFmm79uZgUmBVI9Xv6/U+QikEX3knYMD46Cqfm3C75GXlataA2+koVpJQ9lUz34KvFEPpb+IfeRXuByDAV1k93y5XXUFsAtW8xyuEVXIjYhrcmKLbpO/wtDmCdXIQq681fk6TnQOHfoe6n8YmuBVdgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DM4PR11MB5994.namprd11.prod.outlook.com (2603:10b6:8:5d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.25; Tue, 13 Feb
 2024 12:59:55 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d%3]) with mapi id 15.20.7270.033; Tue, 13 Feb 2024
 12:59:55 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 3/5] drm/i915: Reuse ibx_dump_hw_state() for gmch platforms
Thread-Topic: [PATCH 3/5] drm/i915: Reuse ibx_dump_hw_state() for gmch
 platforms
Thread-Index: AQHaW4cw+9me2IdWbE+p6iRTwvz8PLEIQeOw
Date: Tue, 13 Feb 2024 12:59:55 +0000
Message-ID: <MW4PR11MB7054A8B989F4C033086DC2B1EF4F2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
 <20240209183809.16887-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20240209183809.16887-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DM4PR11MB5994:EE_
x-ms-office365-filtering-correlation-id: a03f4bf7-1657-4a52-6330-08dc2c93acd3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NcBgcxxM8YIfJCwAUpq+HzGoTXavAxMkUMQhInj5ghGPe+RKjznM+0dKR20l+bGB2QdfhpGWynEVglC+4V44qqQViqCiYqNBd7X8ggm66EPxqZ+H5jBtE4C9OLHKPR23BBwdVjbPIA0NFMF0vC68OJwjEdeRniVapTY9O9vKZBv3NSAP7jERvn8NIob5gYW5k0KCnj85f9d0I8BA+lXAwhPDUOe1V8kqKuOke/WeOC5G5eVn+muUJzI8WhnK2gbB2Gsj/Xds7fxYYRjzffT7RXUJ3E42mjIYvODqqQ8lj3jRI3UM82yqqUWB+aeZHuVAqAVRULf3Za8FICl/upzw3730ZdNCCE3r+QUV6b1K97wWeWsOYUL8lTP7WMG5/v+1fIA9zCKFi+PjNd53INyG8hM6IpqtmjT4cXCBCmrqD/DL4veXVxPGvakpEbhSNz6tGtTMORwY3RI8/FVbrl+fly7RB7oIxf5hABjByhQqkBv2TIbb3YGXAyEDX8H57xlLnuAMBTpdOc3V8DrinoovxIAo7SNBT4/KCmjHKqBMjAvEJUP2RMtMMWQS7uz5HDn2ChQm/72cca+952ZYLqZox93wvSm7T+j/PasP+rESwxPLVXTOvLX4yn43X/ekgzJF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(136003)(376002)(396003)(366004)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(2906002)(5660300002)(7696005)(6506007)(71200400001)(38070700009)(53546011)(9686003)(478600001)(82960400001)(122000001)(38100700002)(83380400001)(26005)(86362001)(33656002)(8936002)(52536014)(8676002)(316002)(66946007)(66556008)(66476007)(66446008)(76116006)(64756008)(110136005)(55016003)(41300700001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MFB1VzRML0FnVzBtaGUxN0dkNS9BcjJjcFl2SkJXclB3NlhWc1lUWUgrbElE?=
 =?utf-8?B?VDdKZUgwckpoOXBWWDJUM0pTOWR1anZONlpsODVNQ0hianRRQzZ5bWJGT0l6?=
 =?utf-8?B?QVl6a2lISTF2VFRPS25ONjlWUldDVDh0NmVnMkptdytzSU1hdmErYUNPSm5S?=
 =?utf-8?B?SkhSTVYwSWpabjJ5WlFrK20xOFp1c3FCc2YwanJpRXRSQUJpWmZSZXhJOHgw?=
 =?utf-8?B?RlIzSWk1QzV6ZE9WNjNhVTl2VzdaWlE2cWRSMVJjL3dOU1JhUTF5aXYvNHFj?=
 =?utf-8?B?VExtc0I2UnRTTW9lRzVIcG1VRnphVTU0VmdkUnUwSDdQV2dTNnBGUHdZMW1N?=
 =?utf-8?B?QXMyaEp2L2VpaEk3am5LUGZIeEx0aWZFZ3Azb2lHN3pDMHVLWkhxdlRWWDVJ?=
 =?utf-8?B?VG1WMEVVeXNhby80M2VQWXEwWWxYK0xFeDM4S1c5VVBDUzdaS0UyM3FUVlpt?=
 =?utf-8?B?TTVoWjRNT3V4aVpSWUxralY3NlE4b3AzS1hnMFRQQmZBcmlXcklFU3J0TWk3?=
 =?utf-8?B?ekwvckhSaDl1K0UzeDd6QVZ1L1RjcTYyK2JOamtiZEhTUThwMVhRRVVnWXAz?=
 =?utf-8?B?MHRJc212Y3U2cWRjazNaMkc3NHFCcFBwR2FFZGtVTi8zWUVNVzMwd0Rkallm?=
 =?utf-8?B?bzFwd3BkanowVVJwWXNsZU90VWR2bXdWUmVndkJVVGw5RklYc1lKSEdjZGtS?=
 =?utf-8?B?RzhLeFJpVnBhZW9zeWFHKzA2eWpLanpmdWUvZjA3S0ZhNURmM2QzTVlJT0Jt?=
 =?utf-8?B?RDdkZVBFM284T3ZQeVZpcWgvZE01L1VFdk5sZXkwRmJCVzJNNE1vNXIrZVFE?=
 =?utf-8?B?aWltWjJHSWxucWdhdXlWRExiWTBuREEvQmJGenhYbldRU3Y3d2dtaVlacHhY?=
 =?utf-8?B?QjhGaTloK25pN0pzRmFkZGozdHVjaEpCcXNUNnh1U1E1cXo3UmVhT1lON2J1?=
 =?utf-8?B?UEN4cVZuU0QzU2xRQXdjc29UK2htRDZVbk4weHh5cGZic2dvbWVWbU5LRVlk?=
 =?utf-8?B?R0d5WURoeG9iL2p5Qk5oU2NzQ2M2Q1ZKWVFaUkg2SmhRcGtZTFA5QzNmTlhq?=
 =?utf-8?B?N2daUUw4Rjd0cFltMmJualpMRjlkeFE0bWhyMUVncDh5SjluOXpvVkVKVURF?=
 =?utf-8?B?N3ludTNnYjhoT3lVR3FOR25VQUI2OFBxQ0FEOXpUUTk3aWpxNnJnRzZtSk1z?=
 =?utf-8?B?b3dLM1A4MktTWFdqR1IrUlZ0NHcwUnVLNmFKaFBDRUltZlRZeWNJc3ZIdGFu?=
 =?utf-8?B?VlJkc0NUQ0haUk1oaFZPUWcwcTBTUURZcmF5dHJ1NHhBU3pvbzBEN3NrRFJK?=
 =?utf-8?B?Yk5KTk1wcTdrd1F1SWtPUHlnbjZPWmk1Vi80a1pCWnVVbmhwQ1FoRzFrQ1dJ?=
 =?utf-8?B?Z2c5N2IxcjNiUXJnYm42czBsT1V6RlZXUDFpY09WTWt2MGlEbnhBN3VFeWJo?=
 =?utf-8?B?UjFTbUlYSC9SbzVYdHBDamZRUVVoUjUzQU5kZ2tMaG9oK1dpT2tHb2s2eDFY?=
 =?utf-8?B?eHl1NWRsYVllMFo2RUIzb3BqNk90azJ1RitWUXBkRnV5NGFsaHVUV2JIRnJh?=
 =?utf-8?B?c2JDeGV2bjNSbVJEWFFuRlgxdEVOR1RMTHZ1UlcyMXZZckhyWE14MUJnRFhU?=
 =?utf-8?B?TVcrcDROa1NDN0tuZFNvd0p6bzl1K0U3THVwc0VISTlCRHkwek9ENWloclF5?=
 =?utf-8?B?Q3ZjVmNSek1uNyt2R3M5Y2xOa1V2bmtUOXUvMGRSNWk3VVowcFNZTzJPd1k0?=
 =?utf-8?B?VzBMbnAxUkFPV2hsOEZwanp6K1E4M2Y0NDZmYkdqRFBsK0YxSXQvZnZKckV3?=
 =?utf-8?B?Wi9nRmRDWlUrZ253cDFoTm51NlQwVUpPeVVsWEhsNStia1kxbTZqYXBwNVRs?=
 =?utf-8?B?MlIxckpXcFN5endWZC8vY2pBK3h0Q250OXgxNkZFd1RNZStyVXpVdmE4cHBP?=
 =?utf-8?B?cC9sVHJIVXBNOVJ1THd0ZTM4SFNUMit6ZDJTdmUvMTNOVmVCOHAxSGhpZkJw?=
 =?utf-8?B?Q2hFL3Bxck1RTGNwcVlmaDI5TGszK1lYRlFySnRyRG4xdnhyeW5wTnYrOGp4?=
 =?utf-8?B?MDUvT2E1RkluSnIzR0l1OGRMekhLR3N1QUN6aldTaCtkSDlhcDlNdUN3KzRi?=
 =?utf-8?Q?wH2HgCWmVOwwu72GB+4HVqz65?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a03f4bf7-1657-4a52-6330-08dc2c93acd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2024 12:59:55.0662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xl+i33yS5lKt9bhHCqutSbDPvjVuqgxB0K4vHaY6IecXSdS0+0aTRDxLxAU9gZGCVhZ/RrDNJ3sqkpRoeI+4hQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5994
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlIFN5cmph
bGENCj4gU2VudDogRnJpZGF5LCBGZWJydWFyeSA5LCAyMDI0IDg6MzggUE0NCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDMvNV0gZHJtL2k5
MTU6IFJldXNlIGlieF9kdW1wX2h3X3N0YXRlKCkgZm9yIGdtY2ggcGxhdGZvcm1zDQo+IA0KPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAN
Cj4gR01DSCBwbGF0Zm9ybSBEUExMcyBhcmUgc2ltaWxhciB0byB0aGUgSUJYKyBQQ0ggRFBMTHMg
c28gd2UgY2FuIGp1c3QgdXNlIHRoZSBzYW1lIHN0YXRlIGR1bXAgZnVuY3Rpb24gZm9yIGJvdGgu
DQo+DQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0K
IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBsbF9tZ3IuYyB8IDggKy0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwbGxfbWdyLmMNCj4gaW5kZXggZTdlMGE0Y2Y5ZjkzLi5jNmNjNzQ2NWI5MmMgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3Iu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMN
Cj4gQEAgLTQ0NTgsMTMgKzQ0NTgsNyBAQCB2b2lkIGludGVsX2RwbGxfZHVtcF9od19zdGF0ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gIAkJLyogZmFsbGJhY2sgZm9yIHBsYXRm
b3JtcyB0aGF0IGRvbid0IHVzZSB0aGUgc2hhcmVkIGRwbGwNCj4gIAkJICogaW5mcmFzdHJ1Y3R1
cmUNCj4gIAkJICovDQo+IC0JCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+IC0JCQkgICAgImRw
bGxfaHdfc3RhdGU6IGRwbGw6IDB4JXgsIGRwbGxfbWQ6IDB4JXgsICINCj4gLQkJCSAgICAiZnAw
OiAweCV4LCBmcDE6IDB4JXhcbiIsDQo+IC0JCQkgICAgaHdfc3RhdGUtPmRwbGwsDQo+IC0JCQkg
ICAgaHdfc3RhdGUtPmRwbGxfbWQsDQo+IC0JCQkgICAgaHdfc3RhdGUtPmZwMCwNCj4gLQkJCSAg
ICBod19zdGF0ZS0+ZnAxKTsNCj4gKwkJaWJ4X2R1bXBfaHdfc3RhdGUoaTkxNSwgaHdfc3RhdGUp
Ow0KPiAgCX0NCj4gIH0NCj4gDQo+IC0tDQo+IDIuNDMuMA0KDQo=
