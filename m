Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A4063CC85
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 01:35:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2732E10E104;
	Wed, 30 Nov 2022 00:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE90810E104
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 00:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669768540; x=1701304540;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=w/fLCshwPsfS/FEUHJwVxbNgJTgUgm/NMhqxIEQVgr8=;
 b=iEmfHAsLyr7z2S8dHMdFz/nG8zjutdfEtnzuq8Nj46PsKGhJKZ/jZNNp
 WIB0XOqHxQxpXhfEkqoyPrJnqawUprxtPnuzSyt0LYcf3EmedBakAYdYN
 QgmWfx0/dkyAdS4ClsOabCdb9aCyxRO2kZ8efw8z6r9bQYp65yd4KFbH+
 8jK9OZWCnW4prEld6jA1lRqI9BYdhkw7SIS/w+2kK2nuEpzwKqIOA6XQW
 VeLw0oPW7nabPbQr4DFIdZKtWEfyQDqiLIERIQSm8RHuKHzPkZ5/HsCJO
 Nlb0pfWXSCdQgbvOiRphoS4dsDOfpF+rZqZ133ji6M0c3wA+5GHfxzWaN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="313962710"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="313962710"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 16:35:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="621678567"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="621678567"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 29 Nov 2022 16:35:39 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 16:35:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 16:35:39 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 16:35:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NUQzWXkMz3qoXtD6Cj/cnVjTo7wadoZIF0+S4Mi3sRtVk4OumnVcHEyKDLtqLDsSQX7AlJ06nhj0ZwdqA5aGAnXHPE6Z8lPdBxEzkhkujWgKqZjfkWAvbQwKRsNCnqyqu6lI2wstr1ETP6FmSWLQr9v+3LmYhTR7om5pXxZf/fnSfX28VPOrDtUHmELY3H7Hm8o8xaIAj0AzqFhNwDq8xHkYSgdvJU5UIQtAoTWxquhn7vsjoQzQeSdmdPeUJEULFHqUKZb9TQmSQE6t39+K6SnaYANOOwxZz7JjkUCctc/mMBToXXn/vSETJ5iKxJbu0cLd9OwBkCTN+Nj8PBKK2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w/fLCshwPsfS/FEUHJwVxbNgJTgUgm/NMhqxIEQVgr8=;
 b=gRzDWE73x6XIL8lnHllveZ4GMw7sKX1k3c+300a4wyyzxfQ4vEfxwCLDyn2sG9yOhosZTr4gCkUSaglIUiYJGci4Q5Qc9UHCgixW2g+WzNwkbMGgdJQtr/IvSRG28gwERJJKHoAgN+UzG632/WiOLcEk4ON2m1fBtzL5CEgOqBbBKWcJLASvWGFt1lc5g0lS/4GqoEgPwrFxAr3PKqHDRmhapOl1fXhdvB0l+903RQKLQVjDlXFAMxoDqyQYmlbJIBClZiRz8uVb9tJKGvBicZ9YcOcO9/J7vFMhyFrmboLRSOEUeJFCP+CvRVYk48uxiAW/5nDO9QuHZ9eQ2RDn/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH7PR11MB7148.namprd11.prod.outlook.com (2603:10b6:510:1ef::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Wed, 30 Nov
 2022 00:35:37 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%3]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 00:35:37 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 0/1] drm/i915/pxp: Prepare intel_pxp entry
 points for MTL
Thread-Index: AQHZA4mvSHvHqBZ1wEmo85Wr9b4DZq5WbGOAgAA0jQA=
Date: Wed, 30 Nov 2022 00:35:37 +0000
Message-ID: <854a5d20cb3df06b31d359eb3e415a32dcb36bb0.camel@intel.com>
References: <20221129003152.3652072-1-alan.previn.teres.alexis@intel.com>
 <Y4Z5181VFMRQDcyI@intel.com>
In-Reply-To: <Y4Z5181VFMRQDcyI@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH7PR11MB7148:EE_
x-ms-office365-filtering-correlation-id: 821bfaec-32b6-4ac8-6915-08dad26acd09
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bhvuT2nDlF0HV8UgTIpkQ9Wblr1FKrIwoPLTHvnMva+/5JgpHQX5crxiYeTFlluEbRurKtQOuy0KWbOnAW+jhvoe/g7vlvkKeAGSm+04jqyzIZWw6RTLsg6ssQa7gEq0bGpo7pBB7kYzAneOd7xRBZQDDN7iFITah9y866NiWUiA7DKk02Em7VApd/lIHGHD1tfkasZmJSMJRQE+VBokSmuvC4iyZ9SmrxTkawCIAl0pAmDxgSJ3Q7SuiuQm9Bzmmd25UWKR+4TMx0ohr+0dBTEmnepihRQmuOKdCPpmZ4oEuKkEW9A1gfSXu9KLghG66kD8gmIWcM4ifSoBtKK6qTmWrwZAADw2no5CYrrXTdTNRL0+xVOzpNJLDXKU/00NSiCO6as0sJNnltMpXt5tWLQhkrJc5KB1AzH3qalMbsDDz2zLtSaJKusJRIyIKFI+yGAiwLv0e9lpoUbJfZRrm1iHuf7C6CBZoWsiV6MbwDlSEKCo9/FXfzzRxcamJ1YpEtw2YDLJcg1B6ZuZHHp4ppiS+gYelL9o1yIIXHpubyAPw7Q8bxsB+28IG5/qQ2SU/lvA1btHbwllAncXYjIHd9HOsxyWkdvDkHCGV52RqYrEXxg2FiNYSOxK/Sy2Jfzx/9PVEIYQlU64f7rmEJKdT3Lrkqc6iH9IduuIXQmQshIp8JKtJESJ0ME7FJidVMHRA3nXhC6RgHquAr6CqywNyg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(396003)(39860400002)(366004)(376002)(451199015)(2906002)(4744005)(36756003)(66476007)(41300700001)(37006003)(64756008)(66556008)(8676002)(66946007)(66446008)(6636002)(6862004)(8936002)(91956017)(71200400001)(76116006)(5660300002)(6512007)(26005)(6506007)(2616005)(86362001)(6486002)(316002)(4326008)(186003)(83380400001)(478600001)(38100700002)(82960400001)(122000001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eUE0S3BNWGU3TGhhOUlSTEZJd3l6K1ZvZXcydWdVREovN2YwMEFWdGZWd2FQ?=
 =?utf-8?B?YjAzbC90ZkEyOW9pcFB5OUJPc0dqektJS3N1SjYyWHJFOE5hTUtFRmRka2VK?=
 =?utf-8?B?YStEY3NxWEJka1ZjSGc0c3k0UUExbXpScDNaRmVJSTRZOWFzQmpsQVNoL01Q?=
 =?utf-8?B?VTdiTUpWajZqWUF5aHdhamN3VHVDaDJEdlZhSlFOL2pJOWdvSFJRSTJZNTNp?=
 =?utf-8?B?Lzdza0lwdjNPUzhIbUFlOHIySkdtcGpOZXFkN2JLekZveEEzN0JHTzVRTGNV?=
 =?utf-8?B?Rzk5blh3eGpkMGhsTk1ZK0wvRnVRaXNtUys0YVF4RUtrOUsxL1JYRVNYV3dK?=
 =?utf-8?B?Zm56UVVwOE9PQlZNVUllcnhpMCs2UHFhRGhjSkMvNWlPVEk4cFNKMHZNZERz?=
 =?utf-8?B?bVl3SmFNc1pEZzNvNHlTM3duRUdEWHRxcVJjVnhlclRvUDNVazZia3dPYVA0?=
 =?utf-8?B?TDdxR0l2M09EajgrYngza25UVnF4MXRyRERiT1hhTGxZTndDcnExOHI4Tmti?=
 =?utf-8?B?ZWNKTXNEQWFKREtCbzhHYTNvZUpHWHRCeVYrdUlXSnY0MmE3Zk5HY2RDT0g5?=
 =?utf-8?B?bFQyMk05UndjOTFCby9NR3J6eUpqZjVVbGlhOERlUUE5QVRNRkhBUW5DbjlI?=
 =?utf-8?B?RnJBSG5zSlRkRWR5Ty9sa0ZLMTM3bmNlR2FjM2RNRUlIdG9jVitwQStLRTVC?=
 =?utf-8?B?Z0l3NkJuQnRxOVFMTzlocWNlQUdsNURYVUpNQmtQakp2L2hreGhmZHhWZ1Rs?=
 =?utf-8?B?b1psNmhkUk56enhxNlhsVERUc1I4YmN2RGx2SFo1NUE1RU43N1F1bStOYU52?=
 =?utf-8?B?UHFaZ1pybHZuYVJ0S0xJTE1QWE5mSUg5ckVrT2RSK253MTFSMGZ2L1pjVUdZ?=
 =?utf-8?B?OHJGR1plaG5oRVFwVmdvc2tsSGlpNFJ2eDdqMTdCTHpMa1ByK3ZOdGN3aWtu?=
 =?utf-8?B?WWMrMTIvZzE5NEQzTm1oRjZDc2EyMENLcnpaWUFLTzFXd0RVN0IzTWNNdVgz?=
 =?utf-8?B?UmlmbXg2bjQwUTdkeXVuWXRGWHhLclpneG5ORyt4OHR0MXBsWGFOWUhicEZ3?=
 =?utf-8?B?QkRLbmZuUEtabGRNeE5jS3BlYVh1QzVaYnY2a3J5Q2FoSndDRHRKbWtONENk?=
 =?utf-8?B?Umk0cDZ5TlJBVENKSlpvMEtTVS9PMXEybHl3OU4xWDk5eS91Q1RNMmZQdnE4?=
 =?utf-8?B?VE5ldFV2dHp0VFVNVXFIYUptcTlQK0J1TjhyakxueWhsejRLcTdMdXdORGQw?=
 =?utf-8?B?SVR1M1VlOFE1enZ2UVdIMDhIRG5xRFphWG95cVgzTEsrWkdmU1h2aUJZVmtw?=
 =?utf-8?B?REFwT0FpVUJOSllMcksxOTN5bURkNk5MQmRvZGljbklza05ZR3JPZkpUSlli?=
 =?utf-8?B?bWFObXNvOHQ4Mk9meUs4NnhBVGdkUEJoUVBXNU1aUHNyejVVMGhXSm9WRW5t?=
 =?utf-8?B?dFNyN0VZQmo4elZlQTA4bVVyVWlEN1Ntakk5Mk1YN3dhZ3k5aklHTU1Kcmhx?=
 =?utf-8?B?ZW55ODJBVHVPaTdLdWpiWEdaTnJDRUpjd0JGeUVESEZrQzdiT3RDVjRyRUk1?=
 =?utf-8?B?dXZTckhNMitSZEpkM3NRZ2w1ajlibXMzLzNnemxFbkRpVG9BbGdmelI2U0lx?=
 =?utf-8?B?OUZPTCtJQkVJckxiMzRkUGVkcVcxM3hBajJ1a0Zlb0RaVHI1eVdpeklwNHpm?=
 =?utf-8?B?ekNhazVjdllzUzNpSldmQnZwNzBQU21JV0ZSU3IrTTNkRHhuVlkwek90bXcy?=
 =?utf-8?B?TWZZM3NxLzZMWTNpdnNxZjJOWW9QcS93Um4wMmpBUEptejhYamtGNWVTYUNH?=
 =?utf-8?B?WmdTcjU0Q0pLN0hyS09YSVR6ZmJwQllpQ2FaTHJUZEtmVkNYZ0pOVWE2dXNk?=
 =?utf-8?B?c1o5VENydEhGS3crZ1h1dXc4UG9TQ1FMSzhpanlSYVB4NzFIWUNyK3VVRk9R?=
 =?utf-8?B?RWpYY3NzSyttTzV2endhTWxJUVNUN2VwVE1ldGF6empGaDFFa1piY2hhZlhB?=
 =?utf-8?B?aDhXUWg0cXpmZmNvcENXWnQ5M0RtQ3paZmwyUjZIalhUSG94eFpnSFJqaWVp?=
 =?utf-8?B?T1FxQnZ6OEdEdE5rQ0MrNFJKaXpIdE1hd25RSStOcWtyS1JNeGJyL0tJOTVk?=
 =?utf-8?B?bjB5MkJ6VnlmWm56NmlZM1J5QW1PSEp0ek1vOWtMVWlaMnJlRHBzRk9rMjNW?=
 =?utf-8?Q?4UzH7USuvuEPCrgQr18jB88=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F1DE0D20F7342C4B8369B96E69B9A9C6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 821bfaec-32b6-4ac8-6915-08dad26acd09
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2022 00:35:37.4033 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZGBk1NSevILP5QyweXQj7y+R7VBVSj2d6I+iNJq4dPTA0V8bSSaBrQCKcVSymbSFv2V2GEEMq5tiTMV/VcMGsMcXH5GyAL1jqfWqcCH8e+HhCR8iu3wL5UEhWYbLeDB8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7148
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 0/1] drm/i915/pxp: Prepare intel_pxp
 entry points for MTL
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

PiANCkFsYW46IFtzbmlwXQ0KPiBJbiBnZW5lcmFsLCBubyBuZWVkIGZvciBjb3ZlciBsZXR0ZXIg
aW4gc2luZ2xlL3N0YW5kYWxvbmUgcGF0Y2hlcy4NCj4gSW4gdGhpcyBjYXNlLCBJIGJlbGlldmUg
dGhpcyBoZXJlIGlzIGEgdmVyeSBnb29kIGluZm9ybWF0aW9uIHRvIGJlIG9uIHRoZQ0KPiBjb21t
aXQgbWVzc2FnZS4gSXQgbG9va3MgbW9yZSBjb21wbGV0ZSBhbmQgaW5mb3JtYXRpdmUgZm9yIGxh
dGVyIGhpc3RvcnksDQo+IHRoZW4gdGhlIGN1cnJlbnQgb25lLg0KPiANCj4gDQpBbGFuOiBPa2F5
IHdpbGwgcmVwdWJsaXNoIGFzIHNpbmdsZSBwYXRjaCBhbmQgbWVyZ2UgdGhlIGNvbW1lbnRzIGZy
b20gY292ZXIgbGV0dGVyIHRvIHRoZSBzaW5nbGUgcGF0Y2guDQo=
