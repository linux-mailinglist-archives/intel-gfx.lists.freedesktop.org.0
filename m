Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 545A08904A3
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 17:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F201124BA;
	Thu, 28 Mar 2024 16:09:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GJixjrKM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DE0C1124BA
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 16:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711642193; x=1743178193;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7tum+EPEXg0xeiQPsMMM96S1B9kul3Ywkt334Bkz21Y=;
 b=GJixjrKMianwat/Va1SZIVa3gVxM5CkDoqzlrInWOe3I1Qy11noe5qAs
 HamnTZhPV6TJIiN4VELLM90jDdydl18JbV0QwkRqrXYy7MiQyLFSGHX7d
 H5qgN+6XyuXjN0/82FY28sXs2J1Q4rjN37IZqYb6Bq2ZM9/5V4TAoIT/q
 /o4e2AlPK/3bUZRk1WbvdCs6u1CkLZPT5ZBrqvoJsg6KRWwmQKWs6urCs
 Jyv4w80VrcSjWyP5A6rtB2YTJdNmoSZZNCC6weRWCd/4ep/K56KDu12NS
 yH/jTHK/tvhTT7nyZnIYrkbYm+ebmTuR7BiYk8GzuIE7p+IBfh8qzZzQn w==;
X-CSE-ConnectionGUID: RHo4IwcSSq+SFKLy8cEnSw==
X-CSE-MsgGUID: gU393eusRjaqozDGB8+9GQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="10615665"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="10615665"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 09:09:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="16528009"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 09:09:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 09:09:52 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 09:09:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 09:09:51 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 09:09:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XBFdQdfjXujX4ECq62OIfnhChzaXJxUofWnV4wsJZOVUJbEpqUF2IMlFQcdDQ6/sy+ALGSSgmyvHqyNkaHArhjcU1Uo464YjkZ+ZC4w3cC3DSUbgUuUtsPeFDBDGH1LrI/3LMkgsFqeYj+v63IFSnCjtnt3WMGttcOrNrcBN/43LjcMAWrFAlbiPj4rvvmQWBmszp7FPeb3DiIVboD/rRwbBqIBGdya1hh+aQguo0PMvmc2p9dmI2p7KVrMSh3n+dsbEOth83wHVj/loNZ9SN7zjqWawnotOMu3YwXRrStDDByuOskpcOgiIbR4ZLRHLzv9Unwi8Y6ZI8BzeZfQgqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7tum+EPEXg0xeiQPsMMM96S1B9kul3Ywkt334Bkz21Y=;
 b=ScA0bMzoZSpTrvQrT9p+nGYVYCicCFqcpldtIN+9qawa3U3bo9Jjco9j5rELFPBNRtXE2Xv/o1tFiX6wIORNidnSXXAMheMQ1Lo0J1MpXh8BZ49ZqBDx1CwFEf2lQxjkDu8DnQ2uC6sQ7264pUOetibzZYj2kzKusUm5oUPIn2KVs/vKiuFE2Xg57k3rETFPk5f8q1HE8Dr3htZLtqx5VdMjkq4kXn/rfw1iOOW59bU97DAStcpipkJt8WpNwK20BoxhcqZA+pZXxoCEm0O5/EZ6aJxwLu1LDnb+Vxvbum1DKOToQpUaj8cdFYe02onBVm8p8UgFMeBHblTpQI45Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB6477.namprd11.prod.outlook.com (2603:10b6:8:88::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.32; Thu, 28 Mar 2024 16:09:47 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 16:09:46 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 12/13] drm/i915: Use a plain old int for the cdclk/mdclk
 ratio
Thread-Topic: [PATCH 12/13] drm/i915: Use a plain old int for the cdclk/mdclk
 ratio
Thread-Index: AQHagG6/UDzPsn3GJEScOr9ryYeNi7FNU7Ug
Date: Thu, 28 Mar 2024 16:09:46 +0000
Message-ID: <DM4PR11MB6360832F7CF666D37916C2D2F43B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20240327174544.983-13-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB6477:EE_
x-ms-office365-filtering-correlation-id: 266ccfa6-7cd1-45c4-eac5-08dc4f417c8c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZrdMCj3lViVvJ04sYXMCK72Kk2wHBdAKIXl4b5CpavF/nqqNu9bula4GZUuZ/QWc5MXGE6P2m8SAunQbTztb5Z7vIZ3RdjogM8+2TUJFn8Rd6Xpd+/etn1SHDrLWX8/Gp/gobbe2HwoO7b7ySvMQq+RTLXIiE/pwecgui09hBDj5wveC4Of+MjYA7Lk7ZfA+KlaxOHyqICwiyL6CrrOWyHRDxUYh9p+MbmNpajHBUhYIQqVPVr96k+a57sFTvpn1LtERBeIMbqmn2QdgRXWbdNdrEvqHWik+P+IiQdkWuxNG7Yh6y+sQHurQ7YVJK4I6UOASQvk4mnX//xNuVMUHpQULySNNLSJiyrzUQd+e+dbLU7QE6+hyq6MI6wHr9Vj9kBvc9RZc4G2c60EIBboN/V5/+hE2w4ycuxRxqHuIT5ECXBpSyQ/QNEGG03Vyd/Ec0suinmTvnjKjlObBm/3DHbqj00125DeHVzJZeXD1lYIWFWZj2G8L4RQrPUZCcrQ2hE0KsIyf5c1iKM/IOiH8TbM7KV3ICOWv2LpHNyHKypJHCglAwkG7E+xiL6gy3aL5kcyRTpYQTZngh6GDk2djG07f/J91lszw1ORwAFWE6zpfvIRwnG4y2Vw1rzUq4bZNWrCbUTbVy8is1VVs8GLfeEQa1I2saYpHDn+4isaqlyepqlM6axCcuZXOqqnAjlfediH4qk/4SIEIL1iilSv6JCTrD6ar21rgECesKI4kmPE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QXJFWnY0QjV1Q2Fqa1M5ZFprSFcrM0kxQU5vL3lFbFpPcUw0VDBBYk5iYUZQ?=
 =?utf-8?B?eXI1QW1DTk0rZEl1WFhjcGFqNU5qdDVmekVxQzdhVmZ6TFFpY3h2Rjg3alZH?=
 =?utf-8?B?VnF5bUpkZjlNRE9oZE9TZm5Dbk9uN1ZTNWVncGorYUFPRDY3WTJkcWlwTlUz?=
 =?utf-8?B?RlphNnBucGdiVjRTKzQwdG1ZczNSZVN5TmFWUVlvMENrT2Q3WmF0WmloZmdj?=
 =?utf-8?B?YTQ0a0xGZUpmdkxIZ1c0aFRaZGh6MEIyK25xZXRhZlNYeEl5UDdzNUNDRjd1?=
 =?utf-8?B?OVFGMjA1b3pvKzBET2x4eU4yYXlYV1ZRKzBHcFNHVEhqWmVJVW1YNExiakpB?=
 =?utf-8?B?THpncGZPZ0ZmQzBMaVFqM0djbnh3T21yb0UyN29vWUdSZHRxVGhMRUFuUXor?=
 =?utf-8?B?WEs2ZkR6N241QS9ESlJidGpqV05CU2ZKRXhGZm13WlZsMEs1clFDb2xqY1p1?=
 =?utf-8?B?YVE0eTFmNkpwWnNyN1ZlZXI5Q3BEVnpObG1Fd3BHWEVJZlhwMXRhQzlxUDE3?=
 =?utf-8?B?eitXOUNGOXJiT0tIdFFMTE1yMVJQNmVpZkEzVXFkTWFBbDM0djB4WEZoREJ3?=
 =?utf-8?B?WjZra2FYYkNVUE9sM0hsaVNjREEyWW93cnlHd2VjQUlhdUxwYUUrS1hobm5S?=
 =?utf-8?B?OHNmTUZCQVMyMDEwUzZqeFdGdm1neWNsTDNQVWl4NXhOYitWSy9OYnBzcGZ3?=
 =?utf-8?B?Um5jVkYzVktxOXBiekJxZndvMDBSVUg2MCtTNmQwbGUvZVg4SWsrQjFxQ1VR?=
 =?utf-8?B?bENLc2pFQzE4ZC9CRTdWYm5hVGpXOCtLenloL0h6Z29QaE14K29PYmlndkpP?=
 =?utf-8?B?TTNRenpKRzNTNzhPd1Q4U2owb0Z5VzNtLzZYM2RiVXhDQ2hyeDdVUzJkRklz?=
 =?utf-8?B?OTcwNG9MZlVRZWFmbkdBaXZYY3lNMGM5QjY3QVlvYmZkVGNDWC9nNUVVK0Vq?=
 =?utf-8?B?US8rcEFpNXIzVUxUbXJLQnAxcHBsdnJBaVM4Y2p3OVE4VC9vVnlXY1J6dURU?=
 =?utf-8?B?M3FDaE9PY2tlc1Jpa25hYU9xN1lDTzhxSEI4RDI3TUhKd0FaejZ3bE1BaEJP?=
 =?utf-8?B?cDhtZHhXN2xGL0cyNWZpblNPQ0FKNks3WkV4bzNXd1BYdUJ5eHdlUGNpOWZ5?=
 =?utf-8?B?dmYwUWtEWXgxMHNSR1ptSnVnRHZRZldmUVFDcHZJOFAyanJHc0w4c0F3VkFP?=
 =?utf-8?B?ZnRlb09sYTBXdDR4MUZ4b3NCMUxCa0NsdFBYZGluSEdIbnlOaUJ6TlNBQk90?=
 =?utf-8?B?OEkzQ2JFNzJlWkpZU2xsQ09ONGh5YW9QeFBqN2ZRNU9oSXdGU2k0eGhhYjRH?=
 =?utf-8?B?alJKR1E5eGpDUHZCdzVvTWc4M2x6U0hvY0JWL0w3QjJOUW5TQ0Y5T1Qxa2t3?=
 =?utf-8?B?YkdGTVFQd2RMSSt4YUk4dHh3cHR5TGJpTDdLWGk3QU1tWjUwOXFYWHRsdE8r?=
 =?utf-8?B?WUZJeTR3UURNMkZ1SjV0WkpxeUViS3QyQi9EN3hRUVNqV052K21WazgvMG1K?=
 =?utf-8?B?VzdPTVJlOElXZEorclhVelFSOXMwN3pndkp6THN5b2oraEZmRjJRS1VqZXVN?=
 =?utf-8?B?bStGS3llWk9hK09xVHRRVy9OVlFJbG1yRGR4MGtsVW5YTG1WMXBvMm5zc3VL?=
 =?utf-8?B?a3hMQjkxdnYwNjQxRmxWZTEvdFM5U3crak5wRkswM2FibStUc2k3NVYveUtt?=
 =?utf-8?B?SVNOZ3RYZGM4azVtdGxjTVloc2tsT1dsNmQ5WndLQnpSU09QYWdyOEhkcTlw?=
 =?utf-8?B?Z3Z6dVJhdUhSdlZUdnhqQ2dMaUN6ZFg0bEVxQ3BjNkh0NUJjb1VmaGtFWE5Y?=
 =?utf-8?B?Z3hPMjh1ZU9CTXRvOElPQ1Jhb09iSDZjSFJxVEhsa1poRURJSmJrdEdTYTVP?=
 =?utf-8?B?cXVzazFFWkl5b1VaTW8yUW0yT2s1MVdHUFpIcENGN3piVS9KNDRCclMwN0pp?=
 =?utf-8?B?anVGV2drZFRVclp6WUwyNW1lL2FJcHBYTDJxdzNsVTlVYnhwLzlWbUFvNXI2?=
 =?utf-8?B?Y1hWYldSR1VoTXZnRnBOVTEyN3paNDR5QUlXSkdRSERyQzhzMCtjdk5YNlJC?=
 =?utf-8?B?eXFCaHpNMFF1aFJPMXdUZDNOaE5JOFlYUHBPOWJXbzBwei9LSWFHN1hpeXJP?=
 =?utf-8?Q?b72OIOQ9YN1lZN1USLBDfBPBO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 266ccfa6-7cd1-45c4-eac5-08dc4f417c8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 16:09:46.0639 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kbzx0CJcSA7awuAEHohF9PtJftQQ/yuPnja4h9RfhzSTzJQdsVNIEHLq1RVCG9yEhmeWoXsF2DS8wDPrA9Hljg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6477
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggMjcsIDIwMjQgMTE6MTYgUE0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDEy
LzEzXSBkcm0vaTkxNTogVXNlIGEgcGxhaW4gb2xkIGludCBmb3IgdGhlIGNkY2xrL21kY2xrIHJh
dGlvDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiANCj4gTm8gcG9pbnQgaW4gdGhyb3dpbmcgYXJvdW5kIHU4IHdoZW4gd2UncmUg
ZGVhbGluZyB3aXRoIGp1c3QgYW4gaW50ZWdlci4gVXNlIGENCj4gcGxhaW4gb2xkIGJvcmluZyAn
aW50Jy4NCg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jICAgfCA2ICsrKy0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5oICAgfCA0ICsrLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jIHwgNiArKysrLS0NCj4gZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmggfCA2ICsrKystLQ0KPiAgNCBmaWxl
cyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBpbmRleCA2NmMxNjFk
N2I0ODUuLjVjYmEwZDA4MTg5YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2RjbGsuYw0KPiBAQCAtMTg5Myw4ICsxODkzLDggQEAgc3RhdGljIHUzMiB4ZTJs
cGRfbWRjbGtfc291cmNlX3NlbChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4g
IAlyZXR1cm4gTURDTEtfU09VUkNFX1NFTF9DRDJYQ0xLOw0KPiAgfQ0KPiANCj4gLXU4IGludGVs
X21kY2xrX2NkY2xrX3JhdGlvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiAtCQkJ
ICAgY29uc3Qgc3RydWN0IGludGVsX2NkY2xrX2NvbmZpZyAqY2RjbGtfY29uZmlnKQ0KPiAraW50
IGludGVsX21kY2xrX2NkY2xrX3JhdGlvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0K
PiArCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa19jb25maWcgKmNkY2xrX2NvbmZpZykN
Cj4gIHsNCj4gIAlpZiAobWRjbGtfc291cmNlX2lzX2NkY2xrX3BsbChpOTE1KSkNCj4gIAkJcmV0
dXJuIERJVl9ST1VORF9VUChjZGNsa19jb25maWctPnZjbywgY2RjbGtfY29uZmlnLT5jZGNsayk7
DQo+IEBAIC0zMzIxLDcgKzMzMjEsNyBAQCBpbnQgaW50ZWxfbW9kZXNldF9jYWxjX2NkY2xrKHN0
cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiANCj4gIAlpZiAoaW50ZWxfbWRj
bGtfY2RjbGtfcmF0aW8oZGV2X3ByaXYsICZvbGRfY2RjbGtfc3RhdGUtPmFjdHVhbCkgIT0NCj4g
IAkgICAgaW50ZWxfbWRjbGtfY2RjbGtfcmF0aW8oZGV2X3ByaXYsICZuZXdfY2RjbGtfc3RhdGUt
PmFjdHVhbCkpIHsNCj4gLQkJdTggcmF0aW8gPSBpbnRlbF9tZGNsa19jZGNsa19yYXRpbyhkZXZf
cHJpdiwgJm5ld19jZGNsa19zdGF0ZS0NCj4gPmFjdHVhbCk7DQo+ICsJCWludCByYXRpbyA9IGlu
dGVsX21kY2xrX2NkY2xrX3JhdGlvKGRldl9wcml2LA0KPiArJm5ld19jZGNsa19zdGF0ZS0+YWN0
dWFsKTsNCj4gDQo+ICAJCXJldCA9IGludGVsX2RidWZfc3RhdGVfc2V0X21kY2xrX2NkY2xrX3Jh
dGlvKHN0YXRlLCByYXRpbyk7DQo+ICAJCWlmIChyZXQpDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmgNCj4gaW5kZXggNWQ0ZmFmNDAxNzc0Li5jZmRjZGVj
MDdhNGQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y2RjbGsuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xr
LmgNCj4gQEAgLTY3LDggKzY3LDggQEAgdm9pZCBpbnRlbF91cGRhdGVfY2RjbGsoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUNCj4gKmRldl9wcml2KTsNCj4gIHUzMiBpbnRlbF9yZWFkX3Jhd2Nsayhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOyAgYm9vbA0KPiBpbnRlbF9jZGNsa19j
bG9ja19jaGFuZ2VkKGNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa19jb25maWcgKmEsDQo+ICAJCQkg
ICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NkY2xrX2NvbmZpZyAqYik7DQo+IC11OCBpbnRlbF9t
ZGNsa19jZGNsa19yYXRpbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gLQkJCSAg
IGNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa19jb25maWcgKmNkY2xrX2NvbmZpZyk7DQo+ICtpbnQg
aW50ZWxfbWRjbGtfY2RjbGtfcmF0aW8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+
ICsJCQkgICAgY29uc3Qgc3RydWN0IGludGVsX2NkY2xrX2NvbmZpZyAqY2RjbGtfY29uZmlnKTsN
Cj4gIGJvb2wgaW50ZWxfY2RjbGtfaXNfZGVjcmVhc2luZ19sYXRlcihzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSk7ICB2b2lkDQo+IGludGVsX3NldF9jZGNsa19wcmVfcGxhbmVfdXBk
YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKTsgIHZvaWQNCj4gaW50ZWxfc2V0
X2NkY2xrX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
KTsgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVy
bWFyay5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMN
Cj4gaW5kZXggY2EwZjFmODllNmQ5Li4xYjQ4MDA5ZWZlMmIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IEBAIC0zNjE2LDcgKzM2MTYs
OCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tYnVzX2Rib3hfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCX0NCj4gIH0NCj4gDQo+IC1pbnQgaW50ZWxfZGJ1Zl9z
dGF0ZV9zZXRfbWRjbGtfY2RjbGtfcmF0aW8oc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsIHU4DQo+IHJhdGlvKQ0KPiAraW50IGludGVsX2RidWZfc3RhdGVfc2V0X21kY2xrX2NkY2xr
X3JhdGlvKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiArCQkJCQkgICBpbnQg
cmF0aW8pDQo+ICB7DQo+ICAJc3RydWN0IGludGVsX2RidWZfc3RhdGUgKmRidWZfc3RhdGU7DQo+
IA0KPiBAQCAtMzYyOSw3ICszNjMwLDggQEAgaW50IGludGVsX2RidWZfc3RhdGVfc2V0X21kY2xr
X2NkY2xrX3JhdGlvKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLCB1OA0KPiAg
CXJldHVybiBpbnRlbF9hdG9taWNfbG9ja19nbG9iYWxfc3RhdGUoJmRidWZfc3RhdGUtPmJhc2Up
Ow0KPiAgfQ0KPiANCj4gLXZvaWQgaW50ZWxfZGJ1Zl9tZGNsa19jZGNsa19yYXRpb191cGRhdGUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHU4DQo+IHJhdGlvLCBib29sIGpvaW5lZF9t
YnVzKQ0KPiArdm9pZCBpbnRlbF9kYnVmX21kY2xrX2NkY2xrX3JhdGlvX3VwZGF0ZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gKwkJCQkJIGludCByYXRpbywgYm9vbCBqb2luZWRf
bWJ1cykNCj4gIHsNCj4gIAllbnVtIGRidWZfc2xpY2Ugc2xpY2U7DQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmgNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuaA0KPiBpbmRleCAzMzIzYTFk
OTczZjkuLmVmMWEwMDg0NjZiZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9za2xfd2F0ZXJtYXJrLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfd2F0ZXJtYXJrLmgNCj4gQEAgLTc0LDExICs3NCwxMyBAQCBpbnRlbF9hdG9taWNf
Z2V0X2RidWZfc3RhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUpOw0KPiAg
CXRvX2ludGVsX2RidWZfc3RhdGUoaW50ZWxfYXRvbWljX2dldF9uZXdfZ2xvYmFsX29ial9zdGF0
ZShzdGF0ZSwNCj4gJnRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KS0+ZGlzcGxheS5kYnVmLm9iaikp
DQo+IA0KPiAgaW50IGludGVsX2RidWZfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSk7IC1pbnQNCj4gaW50ZWxfZGJ1Zl9zdGF0ZV9zZXRfbWRjbGtfY2RjbGtfcmF0aW8oc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsIHU4DQo+IHJhdGlvKTsNCj4gK2ludCBpbnRlbF9k
YnVmX3N0YXRlX3NldF9tZGNsa19jZGNsa19yYXRpbyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwNCj4gKwkJCQkJICAgaW50IHJhdGlvKTsNCj4gDQo+ICB2b2lkIGludGVsX2RidWZf
cHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7ICB2b2lk
DQo+IGludGVsX2RidWZfcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUpOyAtdm9pZA0KPiBpbnRlbF9kYnVmX21kY2xrX2NkY2xrX3JhdGlvX3VwZGF0ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTggcmF0aW8sDQo+IGJvb2wgam9pbmVkX21i
dXMpOw0KPiArdm9pZCBpbnRlbF9kYnVmX21kY2xrX2NkY2xrX3JhdGlvX3VwZGF0ZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gKwkJCQkJIGludCByYXRpbywgYm9vbCBqb2luZWRf
bWJ1cyk7DQo+ICB2b2lkIGludGVsX2RidWZfbWJ1c19wcmVfZGRiX3VwZGF0ZShzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7ICB2b2lkDQo+IGludGVsX2RidWZfbWJ1c19wb3N0X2Rk
Yl91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOw0KPiANCj4gLS0NCj4g
Mi40My4yDQoNCg==
