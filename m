Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEqqJDv1C2r0SAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:29:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC99577721
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A1A08945A;
	Tue, 19 May 2026 05:29:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZvbHLmcj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB05410EA4B;
 Tue, 19 May 2026 05:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779168566; x=1810704566;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yZuVte/k+ExXW7Er7RQf1jonGxXzdstehT4iIYMbGLk=;
 b=ZvbHLmcjq4ODyZ5QnB1rAwtmHifvcTgIv9xS6VDa2Z3M0IX4inqqzpXX
 roUy+c2iKDzOqvAt2IXK4ObEbF0OUidBSepOzNpBWCY/rpTdsN5UqDIdw
 VMhHIbVhx86etqF8i5HSXpD0k7oAR745IhxB6amvM032oKC/kkf1DR1cJ
 AHFa0wOUprBmxxt0Fwoq3n+cVqz2AKW1YdGGXxkAzvg8jN2xg+YjeEAIP
 vn5xSuKBsH/ThYKKNiaAQJDCTTegdMCeCIea6k9QvMy6lXxBSX7xHkMt8
 MJFQA+25Kj4llmeyD16RjR6sZe6bJqHJteBEM8/0e2IsGHgLePkQf3EIe w==;
X-CSE-ConnectionGUID: YQ+5yMbhRTyo0/Lpd20CKw==
X-CSE-MsgGUID: zay6l6tPSxazPv8zjGahAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="80156393"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80156393"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:29:26 -0700
X-CSE-ConnectionGUID: qB+kAAsRTjKql5Le7nOs3Q==
X-CSE-MsgGUID: fFQIwM+hQWWm1GqzkXFheg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="236649848"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:29:26 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:29:26 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 22:29:25 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.1) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:29:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iQClvMxdaedSLQxJX8RRAlblspZUQQrS78H8olK3lmMZMwPSfyh/ghvfemrQpFs18d/yUSiOFMH/HdLKqHG647y2oGDAMpNQLA1qJ7ce3xgGaOhlXxHAH7mqnD5VDryiMqlmw3jEdLMXBxfO4Rx1fvi97B3sO9Wmn98V03QEkrZv2l+HsiUoo4sbm8CKa27C5lmFNVvh43y2+QhAjADRIQJWnX1pesZ7txuIK4+lKqrzGp2BukhbXo1SMOa92rH7/1GI8har9jSoBQIa1hu411ojLdX9KHmsqLwRoh1J6cuU2VSbjSKNx0LbiaAVOzb36ZO/FWYMqCdBkb1L2dPamw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yZuVte/k+ExXW7Er7RQf1jonGxXzdstehT4iIYMbGLk=;
 b=FtdI8fSvY/IFQ7oT9RNEnzBGA5nFoBCNFSgpw6KP3vRVb80GV9EXXjn7/x4yzDmeDfoKNNftg+vecoFGk+9Et/O1BYBXGQ8Ccr0O72s8LqsDfD3URIQKTNA9quVXNYrR9poAFvIFbHD9Jv3PNw8CPE1Wq1S6MacJrb59xVAPt263Xl+ekQe9cGdWTl4/44hQx9WhSmUr+7x4HEl69ovC+dFul2VwuIJTPGkBwLSYhPLhUtadRTNJibYognGQu4n7mM/ZmpFmn2GV2x1KbNoNE+ENM8mWlDDJPVbOqyXIsqc/BHM/iNWVvf1D8Nx0/r/ZCGG1qoWLIA2UcuhyAi/aqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS0PR11MB8164.namprd11.prod.outlook.com
 (2603:10b6:8:167::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.22; Tue, 19 May
 2026 05:29:17 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 05:29:17 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 08/31] drm/i915/bios: de/allocate buf_trans for each
 port
Thread-Topic: [PATCH v3 08/31] drm/i915/bios: de/allocate buf_trans for each
 port
Thread-Index: AQHc3cFUUb2S5UgGxU+am5Ph2czoJbYU5SOg
Date: Tue, 19 May 2026 05:29:17 +0000
Message-ID: <DM3PPF208195D8DECB47E1233533CA75E05E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-9-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-9-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS0PR11MB8164:EE_
x-ms-office365-filtering-correlation-id: e14c7fd8-7b9c-4a13-2a38-08deb5679258
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|11063799003|4143699003|3023799003|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: JoOjNovkKYm3j5VUcM5PCp10EENKs601Zq4l4G87c0IisdKdb4oQJhuumOgxkUL6ImWETzkL7Akkwg7fok9v9wlSwwQLfL6ZmJydZ4JcGoLAcYkzsd4ruPsjsltgHH1Wk3Om6xbsJhFWRr+nxguxLHyCjsA/6RN9RKhCPiq+MUnpEYQEN8r9RToZinNe9pw/n4ke61UOp+x0oq4Ad0c3X79wxAO7aXPXCW/tuLEKsg/IUOkKe9THt/3NoxBCI0KX/2JYq13FhLUsEAr4PQozdt/GewA+MoQlbufAujuFgUcfM13XaDz/EDi13jgmoy5NmX+XC6N08+dKvDExBS0GHWuW6O/hG/HAzgKKc7MT4jKcdeDzGvHUXjCxU6VEnS3jJV8wOO+cTf8cjMkf0SgEpGrCljVkqxZMULztQtuQbzEzcHEtwrrsfQp2rPChyM2sKbjLRtv0Kr5qX9oqLxrD3yBH1E5RC3U7uxwAKLOnkJUfYUmWRsYXNLyrBC0BrPbPCJd9y/pYbYmEnS+hHNoqL4TsJztjau9hHd+iguCTBo6BgsP9YCBNYX/9XR44+SkKnGmMSBLHzeF/oFYiXdlD6c2z3Im0WdUHkS1qgarH/bm5pFGi6FHrdwgsjvxBQANbdaOKHjZkJd40l2hNuT4e7fsKWoHIeDZ0RPMIsz22BwbTD0fKy3T+6ylGDuFOnSXtzS6hnJd7Gu4U1zIniuv8xK1eJsSMTY/4sLvDk4tLnskBdvQGf3vWnJ944OiA5kgc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(11063799003)(4143699003)(3023799003)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eG5Rb1Vla2JnNENWR3ZCTVEydW5TSnNBc01OZ0FpTVp3YnBFTmJJSU0zdWVu?=
 =?utf-8?B?WlhOL3ppYndpc0lpUVZFRlpNY04wQlJ4WkpnVy9scS82TzRuVithb3o2bUp2?=
 =?utf-8?B?cXJ6bTZvRTA3bm54Y05SOFVjb3FFTEg5VW0reStFeHdTRWdvWSt0V2prcVdS?=
 =?utf-8?B?NXlHY0hiNnorWkNyN0wxZHdvNlpMQ2drNVNJMGJyVFRMY054NVRCMjlwNW52?=
 =?utf-8?B?SkZBY0pKOFl5WHlld0JkVEJnU2NIQ0NTR01Kd1JYR2pnR2x6U2xnOS9iSU51?=
 =?utf-8?B?UGZMYU1kTGtjMVBjdktQQmlNTndHcWNHYVZodURGNGVaTGJBb1B3REdUUTBK?=
 =?utf-8?B?N0xnd3oyaTRMS0UybWMwM0lhby9lSVQrTlRSY3BTUzlUTkRadEdWRzlyeUp4?=
 =?utf-8?B?Ykk3Y3I5aDRLeWVzNVhBNnF5MU9ONUNwb3Rmb3JmS0phOGdMUWk1OTNJRko4?=
 =?utf-8?B?QkNEZ1EyQVBGUWJMYjF2eWV6Tk8yTE12UThvaXowUkhiZFN4cmlBY21nNkJw?=
 =?utf-8?B?YjEwUzBPb1NVRDhhTHM5TU5udkFFdHdsWTl3OURNNXd0ZXg0MkIrcTdVTVR6?=
 =?utf-8?B?UzN2RmcvVXh5WkFkY0E1NzZrc1crNVMzbFhmNmZLNFU3MW85Nzc4b0RkTjRN?=
 =?utf-8?B?VXZyaStwQ2lLcDF3S3BzSUhJR2E0bTBjZW1kM29tTkNNSWdZaGZvUlljT1p6?=
 =?utf-8?B?ZjhrYy9LcHMyV2hCaUg4MnlXakREMVZOSHU0K0h2Q3oyWXRzRVd6c3IxSXdB?=
 =?utf-8?B?VUhyYXVPT29CMnVlRGhYbHgzRzRrR0hROFJNcFlOV3dMb0U2YWk0c0YySjl6?=
 =?utf-8?B?SFk1S0taUzA2YkNrQTVwalYyUTZqQVFrcDloL29PelBYQU9JVGFJNTJBQ2Vq?=
 =?utf-8?B?Qkp6M3ZBcWM0R0ZIclhocVg0d0Z3eXlVbGtmay91clRPTGR5azV5eWxsOWFq?=
 =?utf-8?B?NlZobHlUMXdLa25tRCtNZjVVRVBSUmp6cUdCaXE5djhMekRnMzg0amh6VmlP?=
 =?utf-8?B?S1ZpRXl6WU9IRTZkREgrblNZV2gwM3ZuTjBDNnNHRXR2LzgxWlFtNS9uM1BE?=
 =?utf-8?B?MDhCZVAvZHR5SmhjNG5jYUxxYkdTOXlXbWhJdUoyRWxIaXAvSXF2WVZIZUtJ?=
 =?utf-8?B?RktoZFR3d3RWQTkrb1AyKytUK2laQTJQTDFkUjc4NUluZUtpNGdFeHpnaEJM?=
 =?utf-8?B?ZTlubWNqRzJhQlBFbXAzZ1lIdGJtd2NLem9DbUNPQ0JHUFh4c2NkTStUYlJu?=
 =?utf-8?B?bmp3TlFjdzVzaWkwZnFTTkkwV3BVUHF0WEFxUDVlQnlPKzNsMkhhY1kwNkgx?=
 =?utf-8?B?OElBZjlhc09Wbjh6dXFTZGNIR2pTbC9MMTV1NkpYT3BDL3ZqZTRPQnpTVzBt?=
 =?utf-8?B?VmpGS3c4RXpRWDJwc1htSEFpc3dBNkkvT1AvKzVTQ2lBMmJHQmlBcFlkZXBV?=
 =?utf-8?B?eVBkYWZacHhLV1AyYzZ2YVVTVmdiTUZ6RncrcEJybWhWUjhKSlVmNjl4Vk1K?=
 =?utf-8?B?dnFDb1hVKzYvdUR6TzVkNnZ5SDdwOEVlOG0vd1dWMC8wcWRWQWk0Nm5FNkxY?=
 =?utf-8?B?NnVxKzd0Qy85NEcxbjlOS09pUWkrc3MxLytXT3NwOXl3ZisrVVU3ZmNsODFS?=
 =?utf-8?B?UGNUZDFXL3NTTE4vdlhTMWRkQkNoTVFxejFINVFmQlM3Rk95S1V1bHVuK1BC?=
 =?utf-8?B?bURJTWlNZHVnbS9Sckx5cktlTEY4RzhlRDhpSnJUL28za1NyaHlDWFJMZzd3?=
 =?utf-8?B?azZHc2tIOVBaVS93WGd6NnRPTzNNRklKd2xwMWd2V29DZjk0QmRSWnZUTGZH?=
 =?utf-8?B?dll6SjV2V0pXeTh1bFRIempWVTgrdy9UVHEySVRUSFJ6bVNzSXdDTk9kVVdR?=
 =?utf-8?B?YmxBenFXNGJSMDJqR21OTGpRQ1NwRkZZM2dKaGlrWlVQekVLaEtUNFZIWUlw?=
 =?utf-8?B?M21ZcnF1Z3IrcTU1ODcyMDI5VW1jZjNZOUlmdWZML1ZUc0ZyWVFPVDhOWmZP?=
 =?utf-8?B?UnBKMW5sMzVLeXRGSjZCV29LTVJxRFc4U05waW9lUGZodzVqdDE1NGhjT2Y4?=
 =?utf-8?B?anF6RzRxY1BXSjV4eDlCdENtVVJCSWVoMzIrRUxDbm9WRlZqZmZzQjNJVElX?=
 =?utf-8?B?SStaTHVCM2dxZk95YjU5cUdvcytLSGlkQ3NRNHdJVE5lbnlwbm9uMDJldERC?=
 =?utf-8?B?VUNQV2s5WXpsSlA4ZlJNNFJDRUNiUWNIMENVSTd3U0d6QWFqQkpIckJFVUVt?=
 =?utf-8?B?WEdaRmxwamRLVkRDNWpoOUZEWHo0eXJZbkl0SFoxL2kxM2g4WHlCTDYvdFpw?=
 =?utf-8?B?VnR6b25pbG0yVEI5c05JRHNBbTFoSXpWOWVjZzBLSmlnRE8veng2QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: tc45T2G5tKE1Zh8AAqAo2KREzQuCf39yQ2ulamoJBAFFYXkXsC3ytiW8g+yTainwOFpRvFhugG2lWODSuGXjmIKmfbQo5QJPc55OCHfaSgFwtDI9sk1ZOjKSU8HoIBeosXhFNuqd53mMp/SO0kohhZARfjPxhRgosmIQByOHEmvvFfYOeKZEb3Uxg05nMSUyiUhUBSNaX+zD84uLGVEB9iayuRjFwq5TflZ1m08AoAGg/pQg+JuzpbbF6mzK1S8MZQlGt0BPEu9ywzAS1S6VCJ7o57kcfOxO63wf9LIpugEv5yj99APnxT7ofr0YS6kRUS4G8mIaY3nPv+nfMgsC1Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e14c7fd8-7b9c-4a13-2a38-08deb5679258
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 05:29:17.4667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: om5qZ5VgpyiQPte1WPPPTOsgT46Zz5n3+tDBL1SuQC4kMkjfJq0vx0miQWOgSebUPw9Cg4sWVghqe7m8KhMrlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8164
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EFC99577721
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDgvMzFdIGRybS9pOTE1L2Jpb3M6IGRlL2FsbG9jYXRlIGJ1
Zl90cmFucyBmb3IgZWFjaCBwb3J0DQo+IA0KPiBBbGxvY2F0ZSBpbnRlbF9kZGlfYnVmX3RyYW5z
IGJ1ZmZlciBwZXIgcG9ydCBpZiByZXF1ZXN0ZWQuIFJlcXVlc3QgaXMNCj4gY29uc2lkZXJlZCBp
bnZhbGlkIGlmIC51c2VfdmJ0X3Zzd2luZyBmaWVsZCBpcyB1bnNldCBhbmQgVkJUIHZlcnNpb24g
aXMgbGVzcyB0aGFuDQoNCkRvIHlvdSBtZWFuIE9SIFZCVCB2ZXJzaW9uIGlzIGxlc3MgdGhhbiAy
MTgNCkFsc28gc2hvdWxkIGJlIHNxdWFzaGVkIHdpdGggNyBhbmQgOQ0KDQpSZWdhcmRzLA0KU3Vy
YWogS2FuZHBhbA0KDQo+IDIxOC4gRG8gbm90IGFsbG9jYXRlIGJ1ZmZlciBpZiBub3QgcmVxdWVz
dGVkIG9yIHJlcXVlc3QgaXMgaW52YWxpZC4NCj4gDQo+IERlYWxsb2NhdGUgYnVmZmVyIGZvciBl
YWNoIHJlcXVlc3RpbmcgcG9ydCBvbiBkcml2ZXIgcmVtb3ZhbC4NCj4gDQo+IHYyLT52Mw0KPiAt
IGNoYW5nZSBremFsbG9jKCkgaW50byBremFsbG9jX29iaigpDQo+IC0gcmVtb3ZlIG51bGwgcG9p
bnRlciBjaGVjayBiZWZvcmUga2ZyZWUoKQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBH
cnplbGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCAxMCArKysrKysrKysrDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggYTNmMDMzNGMzYTU4Mi4uZmE5ZjIxYzVjNjEz
NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4g
QEAgLTI2NTksNyArMjY1OSwxNSBAQCBzdGF0aWMgdm9pZCBzYW5pdGl6ZV9oZG1pX2xldmVsX3No
aWZ0KHN0cnVjdA0KPiBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSwNCj4gDQo+ICBz
dGF0aWMgdm9pZCBvdmVycmlkZV92c3dpbmdfcHJlZW1waChzdHJ1Y3QgaW50ZWxfYmlvc19lbmNv
ZGVyX2RhdGENCj4gKmRldmRhdGEpICB7DQo+ICsJc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMg
KmJ1Zl90cmFuczsNCj4gKw0KPiAgCWRldmRhdGEtPmJ1Zl90cmFucyA9IE5VTEw7DQo+ICsNCj4g
KwlpZiAoZGV2ZGF0YS0+ZGlzcGxheS0+dmJ0LnZlcnNpb24gPCAyMTggfHwgIWRldmRhdGEtDQo+
ID5jaGlsZC51c2VfdmJ0X3Zzd2luZykNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJYnVmX3RyYW5z
ID0ga3phbGxvY19vYmooKmJ1Zl90cmFucyk7DQo+ICsJZGV2ZGF0YS0+YnVmX3RyYW5zID0gYnVm
X3RyYW5zOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBib29sDQo+IEBAIC0zMzk4LDYgKzM0MDYsOCBA
QCB2b2lkIGludGVsX2Jpb3NfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAq
ZGlzcGxheSkNCj4gIAkJCQkgbm9kZSkgew0KPiAgCQlsaXN0X2RlbCgmZGV2ZGF0YS0+bm9kZSk7
DQo+ICAJCWtmcmVlKGRldmRhdGEtPmRzYyk7DQo+ICsJCWtmcmVlKGRldmRhdGEtPmJ1Zl90cmFu
cyk7DQo+ICsNCj4gIAkJa2ZyZWUoZGV2ZGF0YSk7DQo+ICAJfQ0KPiANCj4gLS0NCj4gMi40NS4y
DQoNCg==
