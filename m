Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 368CC7A18EC
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 10:34:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA34510E16E;
	Fri, 15 Sep 2023 08:34:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5857B10E16E
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 08:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694766846; x=1726302846;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IVj//fsAiR3Pgu2vuKQXgdafyo4YxDIA1d265L04gZ0=;
 b=kPfGt5BRqB+WnLiyTKi7ATXUxgXC6i1quwo0GnGdfAfnLHMDeE6+n54D
 BLmD8+OybBi+nGIQXKWj6VB3aQ0Lj8jnxOG4NMngcl8NHE9HsdXp+KV6H
 QVcsgGR4iHaKoexmOaIT+tOiw/zueiwyc5+zqE9OTxGnByqwTbADHTyr9
 ezPgkByx4I9azgln8o6pjwCS3gpgcx1wNFgldSv1wbDcp0oceeXOy7G7/
 J2+lnPKytvmsUgFfv4Vbb9Yo4wGeHL6232ma+2n0LjdOGcBA3Ys8r7WM6
 RlouIsO9OspYyFKe49EIjKA8/VwEqz4XNrCO/YdtfGJh9n1mv/gyNchal Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="445654741"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="445654741"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 01:34:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="991774332"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="991774332"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 01:34:05 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 01:34:04 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 01:34:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 01:34:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 01:34:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QuAkRmMSjKUPb3cwhJBEtunjHx9wdq5Aya+MKzc5ZREO2XRVAAv4Yug5FcQSV90BiVnaMWALs445Ad2zeCoKzawIvVBQjQj5DIGyHIVdWna1Hft6WoAYI2NktIrRvn/uPYYkkcYP+QrzrFv0MxoP8mxGWeVNJosQxjG+nmn0o1tq8P7KT05C9AxQ4aKJ41HYxBOf/DeFz8tDDUIBNY6dxAyWzwwu1heC+xcQw3Zvnn86wkQwEQMD0fzoTOGfagQuxIUtI+GjjCDzVWAnC869PWhD8ADCXDXRa30uUsxljQDl7F+nBjMuoKZDx6tF2/7Ws7wTbtl/98n2s4ms71WGlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IVj//fsAiR3Pgu2vuKQXgdafyo4YxDIA1d265L04gZ0=;
 b=KckKmasUpw7sHq7CoNzKN29mdvw4zjzGnHdnj1lykckW5PiphLWGQh9IcVlWtStQxRXVmccO6+3Y1TMe/qy7/VWYnbQhbdb41GDUSFZIyalSeBtuIyiV+FrG7WBKqrkXQr5iT+7i1zrhVeGTKnCDnP5wVLFjIQojZEO3VrqT5heuAQjmSMARhYthuTg1BZXPXRnV3LwtS6H06GrvnMkgf04vfVwYfPBqehMe9XOIQSoWyIYaEOymk+YEkQZ2n2FX1JvC9/VXeobuVCzhM14Bq/oRh42KHiYyd+YSmfZ7fPwPNboYu/O6Ix8ab0WDQP8/fwh3RkhUavRtuqFvQuVQXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SJ0PR11MB6766.namprd11.prod.outlook.com (2603:10b6:a03:47c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Fri, 15 Sep
 2023 08:34:02 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85%7]) with mapi id 15.20.6768.029; Fri, 15 Sep 2023
 08:34:02 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 11/12] drm/i915: Assert that VRR is off
 during vblank evasion if necessary
Thread-Index: AQHZ3NUKFxGZ+Vkb/0qbnqAf8o3ewLAbpQtw
Date: Fri, 15 Sep 2023 08:34:02 +0000
Message-ID: <IA1PR11MB63488F754944E397D699C3A1B2F6A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SJ0PR11MB6766:EE_
x-ms-office365-filtering-correlation-id: fc1e9ef8-9295-476c-fbe1-08dbb5c683ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aCxRkPeNIj1HRvaKD/sUzI0t8PHTckLLCbXcWKsvjDEK+u+7k/NV0gWV8BObxbj9fraGPXiYN5d2GC11cskaT17g4Nwn9f/wFnW8cKN2IivUbrwQaBkvoz3YVEi/vHuQ7RgbfXaUa7F9DZy8jHY7kuy1NWWAypbwlr3EtcSdhFONbH9TwHVFhw5t1zMPAvnjx0Yyumr2rZitU0trZrIpqxpTFv9bfRuVvR5ptNQfoYhbZwmwXJLAMBN4YxvIyHI9lfQ3460fCSQcCpryi0psIk3uYxCWxtbFHZvQYpEWgWGGJWxJecjGr8lyLOuy1WvDATPO79uDNIsu43DfKpO1XfENevNnOaTvJAuDNz9Q1uoREZk5uTgySLamyhkpDB2Uo+s2RTxfZP8l2c8vjPTZGDlZ7F6sjrSDZgBUgL+IR8S34dAHqe+iuz56TAdMUXTAvv6Mm87t8spZJl5/A7/dDz6qjpRB421gh7MDMhI7EZshGR9DVMPiCa2rrTc8ZoczAuHlSvCsm1RhtiU6UNJLmAb9IgtvaVqHUYeKAnmdGzgP9qoc5FidyqUtF+Oet0Ez4BeTDabEzoF3/fS1VPzjDtGM8qFk4ByrPMAfmNcKOVuM16mUe6aECMlJ/XDH8SGL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(346002)(39860400002)(396003)(366004)(186009)(451199024)(1800799009)(83380400001)(478600001)(122000001)(66574015)(86362001)(6506007)(38070700005)(71200400001)(55016003)(9686003)(53546011)(7696005)(76116006)(52536014)(8936002)(66556008)(82960400001)(64756008)(41300700001)(5660300002)(33656002)(66946007)(66446008)(110136005)(66476007)(316002)(2906002)(8676002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TkM4VTVzT0N6cXNoZjhRaTNJaEhCZUhESmFFRGJXaDlFTm51Y3QwY085cFl1?=
 =?utf-8?B?Y09tZDhVaC9kRll2R3BBN3pHaXBzcDVDbW56S2Z0QlZWR0pIWlcwdzQ0Wjgv?=
 =?utf-8?B?a3lRazdnQWlHR1FNcG5wdU5MaUFhZDVva3JGN1M4R3ZITktLbVpROWpNWjZk?=
 =?utf-8?B?d3VFTklQN0IxSkdrL3NmaHFacnR1WHR1dUdzL0MrWlJqZkZDMHdKL1pnZnlV?=
 =?utf-8?B?WHRlMDZFS1pWWWZkNmlEK1BJdnlWY0ZNV3VMQld6TkR2eGpvM2hpRUZkTTlT?=
 =?utf-8?B?UEp0RWZLcnJhUVU0b0hleXB4bkZFVWRQVVh0QkIzcnh6dnBlTk8yOUFrNFFx?=
 =?utf-8?B?SlQ4YUpBKy9DcjF0NFM0ZWU3TzRpY3AvMWZGZ3dyb1dUK0tQR3REbkFPTGN2?=
 =?utf-8?B?aWlwTFZCR2s1WW4xNFNXOSswOFVMVGt4b2dwT2VpRy9JbWxPdXdybVB3dnQx?=
 =?utf-8?B?a2YvT0VBekNsQ25pRElkcHMxbmxxc1VVVXp1SEc5SExpbnoxSFd2YjU2YkZl?=
 =?utf-8?B?aE9PMlc5MEdDK3E0UUFna1VmbmJzMjF4dm1MUENOeTZvMzJRNFBaTXg2K00w?=
 =?utf-8?B?RVNqYllqVW12ZEtSV0NtUE8xZ0RvT2RSbXArd3Y0enhKZXBpalhjYzUvTGVQ?=
 =?utf-8?B?cDZTSTV4QlQ3QlBha1plK2cvcVhOMjZ2R1dZQjkrS1A1bW9UWG5lVHJMWTJK?=
 =?utf-8?B?MzJiYnBRZTREYms4RVI3WkpNVEF6Mys3VEVvMzNWcWw0V3Y4MlBMMkpRMVZq?=
 =?utf-8?B?T05tVkczNkFHTnRENXIxK1l3UDNsUVd0c3Yrd1UzRGFTbEFPbEVvQ3NrMlQ3?=
 =?utf-8?B?WHV4dDZPd1pxZzVGM25TM3ZyTVF0VHRVMkpEYURSZUg5WFArSXNXVFBOR0hj?=
 =?utf-8?B?dml4WWZnVG9YWUxqYUs4cHE1VGpmMXFDaDBBL1lnMTY3SGFNclZKY0paRlJS?=
 =?utf-8?B?bGd6WFJ2eW9UcElLaUN6ZngxcE02ckF4eE1GSTlFMUFnT1NvV1p5ekhvYWcx?=
 =?utf-8?B?QWRJTVBXRzIrTGYvVWNqOVByNElUbHQxSHlOZStCTlBJQkFBUUU1N0RCeVB2?=
 =?utf-8?B?R0Frd1liWEg0emxtZzlZS0FIOHlCU2IzNElHck1FVTlPN0RkUGovK3VtOTYw?=
 =?utf-8?B?SFVLb2QvUzVrdVg1Z3hvaExxWlo4WHdBQWh4YWIzNW95MytnSi9rR0dMdFFt?=
 =?utf-8?B?ams3NjFhNXBwWERZeHhNS09ka2RJVlU1TEZtK2lMM0V5Z0JqbTVGbk5VQS8r?=
 =?utf-8?B?N2d6UDRBcDZMR0RlWnpZRm5RbTFBdFY5WEF2VDIxd3FHaS84Q3ZuSUtNK2th?=
 =?utf-8?B?ZXJHeHI2WG9VbTdHRk1YZzF5ejJPbnd0aUVxckNnU2dpT3publJoYW8vUDdj?=
 =?utf-8?B?Z0tHazQrZXl2SlE5djhHZ3NmWXI3UmljcUVMMzlVZXpQOWxhQzRMZlhybzlY?=
 =?utf-8?B?UFZWSFBtWmt1eisxVzUwSmJNTjQya3EzMjZaVjZuUUFzUmNyMGxWeC9Ed0Jz?=
 =?utf-8?B?OGluZEUyTnpGeDZ5bksxTVhad1lyQVkzM3J4cEx4MGJ0YTA5c3dYVUpSM3Q0?=
 =?utf-8?B?SHI1aEZNZHJRL2g3eTNUakcxTVluSjNMUFQ1VzAybnBmamdpMmNOMVAzYjUv?=
 =?utf-8?B?dmRGM2dJVzhuQ2xwbWI5Q2N0NHBMbEZJL01iaDhWcmR5TU1BdjRyb0wxbHdo?=
 =?utf-8?B?L3NaMEpnQ1JZQ3hFZHJQN24zTXBrYWREWEtSVXhqZy9pREt6b0tXZWsvU0lx?=
 =?utf-8?B?VzQrbjZUbHdnRjNWSkYxQmh6VEZFREhIK3VsN2lwNkkvcy9PNEJWV1oyNjB5?=
 =?utf-8?B?TVVDWEVoYm8rTm9wdkJnZ1F6THBLbmxiRUJXakdmcVZZZGdrWnJXSjZuSWFI?=
 =?utf-8?B?TzFmMlp0eS9BYVE4YWZzMUpoUmt3M0kybGhlVHNZWEQ3cUR1QllDd1hJN3lQ?=
 =?utf-8?B?WFJkdGdJYXB3a2xCV3F0STY3STdueWV4ZXdzNzA1NTFvSHFxMXVqSjFZajln?=
 =?utf-8?B?TFdxZXc3Q0E3OW5NK3RiVDBSNXl6Tm9YcFJIZVY3eGdRcGJudURlR0xDNG5P?=
 =?utf-8?B?QkNoNnFZUFR4VlM5ZmZFdTBYQ05KN1ljcXZiNHdNQVJnV2wvdVBad0Q2Slo5?=
 =?utf-8?B?M252bFJGWWhDNDE5VXhESndSSis4REN0YWNGQzFXR0JnMGZFR1JBdDVrRjJm?=
 =?utf-8?B?RFhLTWpyQjN0d0c5WUw4dW0yWEh5eXUxTzFIMWNkV0dDaUdUb2RodFlSNU9Y?=
 =?utf-8?Q?rJ31YOazaO0NoIZr3On3xEjdMb/VvkMfm42Q543OfQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc1e9ef8-9295-476c-fbe1-08dbb5c683ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2023 08:34:02.0128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0EUKsXj2SUcpKTi1m4fjJFW1xmNj7wkE9Y7zihG0APiivKILsVmmpvscs18kl/cOtKqajUA9hCkN/yLfnR00vdwRmQCiC2F5jPuYi7SI6W1sqdRypVLZd71GMoQfgaKd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6766
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/12] drm/i915: Assert that VRR is off
 during vblank evasion if necessary
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IDAxIFNlcHRlbWJlciAyMDIzIDE4OjM1DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAx
MS8xMl0gZHJtL2k5MTU6IEFzc2VydCB0aGF0IFZSUiBpcyBvZmYgZHVyaW5nDQo+IHZibGFuayBl
dmFzaW9uIGlmIG5lY2Vzc2FyeQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFdoZW5ldmVyIHdlIGNoYW5nZSB0aGUgYWN0
dWFsIHRyYW5zY29kZXIgdGltaW5ncyAoY2xvY2sgdmlhIHNlYW1sZXNzIE0vTiwNCj4gZnVsbCBt
b2Rlc2V0LCAob3Igc29vbikgdnRvdGFsIHZpYSBMUlIpIHdlIHdhbnQgdGhlIHRpbWluZyBnZW5l
cmF0b3IgdG8gYmUgaW4NCj4gbm9uLVZSUiBkdXJpbmcgdGhlIGNvbW1pdC4NCj4gV2FybiBpZiB3
ZSBmb3Jnb3QgdG8gdHVybiBWUlIgb2ZmIHByaW9yIHRvIHZibGFuayBldmFzaW9uLg0KPiANCj4g
Q2M6IE1hbmFzaSBOYXZhcmUgPG5hdmFyZW1hbmFzaUBjaHJvbWl1bS5vcmc+DQo+IFNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMgfCA0ICsr
KysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IGluZGV4IGEwNDA3NjA2NGYwMi4u
YTM5ZTMxYzFjYTg1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NydGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NydGMuYw0KPiBAQCAtNDkzLDYgKzQ5MywxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX3Zi
bGFua19ldmFkZV9zY2FubGluZXMoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+ICAJYWRqdXN0ZWRfbW9kZSA9ICZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlOw0KPiAN
Cj4gIAlpZiAoY3J0Yy0+bW9kZV9mbGFncyAmIEk5MTVfTU9ERV9GTEFHX1ZSUikgew0KPiArCQkv
KiB0aW1pbmcgY2hhbmdlcyBzaG91bGQgaGFwcGVuIHdpdGggVlJSIGRpc2FibGVkICovDQo+ICsJ
CWRybV9XQVJOX09OKHN0YXRlLT5iYXNlLmRldiwNCj4gaW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0
KG5ld19jcnRjX3N0YXRlKSB8fA0KPiArCQkJICAgIG5ld19jcnRjX3N0YXRlLT51cGRhdGVfbV9u
KTsNCj4gKw0KDQpDaGFuZ2VzIExHVE0NClJldmlld2VkLWJ5OiBNaXR1bCBHb2xhbmkgPG1pdHVs
a3VtYXIuYWppdGt1bWFyLmdvbGFuaUBpbnRlbC5jb20+DQoNClJlZ2FyZHMsDQpNaXR1bA0KPiAg
CQlpZiAoaW50ZWxfdnJyX2lzX3B1c2hfc2VudChjcnRjX3N0YXRlKSkNCj4gIAkJCSp2Ymxhbmtf
c3RhcnQgPQ0KPiBpbnRlbF92cnJfdm1pbl92Ymxhbmtfc3RhcnQoY3J0Y19zdGF0ZSk7DQo+ICAJ
CWVsc2UNCj4gLS0NCj4gMi40MS4wDQoNCg==
