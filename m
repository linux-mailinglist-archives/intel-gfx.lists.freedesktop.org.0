Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B8784F5AD
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 14:17:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CDC410F349;
	Fri,  9 Feb 2024 13:17:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SDIF9Rst";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4429C10F349
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 13:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707484651; x=1739020651;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=goqs675IuJ3uEDUblJQnXJJT4IMspgMoUyEfF/K9HIA=;
 b=SDIF9RstutXOWyWy7XqxZC05p2/bItDYOIoVZGnY+bEUmzFb9MFKfptl
 nUIKHc6DTJSoAUeAWfkvODtYglRagGM/XN+MUQfB65kx+dvC++7wAoc5K
 gzlntmVHs/zJi+bKH5mMpCowv4HAXDj7gUdgrq/+6aliKrK3ZpqQhP4QQ
 0NjShVVROaTmFnrNG6mmLRguDocz9lIUqredW7gesdPkj0JnUIMrf/+HC
 2hh8NGGCOobiTyIYmhud1gARiMxQK9/X7bxdkQ1UwAHB1s1OCV5HLy1m0
 jx91gXHMJWBVRYbpVUy8m4QUjr3cZKcWmf26hc35aA95fIEIZ++So3DAB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="436563546"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; d="scan'208";a="436563546"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 05:17:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; d="scan'208";a="33021254"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Feb 2024 05:17:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 05:17:30 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 05:17:29 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 9 Feb 2024 05:17:29 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 9 Feb 2024 05:17:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UsBQRvPW7SzOrcC+edNL8XtCOfBfeMmlSaXRM+k+n/k1XNqxCz6yj61PUyEtXc+oEgjSvPthwOvGlXzfOYEMy70mgVpeHQeCGSE5ObDlnEJZjAc2m6+KlZheXuoFlpsFjaxmvItWRL0Q7kquV5pUxr5gFP+ot7tI1LdC9r2C3WVALkScPYAiNYxDWcLav9LtdFIuAMYqt8tmFw8HxBPg3+uN+JJsDEFt024LDzkBbhLkQq4MGtTaC9IflcoJeeiXH3F3Wq1bqcAPaFdtCeMwkh6fOzDezZIE9y1Ib1jg032Vsuk4g2sl3nL6o6UmeSWLveHNOTVTeIPaQwpfIFZ0lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=goqs675IuJ3uEDUblJQnXJJT4IMspgMoUyEfF/K9HIA=;
 b=GzXGju6CERCdHuDZzdLsdXobEAfNzNMGpOX6xtjdbocMjBZxR9kVSz1KuSIEdraidjpQVATLmUlKgYPYpCiMyQmwOL9+9e0gn+N+dbcb1W/7PaM8oWFqGUGcUNlbDpLQITmHiEctOjZMXm8SHuzODz9W2CVcLdUXIvTm9IeHpN77Xo/UNmSD//6lQ7pt5jqWfJIPvzpgWoB/Kthz2PfhIhk6L8p4UaQN1GxpDDgacNpwA+VE9sn/nA7CFwT4AFSTS3Q1j0bWGjY/LyMyAtGzFQFePUE9+eMBPS9EHWuFIb0FLJImwRH99gPMTP6J6GxvlIcKady+szBQOKTEiQP0cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by MW4PR11MB6861.namprd11.prod.outlook.com (2603:10b6:303:213::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.38; Fri, 9 Feb
 2024 13:17:27 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d%3]) with mapi id 15.20.7249.038; Fri, 9 Feb 2024
 13:17:27 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/display: Force full modeset for eDP
Thread-Topic: [PATCH 2/2] drm/i915/display: Force full modeset for eDP
Thread-Index: AQHaWMxp9m04XFnFyU2whKA1SeZXRrEBvO2AgAAtrDCAAASrgIAAALqAgAACooCAAAOcUIAABOyAgAAFPWA=
Date: Fri, 9 Feb 2024 13:17:27 +0000
Message-ID: <MW4PR11MB7054F295737733A476901335EF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240206070937.197986-1-mika.kahola@intel.com>
 <20240206070937.197986-3-mika.kahola@intel.com> <87a5oaatws.fsf@intel.com>
 <MW4PR11MB7054254B4B9C319878D99FCBEF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZcYVTcvE4Z3mo88U@intel.com>
 <MW4PR11MB7054E5C5391F47516CA1B31BEF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZcYYHw85Kasgr48A@intel.com>
 <MW4PR11MB70543D7803720609215D5A5AEF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZcYfR4HCUxd_R3fS@intel.com>
In-Reply-To: <ZcYfR4HCUxd_R3fS@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|MW4PR11MB6861:EE_
x-ms-office365-filtering-correlation-id: 04c6bd07-3b65-44ef-64f6-08dc29717632
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kzRi43m6D+795oexPXuxZdgi0+Y8PrxiDeh4pVIOBiW2g99MLq/POyzMn+xIUdXajgj6BurH/2oGU6gX/psSNq7IrNGqvCXvb9VLm0AqE5O0vqRaf6TXgXz9e+OvThlqh402bzroDUNH70h8i1NB4yM90RkYxLS884bRg3cmgvs30PaSyjrfvpdIHc4MXWmKND+LrEdjsGSwLb8tZ4vI+uKjGlhgnxmJuBWjNDbguJFklw0kWjBZHIsxYYbUYZHJ4cdMPUdw1v0Z9xEcjOCjYOD3TJVQfps4ZZtRPgPtsoqNXIoxk/jktZV3syCjwtib1+4dPJw1VPsql3tH1viZy3lmPhuT+hBT4VeuWfaCOi/Jcj0H02XLdFbVz/WPTg7zra6v89dzu7S7orkf6otFxt8y3eSANjvvn0RpZLovFts2xxR1suW/WWLlLWD2n0VKDsJJByteiUqy2uVqk7GU+BVeUzUM/6V9CdPIq8lMUWl15pMgqbFZ0jjHlfr6JsH8K6qBcHCdU3mKq1kRIpUCk1KJ7HIDEeD38JVK1LoP9OiUVh1QQPorw7CIJJpQYi8cLmyue1ToU6NWB0L9lTLRvo7i/XJElgntCO9ypPFrjSFEzm+Mk4RDdeQoglqCW1ac
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(376002)(136003)(346002)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(2906002)(41300700001)(83380400001)(8936002)(4326008)(26005)(38070700009)(52536014)(5660300002)(9686003)(7696005)(6506007)(71200400001)(8676002)(33656002)(478600001)(53546011)(6916009)(54906003)(76116006)(66556008)(66476007)(66446008)(64756008)(66946007)(316002)(86362001)(66574015)(122000001)(82960400001)(38100700002)(55016003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmdBcmhGZkkvaGI2bXovNnVmR0Z6NEZYT0tFRmJSL3ptNkNhbTRwbUFoSllK?=
 =?utf-8?B?L213bzc5N0wyQVV3THMvMThnb1dNR2ZqS250M21PV2M1Vk50Slo2QnFKdGo5?=
 =?utf-8?B?Lzc5UkRlWEtUNjlHd2FzTGtZbDNFdWNBZGFWSWdybFdWMVlQTER1dkw1NFRH?=
 =?utf-8?B?c21uV3dqRk1jbDh2MHBGc0NtQXlKM2duSVdmdlNNNEtOTVBBQmw3YzNNUldi?=
 =?utf-8?B?c0VWeW92MEt4TEsxS21JSElYWEc4MC9PalBQeEVMZXNXd29OYndudDNKczJa?=
 =?utf-8?B?TVNMcEhyUllCU01DQXpwTkt1ZUlEM0Q5RC9qcUY0R3RPNDlrYVBiODNzYzc5?=
 =?utf-8?B?Z09Qa0QvN21XZ0hWbk9xQXlHcUNhR0oyaHAxWmZRSDJCQy94a0lNVitTQUNk?=
 =?utf-8?B?dTc5Y1BhTHVDVTIzQVB3R2U1RUdVYWtXUDMwZkxtMVVDYUszeGJTYkR5cWNp?=
 =?utf-8?B?WWlUR1lOUERaeTl1ZkwxMi93YkdKWUZhYUVUSm02Q3kySTVCbkRIdHh1QzY0?=
 =?utf-8?B?WXRaNWMveVBhOEdIWjEzY2tON1E4NEpxYlZ3Ynk5c1ZUUFd5L1JDak5teDlQ?=
 =?utf-8?B?SEZDRDEzNTQzc0xVcWtJNDVVZWJlYXNhOE81K1dtMW1ZcERLL3RycjlBWmF6?=
 =?utf-8?B?b0N1UlhZYjJGbkdlVWpyOEd6Um1DbnhBdFlRV3pyY2hUK214TjhMT0QxQ1d6?=
 =?utf-8?B?UTgrNHA1UG1Bb0IwNXkybUlqWVBFYnVNa1FoY2FGSG5ROEladEhJZk5TMmNs?=
 =?utf-8?B?RFdsb21TbitiVTI0T1lpNkpCUHIyS3h4aytaSVJTT3NoTHFnd1prMW12OGlo?=
 =?utf-8?B?d0pWN1JFanVzUE93TGc1NVlwck9XMzVCSlRZRE9LWmhZZzE3UGF1N3JoSEFU?=
 =?utf-8?B?THJ6ay83MkZ2dTV6bC93cUp6NUlqL0lGallleTVLaHFjZDB6aHFtWHpqVW5v?=
 =?utf-8?B?b2JGbUtoOVZSbGU2VUNTUGFCTEE3c1FoWnJkZ3c0d2lVbnJMVWord2hKek1O?=
 =?utf-8?B?bXBHbFdCdnVqWDFVaTJkblhaK04zb2JXMEJYeHdIT0VEcnN2N0lKK3F6b244?=
 =?utf-8?B?LzNXbk9wYzlVWUhBNkJUVUtheHg5YjJIRWNWbGN5ejdrTzFuQisyN0k2MnRv?=
 =?utf-8?B?SXl2Z1QvdGVmbjdiZjRXbms1dU5hVUFrbC9PZWJOVngyMWJXU0VCcXROaVEv?=
 =?utf-8?B?K1g0dUQ1K2pkTWN4ZFpTRFFxdDhTSk9vcHY5bHVweUlBWjN2ZlRoRFhXdWxD?=
 =?utf-8?B?WU1GTHBrbTlFcUZPYWtVTFV3cjUra2RaNkdkQ3YwYWQ5OEM5ZkJLeWxXa3E0?=
 =?utf-8?B?UG1ENFVQOHNwSUFNZ3YvY3ROZmd5VEswQmlxTG9oTWJUZjVUL0paNThDUXhl?=
 =?utf-8?B?bmMzRXVaZjhWVGp0NkprWUN3bTJsdWpBUlFOMXJhKytJa3NZTUcxaTBHSG81?=
 =?utf-8?B?bzdnYnFuYUFFeitFQldzNzNjSFFYcTRlRmJVbkZmS25KVTdjSTZHTTYwdXRr?=
 =?utf-8?B?ZGh2bWlhSEdTUnZBVkR2cHlBazBFTjBtaGxzT28yMzJVcW1TRTZNWS9lcGQz?=
 =?utf-8?B?VERvUVpGMjJtMW5VTWo4Z0ZYaVlpRWhwWTNadDduZTJuZkhaWUxZK2Uzby9O?=
 =?utf-8?B?MUxPNENyNHgvUGdvVWwwQkUwQU82STFnU0RrMmVjTmdDL041KzBNS1Ard2FR?=
 =?utf-8?B?WXlBdlkraGRrSEREYWQ5b1Z2VmFVNm9QOVQrOE9Hb3F4SFpiNXR5aDhsMDJv?=
 =?utf-8?B?OU9hdW1hUHFtdHBuMjJMWEFabjI4SysxUng2RThnd1Jla2NnbG1Rd3hYdWZm?=
 =?utf-8?B?V1JXYjdGem5zQlFkREVkcjhCTGY1STF4ZnhqYVZoUEZ1QVJLS3U0cFZVUVZa?=
 =?utf-8?B?bzh1YlFPTEh5Z2p3Q2tMc205OVRvQm4zRmZhbVJ1cVpnSUMrMzMxc2lmSmxN?=
 =?utf-8?B?ZXpMSkNlSng0L3owTGxNMzZMMWhnVUdVb0p4TTFkVExKYXNHOUZJOUdUUFZt?=
 =?utf-8?B?ZWJwUWxtU1VkVHVIN1crOGZOYVVwd1I0M000azc4NWFnaDRnOGNkb2N5cnh2?=
 =?utf-8?B?ckhiNEMxUXVUVWRieEl4M0pvU2VrZjZFR2hIRWlNb1pKWG9pM29CRnVMYUd6?=
 =?utf-8?Q?sia6Ebi9fVZ7C6Q/BKQJr1wmD?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04c6bd07-3b65-44ef-64f6-08dc29717632
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2024 13:17:27.0317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sd/EHRCYCGin3tpxUv1aeHecHc3kUZQJSsqEBcVTQ28gWHzSkCCTVI9WggeXIJVJ80hzIwkbUQzUXbTu5g6NGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6861
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIEZlYnJ1YXJ5IDks
IDIwMjQgMjo0OSBQTQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
DQo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPjsgaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDIvMl0gZHJt
L2k5MTUvZGlzcGxheTogRm9yY2UgZnVsbCBtb2Rlc2V0IGZvciBlRFANCj4gDQo+IE9uIEZyaSwg
RmViIDA5LCAyMDI0IGF0IDEyOjMzOjIwUE0gKzAwMDAsIEthaG9sYSwgTWlrYSB3cm90ZToNCj4g
PiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gU2VudDogRnJpZGF5LCBG
ZWJydWFyeSA5LCAyMDI0IDI6MTkgUE0NCj4gPiA+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT4NCj4gPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXgu
aW50ZWwuY29tPjsNCj4gPiA+IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMi8yXSBkcm0vaTkxNS9kaXNwbGF5OiBGb3JjZSBmdWxsIG1v
ZGVzZXQgZm9yDQo+ID4gPiBlRFANCj4gPiA+DQo+ID4gPiBPbiBGcmksIEZlYiAwOSwgMjAyNCBh
dCAxMjoxMzowMlBNICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+ID4gPiA+ID4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gPiA+IFNlbnQ6IEZyaWRheSwgRmVi
cnVhcnkgOSwgMjAyNCAyOjA3IFBNDQo+ID4gPiA+ID4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5r
YWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
bGludXguaW50ZWwuY29tPjsNCj4gPiA+ID4gPiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnDQo+ID4gPiA+ID4gU3ViamVjdDogUmU6IFtQQVRDSCAyLzJdIGRybS9pOTE1L2Rpc3BsYXk6
IEZvcmNlIGZ1bGwgbW9kZXNldA0KPiA+ID4gPiA+IGZvciBlRFANCj4gPiA+ID4gPg0KPiA+ID4g
PiA+IE9uIEZyaSwgRmViIDA5LCAyMDI0IGF0IDExOjU1OjU4QU0gKzAwMDAsIEthaG9sYSwgTWlr
YSB3cm90ZToNCj4gPiA+ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+
ID4gPiA+ID4gRnJvbTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gPiA+ID4gPiA+ID4gU2VudDogRnJpZGF5LCBGZWJydWFyeSA5LCAyMDI0IDExOjA2IEFNDQo+
ID4gPiA+ID4gPiA+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47DQo+
ID4gPiA+ID4gPiA+IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+ID4gPiA+
ID4gQ2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gPiA+ID4g
PiBTdWJqZWN0OiBSZTogW1BBVENIIDIvMl0gZHJtL2k5MTUvZGlzcGxheTogRm9yY2UgZnVsbA0K
PiA+ID4gPiA+ID4gPiBtb2Rlc2V0IGZvciBlRFANCj4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+
ID4gT24gVHVlLCAwNiBGZWIgMjAyNCwgTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNv
bT4gd3JvdGU6DQo+ID4gPiA+ID4gPiA+ID4gRm9yY2UgZnVsbCBtb2Rlc2V0IGZvciBlRFAgd2hl
biBib290aW5nIHVwLiBHT1AgcHJvZ3JhbXMNCj4gPiA+ID4gPiA+ID4gPiBQTEwgcGFyYW1ldGVy
cyBhbmQgaGVuY2UsIHdlIHdvdWxkIGJlIGFibGUgdG8gdXNlIGZhc3RzZXQgZm9yIGVEUC4NCj4g
PiA+ID4gPiA+ID4gPiBIb3dldmVyLCB3aXRoIGZhc3RzZXQgd2UgYXJlIG5vdCBzZXR0aW5nIFBM
TCB2YWx1ZXMgZnJvbQ0KPiA+ID4gPiA+ID4gPiA+IHRoZSBkcml2ZXIgYW5kIHJlbHkgdGhhdCBH
T1AgYW5kIGRyaXZlciBQTEwgdmFsdWVzIG1hdGNoLg0KPiA+ID4gPiA+ID4gPiA+IFdlIGhhdmUg
ZGlzY292ZXJlZCB0aGF0IHdpdGggc29tZSBvZiB0aGUgcGFuZWxzIHRoaXMgaXMNCj4gPiA+ID4g
PiA+ID4gPiBub3QgdHJ1ZSBhbmQgaGVuY2Ugd2Ugd291bGQgbmVlZCB0byBwcm9ncmFtIFBMTCB2
YWx1ZXMgYnkNCj4gPiA+ID4gPiA+ID4gPiB0aGUgZHJpdmVyLiBUaGUgcGF0Y2ggc3VnZ2VzdHMg
YSB3b3JrYXJvdW5kIGFzIGVuYWJsaW5nDQo+ID4gPiA+ID4gPiA+ID4gZnVsbCBtb2Rlc2V0IHdo
ZW4gYm9vdGluZyB1cC4gVGhpcyB3YXkgd2UgZm9yY2UgdGhlIGRyaXZlciB0byB3cml0ZSB0aGUg
UExMIHZhbHVlcyB0byB0aGUgaHcuDQo+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+IE5vLiBX
ZSB3YW50IHRvIGF2b2lkIGZ1bGwgbW9kZXNldHMgaWYgcG9zc2libGUsIGJvdGggaW4gZ2VuZXJh
bCBhbmQgYXQgcHJvYmUuDQo+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+IEFuZCB3aGVuIHdl
IGRvIGVuZCB1cCB3aXRoIG1vZGVzZXRzLCB0aGUgZGVjaXNpb24gbmVlZHMgdG8NCj4gPiA+ID4g
PiA+ID4gYmUgYmFzZWQgb24gY2hhbmdlcyBpbiB0aGUgc3RhdGUgdGhhdCB3ZSBjYW4ndCB3cml0
ZSB0byB0aGUgaGFyZHdhcmUgd2l0aG91dCBhIG1vZGVzZXQuDQo+ID4gPiA+ID4gPiA+DQo+ID4g
PiA+ID4gPiA+IFdlIGNhbid0IHVuY29uZGl0aW9uYWxseSBmb3JjZSBhIG1vZGVzZXQgb24gZURQ
IHBhbmVscyBhdCBwcm9iZS4NCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBUaGFua3MhIEp1c3Qg
d29uZGVyaW5nIHdoYXQgdGhlIG9wdGlvbnMgaGVyZSBtaWdodCBiZT8gV2l0aA0KPiA+ID4gPiA+
ID4gZmFzdGVzdCB3ZSBlbmQgdXAgaGF2aW5nIGEgbWlzbWF0Y2ggd2l0aCBvbmUgUExMIHZhbHVl
IHdpdGggYQ0KPiA+ID4gPiA+IGZldyBwYW5lbHMuDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBZb3Ug
c2VlbSB0byBiZSBzdHVjayBpbiBzb21lIGluZmluaXRlIGxvb3AuIElmIHlvdXIgUExMDQo+ID4g
PiA+ID4gcGFyYW1ldGVycyBhcmUgbWlzbWF0Y2hpbmcgdGhhdCBzaG91bGQgcHJldmVudCB0aGUg
ZmFzdHNldCwgYnV0DQo+ID4gPiA+ID4gdGhlbiBJIGd1ZXNzIHlvdSBhZGRlZCBzb21lIGhhY2sg
dG8gYWxsb3cgdGhlIGZhc3RzZXQgZGVzcGl0ZQ0KPiA+ID4gPiA+IHRoZSBtaXNtYXRjaCwgYW5k
IG5vdyB5b3UncmUgdHJ5aW5nIHRvIHVuZG8gdGhhdCBoYWNrIGJ5IGJsaW5kbHkNCj4gPiA+ID4g
PiBmb3JjaW5nIGENCj4gPiA+IGZ1bGwgbW9kZXNldD8NCj4gPiA+ID4NCj4gPiA+ID4gVGhhdCdz
IHJpZ2h0LCBJIGZvdW5kIG15c2VsZiB0byBiZSBiZXR3ZWVuIGEgcm9jayBhbmQgYSBoYXJkIHBs
YWNlLiBJIGRpZCBkaXNjYXJkIHRoZSBmYXN0ZXN0IGJ1dCBmb3VuZCBvdXQgdGhhdCB3ZSBjYW5u
b3QgZG8NCj4gdGhhdC4NCj4gPiA+DQo+ID4gPiBJZiB5b3UgZGlzY2FyZGVkIGl0IHRoZW4gd2h5
IGFyZSB5b3Ugbm90IGFscmVhZHkgZ2V0dGluZyB0aGUgZnVsbCBtb2Rlc2V0IHlvdSB3YW50Pw0K
PiA+ID4NCj4gPiBQb29yIGNob2ljZSBvZiB3b3JkcywgSSBndWVzcy4gV2hhdCBJIG1lYW50IHRo
YXQgSSBkaXNjYXJkZWQgdGhlIHN0YXRlIHZlcmlmaWNhdGlvbiBpbiBjYXNlIG9mIGZhc3Rlc3Qu
IFRoaXMgd2F5IHRoZSBtaXNtYXRjaCBpcw0KPiBoaWRkZW4gdW5kZXIgdGhlIGNhcnBldC4NCj4g
DQo+IFJpZ2h0LiBTbyBqdXN0IGFkZCB0aGUgc3RhdGUgdmVyaWZpY2F0aW9uIGJhY2sgYW5kIGl0
J2xsIGp1c3Qgd29yayAodG0pLg0KDQpJIHdpc2ggaXQgd291bGQgYmUgdGhhdCBzaW1wbGUuIFdp
dGggZmFzdGVzdCBpdCBzZWVtcyB0aGF0IHdlIGFyZSBub3QgcHJvZ3JhbW1pbmcgUExMIHZhbHVl
cyBidXQgaW5zdGVhZCByZWx5IHRoZSBvbmVzIEdPUCBwcm9ncmFtcy4gV2hlbiByZWFkaW5nIG91
dCB0aGVzZSB2YWx1ZXMgZnJvbSBIVyB0aGVyZSBpcyB0aGlzIG9uZSB2YWx1ZSB0aGF0IGRpZmZl
cnMgZnJvbSB0aGUgU1cgc3RhdGUgZGVmaW5lZCBieSBvdXIgZHJpdmVyLiBJIHdhcyB0aGlua2lu
ZyBhYm91dCB0aGF0IHdlIHNob3VsZCByZWFkIHRoZSBzdGF0ZSBmcm9tIEhXIGFuZCB1cGRhdGUg
b3VyIFNXIHN0YXRlIGJhc2VkIG9uIHRoYXQgYnV0IHRoZW4gd2Ugd291bGQgZW5kIHVwIGNvbXBh
cmluZyBIVyBzdGF0ZSB0byBIVyBzdGF0ZSwgd2hpY2ggdG8gbWUgaXMgbm90IHdoYXQgc3RhdGUg
dmVyaWZpY2F0aW9uIGlzIGFsbCBhYm91dC4NCg0KPiANCj4gPg0KPiA+DQo+ID4gPiA+IEhlcmUs
IGFub3RoZXIgaGFjayBpcyBpbnRyb2R1Y2VkIHRvIGZvcmNlIHRoZSBmdWxsIG1vZGVzZXQgdG8N
Cj4gPiA+ID4gZW5zdXJlIHRoYXQgdGhlIGRyaXZlciBwcm9ncmFtcyB0aGVzZSBQTEwgdmFsdWVz
LiBBcyBKYW5pIGFscmVhZHkNCj4gPiA+IG1lbnRpb25lZCwgIHRoaXMgaXMgYSBubyBnbyBvcHRp
b24gYXMgd2VsbC4NCj4gPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+
IFNob3VsZCB3ZSB0cnkgaWRlbnRpZnkgdGhlIHBhbmVscyBhbmQgc2V0dXAgc29tZSBzb3J0IG9m
DQo+ID4gPiA+ID4gPiBxdWlya3MgZm9yIHRoZXNlIHByb2JsZW1hdGljIHBhbmVscyBvciB3aGF0
IHdvdWxkIGJlIHRoZSBiZXN0DQo+ID4gPiBzb2x1dGlvbj8NCj4gPiA+ID4gPiA+DQo+ID4gPiA+
ID4gPiAtTWlrYS0NCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+DQo+
ID4gPiA+ID4gPiA+IEJSLA0KPiA+ID4gPiA+ID4gPiBKYW5pLg0KPiA+ID4gPiA+ID4gPg0KPiA+
ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEg
PG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiA+ID4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiA+
ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTMNCj4gPiA+
ID4gPiA+ID4gPiArKysrKysrKysrKysrDQo+ID4gPiA+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAxMyBpbnNlcnRpb25zKCspDQo+ID4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiA+
ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+
ID4gPiA+ID4gPiBpbmRleCBhYjQxNWY0MTkyNGQuLjk2OTlkZWQxZWI1ZiAxMDA2NDQNCj4gPiA+
ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMN
Cj4gPiA+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMNCj4gPiA+ID4gPiA+ID4gPiBAQCAtMzMxOSw2ICszMzE5LDcgQEAgYm9vbCBpbnRlbF9k
cF9pbml0aWFsX2Zhc3RzZXRfY2hlY2soc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+
ID4gPiA+ID4gPiA+ID4gIAkgKiBvZiBjcnRjX3N0YXRlLT5kc2MsIHdlIGhhdmUgbm8gd2F5IHRv
IGVuc3VyZSByZWxpYWJsZSBmYXN0c2V0Lg0KPiA+ID4gPiA+ID4gPiA+ICAJICogUmVtb3ZlIG9u
Y2Ugd2UgaGF2ZSByZWFkb3V0IGZvciBEU0MuDQo+ID4gPiA+ID4gPiA+ID4gIAkgKi8NCj4gPiA+
ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiA+ID4gIAlpZiAoY3J0Y19zdGF0ZS0+ZHNjLmNvbXBy
ZXNzaW9uX2VuYWJsZSkgew0KPiA+ID4gPiA+ID4gPiA+ICAJCWRybV9kYmdfa21zKCZpOTE1LT5k
cm0sICJbRU5DT0RFUjolZDolc10gRm9yY2luZyBmdWxsIG1vZGVzZXQgZHVlIHRvIERTQyBiZWlu
ZyBlbmFibGVkXG4iLA0KPiA+ID4gPiA+ID4gPiA+ICAJCQkgICAgZW5jb2Rlci0+YmFzZS5iYXNl
LmlkLCBlbmNvZGVyLT5iYXNlLm5hbWUpOyBAQA0KPiA+ID4gPiA+ID4gPiA+IC0zMzI2LDYNCj4g
PiA+ID4gPiA+ID4gPiArMzMyNywxOCBAQCBib29sIGludGVsX2RwX2luaXRpYWxfZmFzdHNldF9j
aGVjayhzdHJ1Y3QNCj4gPiA+ID4gPiA+ID4gPiAraW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4g
PiA+ID4gPiA+ID4gPiAgCQlmYXN0c2V0ID0gZmFsc2U7DQo+ID4gPiA+ID4gPiA+ID4gIAl9DQo+
ID4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gPiArCS8qDQo+ID4gPiA+ID4gPiA+ID4gKwkg
KiBGSVhNRSBoYWNrIHRvIGZvcmNlIGZ1bGwgbW9kZXNldCBmb3IgZURQIGFzIG5vdCBhbHdheXMg
QklPUyB3cml0dGVuIFBMTA0KPiA+ID4gPiA+ID4gPiA+ICsJICogdmFsdWVzIGRvZXMgbm90IG1h
dGNoIHdpdGggdGhlIG9uZXMgZGVmaW5lZCBpbiB0aGUgZHJpdmVyIGNvZGUNCj4gPiA+ID4gPiA+
ID4gPiArCSAqLw0KPiA+ID4gPiA+ID4gPiA+ICsJaWYgKCFjcnRjX3N0YXRlLT51YXBpLm1vZGVf
Y2hhbmdlZCAmJg0KPiA+ID4gPiA+ID4gPiA+ICsJICAgIGludGVsX2RwX2lzX2VkcChpbnRlbF9k
cCkpIHsNCj4gPiA+ID4gPiA+ID4gPiArCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiRm9yY2lu
ZyBmdWxsIG1vZGVzZXQgZm9yIGVEUFxuIik7DQo+ID4gPiA+ID4gPiA+ID4gKwkJY3J0Y19zdGF0
ZS0+dWFwaS5tb2RlX2NoYW5nZWQgPSB0cnVlOw0KPiA+ID4gPiA+ID4gPiA+ICsJCWZhc3RzZXQg
PSBmYWxzZTsNCj4gPiA+ID4gPiA+ID4gPiArCX0NCj4gPiA+ID4gPiA+ID4gPiArDQo+ID4gPiA+
ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gPiA+ICAJcmV0dXJuIGZhc3RzZXQ7DQo+ID4gPiA+ID4g
PiA+ID4gIH0NCj4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gLS0NCj4gPiA+ID4gPiA+ID4g
SmFuaSBOaWt1bGEsIEludGVsDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiAtLQ0KPiA+ID4gPiA+IFZp
bGxlIFN5cmrDpGzDpA0KPiA+ID4gPiA+IEludGVsDQo+ID4gPg0KPiA+ID4gLS0NCj4gPiA+IFZp
bGxlIFN5cmrDpGzDpA0KPiA+ID4gSW50ZWwNCj4gDQo+IC0tDQo+IFZpbGxlIFN5cmrDpGzDpA0K
PiBJbnRlbA0K
