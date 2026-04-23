Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENMeEjui6WnafwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 06:38:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2F044CFB2
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 06:38:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 252B210E2F4;
	Thu, 23 Apr 2026 04:38:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FSADG2hk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B487410E2EB;
 Thu, 23 Apr 2026 04:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776919093; x=1808455093;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DJoEhSd5IuB35rDzdgh/wC3QIDliAHW+RoVFRGvaa5U=;
 b=FSADG2hkSp3WEoU4nBtYOEqp7u27OQsJWMS8Nxxwm4EtEfo7IIMH3dLA
 WwHnbqt/ewgH0ewRYxka14EhNuvyo3XqjtXmQJGtoR7LIuvvHH2fyezZA
 vMHUt2FN/u6POiyPdvz64wqalV1RGyPw90bzBdCyHHT8LKRTWlfkKVBOb
 /OuQeGzBzB4IY0+uHhOE41dBMCq2s/ZlAcINYAIibOXnbvFjf7mJfPeS1
 D3E6BUyOdke6iQrOLxzlLPquX85m+/B+VuhEeLh2fyZ2/NyTV+wOcjue+
 vx7HGiA/9yo3PpwKTFayNtgCFaX/MJV8SiH91QN/fH2t9CIlqRsnqa+Sm w==;
X-CSE-ConnectionGUID: OL02DDYRSLS0IJ8Tz1BJdg==
X-CSE-MsgGUID: pWa3tcDeTQeVg/Dhbnn5Zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="89268497"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="89268497"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 21:38:12 -0700
X-CSE-ConnectionGUID: J9t19nEYQxWI2XdGMa66yQ==
X-CSE-MsgGUID: l8W5dK7rR+SIG+oJp4efFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="232448645"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 21:38:12 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 21:38:11 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 22 Apr 2026 21:38:11 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.24) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 21:38:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RmkON8DJZMIgfJM5twfHtuuCOUWtu6iWjAzMOUDN9B+3XPfPQaVyBiFHUq+5JepdC/+cV4zxvn6ubJHaVRc8lJ3nHnJIiW8SpTfVftP9JXc8NwBPwJU+H9KymnI+MoqmA5VRbKVhYtuBOGS+wJtcHNfV47j/zW5t5RYnFHqX3K9TxZRax6KJ13PL6SSDCY6wXTLIPnnnr7KxaT8/mbEdOvyQIBbfAibEZkXPSyamdUzJOMf9MKIjjrKq0nU8PWvA4MRmt6LY3XhPsnHPPRX8jIdnrulCVFRkByuZW/MizVDzXy9u/Q1wp+Gua7VwQYsvH5DocmBLmsGUGNe8HnLXMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PXUAUbcYHCW8NS/f6Lahs6hGeYYVipVtV5zb4KYORAk=;
 b=gMxAZjbkt4NDvZnaofWBy6Gt3nYybL/ekdR23gAbqT1IocEoV5+tXzQp2t9rxV3ykkn+c2wF0jL1PCAlsChfIHWw9VimP2BKYIwWszH5cyl/3QTQNFzrjGbz0gLbHRs11tJHIRNf6DxQzXHWmnJggGPWQx69MmMYKbXuoV3DLKWiQX9ml2gYALbo/9QFwvaoalI4zvF5PjIjcqzmJvX/4+8QFyYmDilBMehjdSO0aWfiXelcd2vxZXoQil+29hwn5NFfK2Dg1OgsgCwFtxS9Yb72G1S5hbbYxdethpxTLAXIguDtQJ52+lrF8Y4G9B6JdDqKXtchM5XcbisYWi+WYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB8042.namprd11.prod.outlook.com (2603:10b6:806:2ed::20)
 by SJ0PR11MB6622.namprd11.prod.outlook.com (2603:10b6:a03:478::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.16; Thu, 23 Apr
 2026 04:38:02 +0000
Received: from SN7PR11MB8042.namprd11.prod.outlook.com
 ([fe80::6f98:55b9:6172:1b0d]) by SN7PR11MB8042.namprd11.prod.outlook.com
 ([fe80::6f98:55b9:6172:1b0d%3]) with mapi id 15.20.9846.016; Thu, 23 Apr 2026
 04:38:01 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "Shankar, Uma" <uma.shankar@intel.com>,
 Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
Thread-Topic: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
Thread-Index: AQHcymygLFle3YrMBUK3c+JVuOmCk7XekaCAgAQ3pTCAAEtSAIAJBZLA
Date: Thu, 23 Apr 2026 04:37:52 +0000
Message-ID: <DS0PR11MB804921B6A3EAD71E0F817B12F92A2@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260412103712.4021213-1-animesh.manna@intel.com>
 <20260412103712.4021213-4-animesh.manna@intel.com>
 <d9c82dabf89fb932b3c10aa0ee768fdda181c396@intel.com>
 <DS0PR11MB804961654148D027B4F03601F9202@DS0PR11MB8049.namprd11.prod.outlook.com>
 <aeIK8oEzWAkDJw5i@intel.com>
In-Reply-To: <aeIK8oEzWAkDJw5i@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB8042:EE_|SJ0PR11MB6622:EE_
x-ms-office365-filtering-correlation-id: fdfd944c-0514-41e8-deb1-08dea0f219c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|38070700021|18002099003|56012099003;
x-microsoft-antispam-message-info: TujotDBJMTSuAIbGyMyrMZcKCcbV3aKLh89NL6UVEHpnP5OW15nppeGBHKJWD1ws0vlCR1yq2HyBbJ9T4vC+rQQM6uCjscq41selLmuKnIgP6VHo5x1SrdUT59yt+xB+s9wpPdTn7WNFqdd1vzNjiQknsSOHiddpDxtCXlg9xtgDs91q2+tWyGBB17G+Qd41DwGcSRYV3W3BjxKxIizlsZRoy8pCQNBf1sZttvan5XH5P2r56Uh8JBgRH1ALA2+zeRvx5W1eNlc/JAEC9xrHsXdtMSiHhpLlbqqxNTg2cjxF/v+clPzxcry82hehIcfy6darLYa4icUl9ANX7uApt6hMhzfcLlZ7TUW7rsIx2CTlX5sSeYMA8j2nTlpkbTzw4/5XtRdZpdtdU2a3tpv3BCdaztlC38kvIA0aQfGfWAtQL8vlgafoDqNSIuA6LLNk5YgShAnyKAg/s2bxKkD0Ex68yZBkvBQcrP+Kp/44kOl9eSjz7w/EagI8pePEDcARjUhhFOl6utEKMY0mFnnEW2mrdRhVmfUdlDnRMsVopd7at/+G6M+JOaHjK3bGkEcfHqlYxRrmKaj89ywbR6V+EKFKbcdVhmW0aYDN7Qr8VAmL51T88SBUoAwz1gW9OLsPFGA4jvtbGofbZjXo13wtvb4ljaaX9s2Q9WoGPnBSb+sQNxjlgGdJ8I9JSoFXyVToHUczt9KJIdLxE43COFFj30TCQggKa/O5zuounYqbU1s8RxVE7rtg3L1yTeiox6FdvwATSw/xifFiNHMhi/bQqBurJH9RebuvMX8BHxAhmOg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8042.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(38070700021)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?mhKiGmeYvyHf1ga6ddtA1ULrbLIRLSte/wq4P5NmMp8ImxgNSWrB3OADap?=
 =?iso-8859-1?Q?XEQEZZsdH53Z278Usn9ydCgWbPux2/N0QiHbVx/RjN1v1jAzjrfAw02ueU?=
 =?iso-8859-1?Q?3I401KpITeUvIFuVqrKY7ITvGKgejjdCK6Ja9T8K649HnfDE6FcJ+uyiY2?=
 =?iso-8859-1?Q?DhDaUg4YOwVV+ODdx/IDvJVBHZ6qNzAJMb8DOQq3d+DQZF3p/iZJfOzEWs?=
 =?iso-8859-1?Q?Bs9wSJ2lZog+QaXrSC8k89YrRWuU0wS6R9gurAwb+tbV0s+nsltdtkYkLj?=
 =?iso-8859-1?Q?i6EfekOkUbQrc9WHUjmfxxUJvW6ZKI8FIVBSfZjRkh4TTo8Y754IMy+VG+?=
 =?iso-8859-1?Q?7oJ3DszR4gC5pF7BduYZLu1L4wEThRPQl9ClSdSTSnFwXyRp/vZDL8b4bE?=
 =?iso-8859-1?Q?2fEA/7nr7uvsWkBeDXW1rfPR6P5j3OIkk0IwMBkAZ6IZoyYnroymDaTwH1?=
 =?iso-8859-1?Q?hDa+R+ofj+XPi3QXbw/eNcuqvpM+0ZMP9vvQH5zyQymPb3C0IPB7GH0cY3?=
 =?iso-8859-1?Q?2ZloSF7gqbQyMrPRtUEj78gJp4Npt40QzkZ0diswTlBr2esIALhfL72fE4?=
 =?iso-8859-1?Q?s4Kbkjp9FX97sOfzs7VCfPbqhf/udwsujLpZBpczE+dTEKf59mK78z3F+g?=
 =?iso-8859-1?Q?i/gT5hhr1kWMUNZVZK311LIelPQydcVDIVChWcJn/p4DL6Jbvf3nNGp3EC?=
 =?iso-8859-1?Q?2DS4CadOyxEwjzSp2Mftk7BM+MxRdLrtAdOI0ohoke6tLfXDGwGyWttrFi?=
 =?iso-8859-1?Q?scw1tlyN7whIROOhF3K+ggMBKvX0sMEOLju2ixOB9GT4wtqdSw39m/VG62?=
 =?iso-8859-1?Q?BJjmX5f8AIOEHpANIiuS8HeW8AZ+jOJspxlGkxEll2SxrvxreFgWqyu52W?=
 =?iso-8859-1?Q?YKro2REVSEhnZjRXkUyZ44Roi/ZJO6Kf9Rjgt0q/CxKiB7q0U0lduq364r?=
 =?iso-8859-1?Q?jX4nRYhRT7Na9btTmXnbC8qvHbJt1eLzXoplVpdcrKukvea45K9WPEfYDx?=
 =?iso-8859-1?Q?wS7admIO3oPkpTqS5MqlRi/6epXQywko3OB5M08lOPS1/1dVWmGsoCDkvP?=
 =?iso-8859-1?Q?fqcVXJMss/jz6Fn3ql5o514OSLWxAI+8b6rXfC0dvGT1YhHQ73D1MOk8Sg?=
 =?iso-8859-1?Q?WwPR4iKASt1V7JmcDDShUOUajL/cHwaxBkkGShGam6VcgGfxNn76mhVGr1?=
 =?iso-8859-1?Q?AkDWFVpMfzZ9DZblbbtP/Nvao8QryGPQ+Ou5CVOJgqC438GWwS8HbRc0df?=
 =?iso-8859-1?Q?2l7CxTOPA6loCzzOrv+kClfWtA3hZZJQIkvTrAc0FKajsreE5vQaXxrIwA?=
 =?iso-8859-1?Q?PPw3YMxQnqKbZF4TeD6s5VGCH6YYWRME4ztGHt8WMzQNaLTe+rrmiIYJO5?=
 =?iso-8859-1?Q?puWhCDI++BrORzi1cSC6gmPj4Fla51mjBYHZCPuqOHz6RYNFN9xY6fwoAS?=
 =?iso-8859-1?Q?J/7kwHgcnE16YiMgC3dLYyO3XIvFQ6K2jYAC+BmYnsZYQvOoYnIn86ds7Y?=
 =?iso-8859-1?Q?xHL2og9CqU5Ir8H+9PUlBO8whNGbTo1/nW9EPWelsZ46JlSr/dYpFYpMrn?=
 =?iso-8859-1?Q?bAuioQkGhaxdBo6hN/m+qJbD70Hi3Ms1g6EdAHuKr/n50rhvQy/TQ2vFY0?=
 =?iso-8859-1?Q?c3swNRDfANG8Yc//PDkFvVt2Jz/C9MJldhTMiIzyKkpE2BSruArzgplxc4?=
 =?iso-8859-1?Q?bN5fCHJRtad0PPEZkH7AvOxZZVWQIDdagQXdqpQ/7ToDGZ19/CLvJJBjod?=
 =?iso-8859-1?Q?tqBs/4EF5tfBSGgy2UGgg9sOP8FtNv59fFi3stibopyByc4Cqmn5sDc6bl?=
 =?iso-8859-1?Q?G0wMkFy/0g=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: aDxoxBGbLPk+GYez3CPxxqcnoq4/5bdhcJgFL2cfuSzAOxta0VZ/wUFIByBQRlUWgiggifCOO1ZBa69DXa7OI3OlOPySNhLkW7LmE/X44a3GXm+kET3nrD2WsQ43YjvycNySgFMlSSAwhnG8yNKWWp9tU+AIvxZ/pOKFROWBPjxdtvHslPi2nPjPLf2u4teuLGKtCf61n+8PPzTFyghlhi3YO27RuONLX9RqBb0ysGgLL3GgwkNtEd15X3ZeTG5+F+QoNhQghAos689MeOrGRXRj8LbVb6aScU3GHzjX31lYpX6h3GQDXBm2ds2yr+mrmh5PJh69xVoDD8xH+VtRHg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8042.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdfd944c-0514-41e8-deb1-08dea0f219c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2026 04:37:52.7897 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T5LisjnnXPdBekGzz7fKQfgwslcp1Z3bi+o459wLecWmhDx3FnGcrR3d+k6IatLoO97Sf/OSRT9d1rlcg5c2cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6622
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0E2F044CFB2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, April 17, 2026 3:57 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Subject: Re: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
>=20
> On Fri, Apr 17, 2026 at 06:03:52AM +0000, Manna, Animesh wrote:
> >
> >
> > > -----Original Message-----
> > > From: Nikula, Jani <jani.nikula@intel.com>
> > > Sent: Tuesday, April 14, 2026 7:03 PM
> > > To: Manna, Animesh <animesh.manna@intel.com>; intel-
> > > gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
> > > Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>; Manna,
> > > Animesh <animesh.manna@intel.com>
> > > Subject: Re: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
> > >
> > > On Sun, 12 Apr 2026, Animesh Manna <animesh.manna@intel.com>
> wrote:
> > > > Timing registers are separate for CMTG, read transcoder register
> > > > and program cmtg transcoder with those values.
> > > >
> > > > v2:
> > > > - Use sw state instead of reading directly from hardware. [Jani]
> > > > - Move set_timing later after encoder enable. [Dibin]
> > > >
> > > > v3:
> > > > - Replace id with trans. [Jani]
> > > > - Program cmtg set_timing() along with primary transcoder timing.
> > > >
> > > > v4:
> > > > - Use _MMIO_TRANS() for cmtg registers instead of direct
> > > > multiplication. [Jani]
> > > >
> > > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_cmtg.c     | 61
> ++++++++++++++++++-
> > > >  drivers/gpu/drm/i915/display/intel_cmtg.h     |  3 +
> > > >  .../gpu/drm/i915/display/intel_cmtg_regs.h    | 31 ++++++++++
> > > >  drivers/gpu/drm/i915/display/intel_display.c  |  4 ++
> > > >  4 files changed, 98 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > index 403f9e10a8dc..a3db1368bd83 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > @@ -4,7 +4,6 @@
> > > >   */
> > > >
> > > >  #include <linux/string_choices.h> -#include <linux/types.h>
> > > >
> > > >  #include <drm/drm_device.h>
> > > >  #include <drm/drm_print.h>
> > > > @@ -222,3 +221,63 @@ void intel_cmtg_set_clk_select(const struct
> > > intel_crtc_state *crtc_state)
> > > >  	if (clk_sel_set)
> > > >  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> > > clk_sel_set);  }
> > > > +
> > > > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > > > +*crtc_state, bool lrr) {
> > > > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > > > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > > > +	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> > > >hw.adjusted_mode;
> > > > +	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start,
> > > > +crtc_vblank_end;
> > > > +
> > > > +	if (!intel_cmtg_is_allowed(crtc_state))
> > > > +		return;
> > > > +
> > > > +	crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
> > > > +
> > > > +	/*
> > > > +	 * For platforms that always use VRR Timing Generator, the
> > > VTOTAL.Vtotal
> > > > +	 * bits are not required. Since the support for these bits is goi=
ng to
> > > > +	 * be deprecated in upcoming platforms, avoid writing these bits
> > > > +for
> > > the
> > > > +	 * platforms that do not use legacy Timing Generator.
> > > > +	 */
> > > > +	crtc_vtotal =3D 1;
> > > > +
> > > > +	/*
> > > > +	 * VBLANK_START not used by hw, just clear it
> > > > +	 * to make it stand out in register dumps.
> > > > +	 */
> > > > +	crtc_vblank_start =3D 1;
> > > > +
> > > > +	crtc_vblank_end =3D adjusted_mode->crtc_vblank_end;
> > > > +
> > > > +	if (lrr) {
> > > > +		intel_de_write(display,
> > > TRANS_VTOTAL_CMTG(cpu_transcoder),
> > > > +			       VACTIVE(crtc_vdisplay - 1) |
> > > > +			       VTOTAL(crtc_vtotal - 1));
> > > > +		intel_de_write(display,
> > > TRANS_VBLANK_CMTG(cpu_transcoder),
> > > > +			       VBLANK_START(crtc_vblank_start - 1) |
> > > > +			       VBLANK_END(crtc_vblank_end - 1));
> > > > +		return;
> > > > +	}
> > > > +
> > > > +	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder),
> > > > +		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
> > > > +		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> > > > +	intel_de_write(display, TRANS_HBLANK_CMTG(cpu_transcoder),
> > > > +		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
> > > > +		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
> > > > +	intel_de_write(display, TRANS_HSYNC_CMTG(cpu_transcoder),
> > > > +		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
> > > > +		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
> > > > +	intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder),
> > > > +		       VACTIVE(crtc_vdisplay - 1) |
> > > > +		       VTOTAL(crtc_vtotal - 1));
> > > > +	intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder),
> > > > +		       VBLANK_START(crtc_vblank_start - 1) |
> > > > +		       VBLANK_END(crtc_vblank_end - 1));
> > > > +	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder),
> > > > +		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> > > > +		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
> > > > +	intel_de_write(display,
> > > TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
> > > > +		       crtc_state->set_context_latency); }
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > index 660ec513626e..53a44f505dd2 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > @@ -6,9 +6,12 @@
> > > >  #ifndef __INTEL_CMTG_H__
> > > >  #define __INTEL_CMTG_H__
> > > >
> > > > +#include <linux/types.h>
> > > > +
> > > >  struct intel_display;
> > > >  struct intel_crtc_state;
> > > >
> > > > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > > > +*crtc_state, bool lrr);
> > > >  void intel_cmtg_set_clk_select(const struct intel_crtc_state
> > > > *crtc_state);  void intel_cmtg_sanitize(struct intel_display
> > > > *display);  bool intel_cmtg_is_allowed(const struct
> > > > intel_crtc_state *crtc_state); diff --git
> > > > a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > index 4a80b88d88fd..f7fc812d8ef0 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > @@ -20,4 +20,35 @@
> > > >  #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
> > > >  #define  CMTG_ENABLE			REG_BIT(31)
> > > >
> > > > +#define _TRANS_HTOTAL_CMTG_A		0x6F000
> > > > +#define _TRANS_HTOTAL_CMTG_B		0x6F100
> > > > +#define TRANS_HTOTAL_CMTG(trans)	_MMIO_TRANS((trans), \
> > > > +						    _TRANS_HTOTAL_CMTG_A,
> > > _TRANS_HTOTAL_CMTG_B)
> > > > +#define _TRANS_HBLANK_CMTG_A		0x6F004
> > > > +#define _TRANS_HBLANK_CMTG_B		0x6F104
> > > > +#define TRANS_HBLANK_CMTG(trans)	_MMIO_TRANS((trans), \
> > > > +						    _TRANS_HBLANK_CMTG_A,
> > > _TRANS_HBLANK_CMTG_B)
> > > > +#define _TRANS_HSYNC_CMTG_A		0x6F008
> > > > +#define _TRANS_HSYNC_CMTG_B		0x6F108
> > > > +#define TRANS_HSYNC_CMTG(trans)
> > > 	_MMIO_TRANS((trans), \
> > > > +						    _TRANS_HSYNC_CMTG_A,
> > > _TRANS_HSYNC_CMTG_B)
> > > > +#define _TRANS_VTOTAL_CMTG_A		0x6F00C
> > > > +#define _TRANS_VTOTAL_CMTG_B		0x6F10C
> > > > +#define TRANS_VTOTAL_CMTG(trans)	_MMIO_TRANS((trans), \
> > > > +						    _TRANS_VTOTAL_CMTG_A,
> > > _TRANS_VTOTAL_CMTG_B)
> > > > +#define _TRANS_VBLANK_CMTG_A		0x6F010
> > > > +#define _TRANS_VBLANK_CMTG_B		0x6F110
> > > > +#define TRANS_VBLANK_CMTG(trans)	_MMIO_TRANS((trans), \
> > > > +						    _TRANS_VBLANK_CMTG_A,
> > > _TRANS_VBLANK_CMTG_B)
> > > > +#define _TRANS_VSYNC_CMTG_A		0x6F014
> > > > +#define _TRANS_VSYNC_CMTG_B		0x6F114
> > > > +#define TRANS_VSYNC_CMTG(trans)
> > > 	_MMIO_TRANS((trans), \
> > > > +						    _TRANS_VSYNC_CMTG_A,
> > > _TRANS_VSYNC_CMTG_B)
> > >
> > > I though there was already feedback that these match the regular
> > > transcoder registers.
> >
> > _TRANS_HTOTAL_A         0x60000
> > _TRANS_HTOTAL_B         0x61000
> >
> > _TRANS_HTOTAL_CMTG_A            0x6F000
> > _TRANS_HTOTAL_CMTG_B            0x6F100
> >
> > I am not clear how to match?
>=20
> #define TRANSCODER_CMTG0_OFFSET 0x6F000
> #define TRANSCODER_CMTG1_OFFSET 0x6F100

Ok, just to double check my understanding, I am putting below all the chang=
es which maybe you are suggesting.=20
Can please confirm or if I am missing something please let me know.

Step1: Define offset macro.
#define TRANSCODER_CMTGA_OFFSET 0x6F000
#define TRANSCODER_CMTGB_OFFSET 0x6F100

Step2: Add trans_cmtg_offset array in intel_display_device_info structure a=
nd initialize.
.trans_cmtg_offsets =3D {                                                  =
    \
                [TRANSCODER_A] =3D TRANSCODER_CMTGA_OFFSET,                =
           \
                [TRANSCODER_B] =3D TRANSCODER_CMTGB_OFFSET,
},

Step3: Define INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET which will use trans_c=
mtg_offset
#define INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET(display, trans) \
        (DISPLAY_INFO((display))->trans_cmtg_offsets[(trans)] - \
         DISPLAY_INFO((display))->trans_cmtg_offsets[TRANSCODER_A] + \
        (DISPLAY_INFO((display))->trans_offsets[(trans)] - \
         DISPLAY_INFO((display))->trans_offsets[TRANSCODER_A] + \
         DISPLAY_MMIO_BASE((display)))

Step4: Define _MMIO_TRANS2_CMTG which will use INTEL_DISPLAY_DEVICE_TRANS_C=
MTG_OFFSET
#define _MMIO_TRANS2_CMTG(display, trans, reg)       _MMIO(INTEL_DISPLAY_DE=
VICE_TRANS_CMTG_OFFSET((display), (trans)) + (reg))

Step5: Define TRANS_HTOTAL_CMTG
#define TRANS_HTOTAL_CMTG(display, trans)	_MMIO_TRANS2_CMTG(display, (trans=
), _TRANS_HTOTAL_A)
#define TRANS_HBLANK_CMTG(display, trans)   _MMIO_TRANS2_CMTG(display, (tra=
ns), _TRANS_HBLANK_A)
...
...

Regards,
Animesh
=20
>=20
> --
> Ville Syrj=E4l=E4
> Intel
