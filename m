Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 232D554FC43
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 19:36:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 881E210E257;
	Fri, 17 Jun 2022 17:36:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3442F10E489
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 17:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655487405; x=1687023405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kUY3wcovBYmYwOkgC7l38ML3kyupch8uH7lzTmhGry0=;
 b=LwPIx1sM0jpzD2IN39q94qCVboCMFkEzWjg0m72Xap/eU7WnDeph5IjE
 lp0l9uJvXi/3LSFW5j4IEqMEJAOZFURn7lYiJNmeZ2J7hjc96DSjkLUHz
 vA8V/4KPPxX3nx12gBjIR0dG+gPz3SMlbfQMJRixiAgtthq6nSt7GSw29
 pIbPhGhIlpy3Q0xnLaPSW81ibV3c8ZbPkqbpJflJsmyAQ0ZAv+qx02TZC
 T38uhJlsr4rwqkW4snTeaXEUZk9qxGcJlosaYWqd7u3GBHhB30Ese/cF5
 8qd4Le/eEfJIO7kSmgC9eMSBiN+dzAK+nnLW0nrwIeSMFS7QeQRWu1Sm0 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="259947235"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="259947235"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 09:38:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="642079832"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 17 Jun 2022 09:38:58 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 17 Jun 2022 09:38:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 17 Jun 2022 09:38:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 17 Jun 2022 09:38:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e6fkv81meDVjxavyB/RX/4Qx7L4MepIbKSlcA6ifhnLDOS5/PQFgr5mtsB8dGzt3zV8pJKgx/16DPQXWJjbz9yZKiOqvutPHAnUAtLU+jJ6DxnQ9/Vru2qM1N2ltw1m87lMLRklke5i4Vw8oZbklRz9Op5v8lTJgrCjFLKmoa8DKqHvWHpqkKEru/madqNSUpNrDA53ZqxrFHc4jZd/DnDRDzd9t5cHNX8bPiwamc0Q32462vlCa0+V5FeMT9HbxeGKHXfCgg6dD8g4jQVm4ojTjlb2UVINzCJCkk9FHtBCt7xdaYWTuHcXiyglbdzYkWHHFdtOkqYKaJFCBsVrSxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kUY3wcovBYmYwOkgC7l38ML3kyupch8uH7lzTmhGry0=;
 b=jhcgZSw+YgRn8aMDRhpyygFUFRiB5sSjEOAyhVwlGLlxzfYa9w+YZy59/ebb8QcxfAsIzBvibo1HJ2S0MQ735NrlaXfQurWQoWZm4Jiuj/mj1EwFhTpKlhFefdL+lyRC7sawygf0aS+Dqsx5TfzTQ1IDhSMpn19hTlN/P/QcbgiAGKO9RZmgnlFmDLY6bqfu1cobVqqxv3d3hLvmye+KhgD547H+DbFKoJDsXLkp8yJ2GMxusCA/tDx/XhDJgCDPgqDvyIAJy3lVFGDkML4gznx4Dch07OVqPqOxMHbzH0g75rBRDnUJDvPTR/qH7nr4HwyPngzqfyR/Xn/2vegmNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DM6PR11MB2666.namprd11.prod.outlook.com (2603:10b6:5:c9::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.15; Fri, 17 Jun 2022 16:38:50 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7%5]) with mapi id 15.20.5353.015; Fri, 17 Jun 2022
 16:38:50 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [Intel-gfx 1/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
Thread-Index: AQHYfbh72EbRT9IYxEa3+KUnTS4Wy61OG5sAgABjpwCAAll+gIABa8cAgAGRoYA=
Date: Fri, 17 Jun 2022 16:38:50 +0000
Message-ID: <1a21b8a1b90fdb065e726011be008d6c9db19565.camel@intel.com>
References: <20220611172711.2154962-1-alan.previn.teres.alexis@intel.com>
 <20220611172711.2154962-2-alan.previn.teres.alexis@intel.com>
 <20220614011024.GE48807@orsosgc001.jf.intel.com>
 <84534cf0-94f0-13e0-5fb3-332bee124a24@linux.intel.com>
 <20220615185953.bsbyr27jcchccvge@ldmartin-desk2>
 <1a19781d-5d78-aa15-9578-44106433cbf9@linux.intel.com>
In-Reply-To: <1a19781d-5d78-aa15-9578-44106433cbf9@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 89316b6b-27ef-4bda-65ca-08da507fdbf5
x-ms-traffictypediagnostic: DM6PR11MB2666:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB2666F4E3B727C9232D67E95D8AAF9@DM6PR11MB2666.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 59M3n1gLGpmvGdRrq7j3m8uU4P/oEtkTf7r3ygpe23q9RULbc07C4aQ9mvmjbML3mMEuNJ6MRjgjvmFL8gjHLSqNSaLiL3ZIeSjWhS5nJ8u2wRwnhw7ySLL2JKxOfrGQcz+9nw1jUMMYZRq6fqSlGCTLyCWo3/EqaCEj99m1dKRPycPXncL7MgFQANuS25oKH1Hz2vzEaNqQKOMXQkP7bUadQxM0q2DfE86rLiIuqA/d8ByBweXQa4876sOCVhP0YW6GWAxkupejPM/C7r4RPq0WMfVKLHZjK2ozSSA5gXBKECk7u2F4sbipq4Uc6Z+XXbNz586SXXP2+W3JDmGgS1ldPFUd+Tnv1T7akRUA28DRlE/uwAjzI6ik2iA86CIgxYgBK7l9dsP4UQWqcS3VN72LXHCOSrT8I2XTCiOYeWb8bSK2MiEMorafe82POSB0iOvQo52ptjvpsIPsSh1MBwknRtxEc2uDaFbp+2Ae4kWmcKcKyqPbIKKQmJXnzEHLCnffbncqyGuWbNXN21FRiweHqbpUCxi2xLgQYRDLmpYvYhukZ5vcXeCGn3/qh8de/DA8ptJ2M6qyqdYW1qaykpifKqUE3wNbUq0XA7ZG2xM19XASfqeRaijzR8P3dTSuIGFR+jUiw08J4phlgmcA6EXOd15mUY0EPGZkOhXRZoOd7t78Mq/ONH4w3PFFdVmcQz4A7aqx507q/VGslk66Bw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(122000001)(54906003)(6636002)(5660300002)(110136005)(316002)(498600001)(8936002)(6506007)(26005)(6512007)(186003)(2906002)(66946007)(66476007)(66446008)(71200400001)(36756003)(76116006)(6486002)(4744005)(4326008)(64756008)(82960400001)(66556008)(8676002)(91956017)(2616005)(86362001)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VlBQKzBxTHprOE9wQmJzNWJ1UDBuZjRQSWFMV3FJS3ZvTitwR0h6TFNXMFZC?=
 =?utf-8?B?Q1FQMkV6NExSb1FNdnNMTXVjQjNqVnBES2orWjBDN0VHaStwWkRkM1B4Yjdr?=
 =?utf-8?B?dTh0YVQvazNwTnlqZExFc0ZpMVIzSHFuOTVpNW5tZTFRcVFFcFRVZDBjV0kx?=
 =?utf-8?B?WkhLK0RPR0lvSFZKNHpHUUFOV1RvWjlRak5POTludTdjZk5WYnZyRmw1MkNs?=
 =?utf-8?B?am43QjdmMmNtdEcrd3pGQUdCQnpObkZNODh2Mkw5UnhhWFBKVFVTNE1XVzRm?=
 =?utf-8?B?SmZaYnZnT3B4LzdLK2hVMCt1R2Zmem1FVldraW1rSDBYTFBTNG5Sc0pJMlEy?=
 =?utf-8?B?V0pISDVqMnpVVWZ3S0ZvZElYaEliN3VKeEpCUUFKd2oxc1RJRkErdksydkpU?=
 =?utf-8?B?MUFOZDdnaGE1ZUV4UXQ4L0hjeHVPK2ZOU05hdDdGUmhmWWpZZm5ZdDlzQXJQ?=
 =?utf-8?B?YmMxZVpLRitSbXpzMXB1eEtPMFlQcTVkMkpxTDFmcXNNMytrZ1V1cldlK1Fo?=
 =?utf-8?B?YUNGc3k4SEU3L04zNDlkYXRkbXNheTY3TGpUZW5Pb2JBSHY0NVBVK2hwYy8w?=
 =?utf-8?B?dm5vUkN2TkUvckc3S29Scy9CQmhzYWRTeDFpOHhTVW04NjFCS0F0bFBXd280?=
 =?utf-8?B?T3Y4MG4zTjdrT2FtQThCQkdQZlRpUVo1V00zSVoxY1hLYXg0cUI2aWNVUjEz?=
 =?utf-8?B?c1RDcEdxRlhTM2IrR0NtK015QmNvK2FwTTd4QlhkWHh6ekhmcXJiOXpNTnhC?=
 =?utf-8?B?QnpMNW5DY1czMDdKekNMOU40RnVrU3RlMndORmF1UWFSYVlYRG9ad0lUM0tu?=
 =?utf-8?B?ZTljQmdnVlVFM0VLR21wejJiKy9DRldKZkEzNnFoejlOU3hoSUd4T1NNRzRW?=
 =?utf-8?B?ZFZnVGhGTWZmMGVYVUYzZzZqa29xZDE3QmlpQmo0a3lBcktzUlB5ZzNIbnpH?=
 =?utf-8?B?Y3lVcVhaV0QxMzRrcWpCS0o0NVhyTXhiWFFWem8xdVdtTkVoU1Fjdi84NFd3?=
 =?utf-8?B?Y3ZaNk9kRTZQS0V5OUZLQkg4WEJSTjd3YU0xUXVBc1hLZTdVSjcrVzhZYXlx?=
 =?utf-8?B?YkZTVC9GUm5QZHlDOUxpdENUQnN1WWwwWEl0S2szRHFrRExqT01SMzk0dXRz?=
 =?utf-8?B?S2c2TkNRVStsVk1iZkkzdkRXQitGU2ZWUFU1a0V2VHVSU01WMXhoV2Fkc0ln?=
 =?utf-8?B?STgrTHNhckVQd09mQWtsQkNFcXBNNEZwUjVXMVF1QzVJcmZDRkYyUERSMFZa?=
 =?utf-8?B?bVljSis4bGRlYWZUTFRMcUdGcXR5UGgvZzVTdkV2YjlCd010eE00Nk8xdjdO?=
 =?utf-8?B?L2FSNkNrQmRxRGV5WEhWbStPc0FOQXpzaGh3bWd6enJ6QzRPTDZhL0paN3U1?=
 =?utf-8?B?eHlaOU5QR3AzT2xHbUNGNTZ4b1Z5WGpmZmRGMGdjNDBqNU8rMW1pWTFZeWRr?=
 =?utf-8?B?L3hCTzgxSVEzZlNYK1FlZ1E4d2lxbmZTWGhzbUJzWkNCbFduS3BvRXRHY3dV?=
 =?utf-8?B?NlR4bnRzb1M4cDFyYlJVcGVWRXNEbjdYZXYvOENCNFBFZFg4Y250M0lGUWh0?=
 =?utf-8?B?UEtmTUpLeGYwMnhHU1pjeGU2Y0VvVEZCcU1yZWYyaFRKc2JjcklGUytaK0tW?=
 =?utf-8?B?MEgyWEw2RWRtdVIweHF3K3d3c2k3SldIZUl2LzZDS3ByUG96bDE0MzlxZDVi?=
 =?utf-8?B?VXZTeVAveGNablYzUzJPdFk4akxaMXh6N1E1YlBEblZHTE1NRHF2cjFrVEZG?=
 =?utf-8?B?YTAzb3hHWm85S0xwcTNYa3lYc3dQdDE1T2QrdE5VVXdhOVFRQTFkWGZrNEhp?=
 =?utf-8?B?T0lsZkozU1Y1L1VZMloycnVWNjJGM1I2RzJoU2kranhLa1VVWUU1aDBtd21X?=
 =?utf-8?B?anZwaE9rT3NNQXdJZ3kwMFFWalEvQWs1WERRdTBEQUZURUhGTnlTdngxUUpm?=
 =?utf-8?B?ekh1a2JPQ2ZWUlQyMjNuWmFKOGVlUzhGWGd4djIrQjE4SHZzTmNqRU5ja3lo?=
 =?utf-8?B?RVVDS0IyaytJWitBNlRmb2wyaDIweW1Wa2JhNDdyNldiaU5DbHZ2ZHpaLzgy?=
 =?utf-8?B?R09FMUI1NEw2T2ZENlo1cm5aU2dyVE9sYTVSZmg2bzh1ajhpOTR1cy9zZmtJ?=
 =?utf-8?B?M0o5SmpkbmZ0SGlwLzB3R3VnOFYvSE9lSVFCS01QRkh4anRqalJERCtPM0Ix?=
 =?utf-8?B?THhRWTVlUDFCSEdCL2tKcDhYckd4QUhja1g3RXdabnlvTmh5dGRWWHpZSVh6?=
 =?utf-8?B?WVU5N2ZWcUpOZG9SMlhUakJrM2hkR01Pb2R0aGZYdytSTk9hRUJaNys3aGQr?=
 =?utf-8?B?V3lBdU5hUUtqMUZKR2pkUGZmd0c2dHRRbEkyVFdPQUNtUC9BRGJGc1NFc0Fw?=
 =?utf-8?Q?5+1uoFpTkq1fEv7sT4vq1BRZ9CwA4h2jkxns5+GjXAZns?=
x-ms-exchange-antispam-messagedata-1: cLhWtmmzZiL+ug==
Content-Type: text/plain; charset="utf-8"
Content-ID: <A0F663160CEEAB4A99F1E762034A4F22@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89316b6b-27ef-4bda-65ca-08da507fdbf5
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2022 16:38:50.7551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4w29iaTyhIVBDYjVQGI+hNHBnqSBPtdk6cGIy/iCq2BMU+gkWJ/Pm5KwORl6PHVO6Ka1/jsH+QdTmvRyI/6gnNVCZS6T2qOCMmJUsB7V6dDs7P8voIuKq/+JgViuHGeW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2666
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx 1/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQo+IFdobyBkaWQgeW91IGZpbmQgaXMgZG9pbmcgdGhlIHNhbXBsaW5nIGluIHRoZSByZWFsIHdv
cmxkIHVzZSBjYXNlPyBBRkFJUiANCj4gaWYgb25lIG9uZSBpcyBxdWVyeWluZyBidXN5bmVzcywg
SSB0aG91Z2h0IHRoZXJlIHdvdWxkIG9ubHkgYmUgdGhlIEd1QyANCj4gcGluZyB3b3JrZXIgd2hp
Y2ggcnVucyBleHRyZW1lbHkgaW5mcmVxdWVudGx5ICh0byBhdm9pZCBzb21lIGNvdW50ZXIgDQo+
IG92ZXJmbG93KS4NCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0a28NCj4gDQo+ID4gDQoNCkhp
IFR2cnRrbywgdGhlIGNhc2Ugd2hlcmUgd2UgYXJlIGxhdW5jaGluZyBtYW55IHRpbnkgdHJhbnNj
b2RlIHdvcmtsb2FkcyBpbiBxdWljayBzdWNjZXNzaW9uIHNlZXMgdGhlIGd0X3VucGFyay9wYXJr
DQpnZXR0aW5nIGhpcyBodW5kcmVkcyBvciB0aG91c2FuZHMgb2YgdGltZSAtIHRoaXMgaXMgd2hl
cmUgdGhlIGJpZ2dlc3QgaGl0IGNvbWVzIGZyb20gKGFzIHBlciB0aGUgd29yc3QgY2FzZSBleGFt
cGxlDQpudW1iZXIgaW4gdGhlIGNvbW1lbnQpLiANCg0KLi4uYWxhbg0K
