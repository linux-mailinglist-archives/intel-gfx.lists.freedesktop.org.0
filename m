Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nO9xGI38KmrP0gMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:21:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD02674658
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:21:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EzbFVYL+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3693610F073;
	Thu, 11 Jun 2026 18:20:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE5BC10F061;
 Thu, 11 Jun 2026 18:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781202058; x=1812738058;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7GDcH/KdFFg8i++GVsBWikslKwFfLyHEMidt7slZlfk=;
 b=EzbFVYL+qmXYdOu9fGdrYh5BXxFHRBeWMiiYnEEm2S7BEfCl6qCZUrNS
 Y3Ko469bgp3lODtFFuRY7q2ptVDlmmYzMSkRDVu8jUgd5lXvOgEUXouj3
 X5VUzDUoZA5NQRvsdQh8++SuQRkY6tCWko+KZLC+vdErzCFdaUj37sVBj
 zBtZ4UYkN+FtA1R+ZmQtzw0ng+TER7lmU/V0j1Gf4d7mTU3e2DdWbYJxr
 RlHEU//27g5a0i7Belg+XVucJvAf0nyD3HGeBO9RpSZp9My9HXmiyzwLv
 dMLX40IYGN5dhU4TPIONbTaZDHCKpp38ucQmK2Azi6EwsKr0gRSSXpKsG g==;
X-CSE-ConnectionGUID: wqAuGrWcRuia9Xc/4zODyQ==
X-CSE-MsgGUID: iIgz3qpPSdecknq/OHw7Hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81041052"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="81041052"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:20:58 -0700
X-CSE-ConnectionGUID: gsFq3znPT4y1fkuvgZj1/g==
X-CSE-MsgGUID: ro8MYpmeQWSoKFBvS1ygIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="245472192"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:20:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:20:56 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 11:20:56 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.66) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:20:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VCgiNF7+m4YY8RQ2+DTAW2kGDrVeu+KV88voj3YNJoQ8S9DzrpIlFEf9ZuK5boT961wyIdaG1RzoEPgCmtRVZEWCzWQKd1fWq4IUs0VLzIOG+MODSFxI/yqqe8WQa8SbBrTbyosSqtkg0C9FXWAxAsw0t+am6MJqEKaeoxjaNM1ItdftJOUPIXB2aPFoI44RU+XL+lhPKDeCG143WNspe6sGZCKydwi9+xd+rUlj4rC7SHdghYqgS6kRAbBoHkR9RR1j/4D4bFpVP1WV13AQg/ueBlC3tXgAgn8izN14w5yiQZEDsTb7997XoN2ELokHuUlXOu1N0YT+8IIHx9EQGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eL0suhsIBOEaqWpjO8zsC62CuiPNyHzGk1eqiyDKN5w=;
 b=oFWzy5DV+RRrd+GyRf773l3WGkymnpnK1AMnzlHfdpZoIgfZnilOIpZ/JpG+hc7054+XZerf11FsD+m6GYmyBlQyAB4fNlfNkD7OFPO/zmPvnJSuY2lD73sRdy268sDYXOzXJL4Jrd6MmvUD7+FsBj1/YH+08gP1iw+XtI83A22DLPupHpml87ox5Ax2nsgFBh31YNLb7f2LunG8bO/MunF48C4BVqSj7mfPIMNxAyWdZ33cRVriDaLvSpYPW3cTr7Jcbh7147eZJ8dRCAbVBA0NX1uwSwqjVWK8zbxo085xxf4amCOzQrkhCS4kdtKmwKOuP9dAndKZ/DOsNtqapg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW3PR11MB4714.namprd11.prod.outlook.com (2603:10b6:303:5d::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.18; Thu, 11 Jun 2026 18:20:54 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 18:20:54 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 17/20] drm/i915/cmtg: Add CMTG scan line programming
Thread-Topic: [PATCH v8 17/20] drm/i915/cmtg: Add CMTG scan line programming
Thread-Index: AQHc85djDPPtCAFAW0CLE8eKeB3hs7Y5tpTg
Date: Thu, 11 Jun 2026 18:20:54 +0000
Message-ID: <DM4PR11MB636063BD70B40CABCBE6B542F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-18-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-18-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW3PR11MB4714:EE_
x-ms-office365-filtering-correlation-id: a4ff4b03-57a0-4b05-1f96-08dec7e62d13
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|23010399003|366016|38070700021|18002099003|22082099003|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: owpx7V2A6EX4bmUzoeEO/IsmEhooixn7Iw+uQM+QkSq3vgAfdYcBUTOih5ezA4PkpK4G9nBTK1iEBQoxrpSar/GdZOb861OFstPB7TcACrMZXyZYQXDVNX2OvSkAOg4/OXTOZ0g1GQLYX+VfrKKL4v6r/qJB+M3h8K75dSYYM1CrhDZs97aGmPAg1jfpAydGAgP/a6FIEOEDVDSjQ+XSeNdexEiEsY6ambMyavYO2he+pST3FOiSHiEIyzQPHQudu5mTa2z1J1pHcqMzBRCjQTOXcP84YP+OV33rWgZN49u0CRUr7vo+8Im/j+z63KquyFdh9n73V3UvwrnRy1RMzHqyad92HjTEq7qyj6SFQ/6Ei2Yi+OVsOKOT+RSYL5+9RgXhfTQrQcxUd3Zt6Xhj7MIxW1tzoDBZ86JdDvB/BJ7PcMIuIC0tWpYesX1Yb+NID3Nftp3AfmsZVATkmN6b/VQWNV6lzQG8bIW0dpibVm7+8KdQsZLcYjSfxmajZSxskDQwrjJTtWKw2rA6BmsjXAQRC6TAbNVfUZ1EzNTnweQT1/Orkym5Xc0s6yG4grU/P5qJjQ5eaRpPf0WeGNuzXlW/lXhqGQ1LT6WzFQ9xZXx0AcxZVHzCiQ+Hq8Da3yiBuMKENznG5kPoexG1LqFBhAuvEmMksLkYzwjpuPaOb1lFfTA9/5vMByOBNABtpuEWT1t9ET/cBsBnyPNc8poLsC2zTUL/mysK6QceMthkeMsWZmuk9Ui3E4JhtwIn4xtT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(23010399003)(366016)(38070700021)(18002099003)(22082099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GDH3Dtl18ilei0X3TmWpqnY1MGdUTCvIjPU8cvCvIobpYxX1TR+d22MYWtu7?=
 =?us-ascii?Q?JPuWMAzJ+ljZ4Q9EHXlTdwwK1BwtH/qTh8RZXpmlYXuUfuOlf1l86ncO7pTk?=
 =?us-ascii?Q?r3fmEhA7v54sNz6JnD5laB3/OLKPbaF/bwBDsCW3JAITgBFT2Bapkfxduqhs?=
 =?us-ascii?Q?IQcEnMXNplTJWqk96bZvMuzfXYlJ9p/fyHX0v1zSv51G4xbRU25AbGwtPDsU?=
 =?us-ascii?Q?/+SqZctRp9JDriGcXbwfj6nc5mkVQbL+WNvrXulvuibsA1jfhmL1+x4Zq58f?=
 =?us-ascii?Q?i8dZbtcWX7Sb0It+mNybBeQwZGTeWlfrwnoM6ffc4kBx8VLLhg40Awp1bRvP?=
 =?us-ascii?Q?Pcrj/f4umsBCL17DNiQPKndOqTerckE62Z+yPgJve10xtpTUK05oQpmyy7V7?=
 =?us-ascii?Q?SI/5LFGxOzgfSEr8T6vEKnE8FE/e2aIWXeJ/xtyjEhNtJYSY2uDtKgfLqNV5?=
 =?us-ascii?Q?9IKbpmpvWukpD2/2V2rXdAOYWXfFCkZxX5Ws323Sy2svD1a2HFec2wuzKi4J?=
 =?us-ascii?Q?TAKEq4adtqsqL3D+30xBLo8f1FKKrCi9p9fzmAIWysIBSOc70P3ffQjRIqXA?=
 =?us-ascii?Q?NnoHXSGDq9PolpDVoLZ2pRfbtFP2fhsCcpGglHbcC0YeDPhUJI9lNRbZASSX?=
 =?us-ascii?Q?NUTc0oUp8ZflPXVPwEJ8rXPWg9o6rKgCu3OYWWncYeg19vptFdySJu+M47F8?=
 =?us-ascii?Q?pb3OlvPT6KN47HTE8iWL6XXrF8OkJAFJuhV0wl8BWRosgc2LPH8o+a3MSBOs?=
 =?us-ascii?Q?KysLrRu/mCsD85VCGQdNKYzkYoydkOOIM3L+6rvXQyrfVpW7TcOlS3twUYnl?=
 =?us-ascii?Q?F62hC8rgCD6RrKJ/G4sh5CCHdGK98Vqcv5T6d8zWvdKVviOjy5e4IdhuaIvF?=
 =?us-ascii?Q?95rGr7Z3+pBtWdvSBJG7AtlAIYqROxFcYYrDF5Z7C15+S5QSO/YaTBFm74wK?=
 =?us-ascii?Q?N3X7xSdu9pe/O1Zj78Y38mlWDgINjnDIG/iOYMYEzkjFoWHp/QUcJwCD/h3M?=
 =?us-ascii?Q?+TjjTmGPne+DS2o4WUaEIOVVjQsseJSNklZJ/uYUSc+M1Y/B4sTYzCJs2YIM?=
 =?us-ascii?Q?UlbrfszQLcS0kI2QUlFT/sYBU8zR2Vrd5mnYuxwo6a6Ni8s0yFaVTtTvVLyb?=
 =?us-ascii?Q?uIBvLRiO10455shsYEhpCC1a3qNiFpn9iIg5uMt8ISg2LoXvgICGEzYsL9nW?=
 =?us-ascii?Q?iloCoW0xgbDRkZ1ipsKv7RhyQRZgCZ8eTG6m+3lerZrrxgZJlwWPo3nxz6ms?=
 =?us-ascii?Q?abJfAHXjepelI/Miyhm5dUX7Yr67zO1ZamoPLAXNBlLdWWhKJz+3QXv0jyDr?=
 =?us-ascii?Q?v9ptxCcM+mpx4HQciFnGDQ/kT0NPyszXy0oFEi7SnMZW3sozxMnFW1uHZMLZ?=
 =?us-ascii?Q?JCK8DdOG5UPfgeqemK6sYN6a31/rTHypie+uwnGXSn2EBEhKQk8tH2UGkvpy?=
 =?us-ascii?Q?qbLPYBp9CCXwxcbh4V2Enf63MkGcCykatycKyS8CIeLZYESrDu7PbSDOkbyP?=
 =?us-ascii?Q?wgNV6XSrZ/5dc1CxbRrOKYnYtrywxT5GvVZzRx04eD44yWf8KHLrnWQWlKXd?=
 =?us-ascii?Q?uVANFpVnQdKUXVheQab15rTQeisHMHuFAXodR0DbXzRWRE1bdxbTB6I2omDt?=
 =?us-ascii?Q?TaEeqNRwfEfvGLEVAHAgWOWx3RgULEd3+RFMZwaqCnfwmZazBsOOMzoLy7JS?=
 =?us-ascii?Q?zes3eCbgzDrwc6a/cSMvqudYN7t/aAo3FKgq7DWGQgV9BF1k+8gRV0Gq26gC?=
 =?us-ascii?Q?FxjDQcP1sw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FBpe8T0SEY7kKfoIOIZpHHuyU0NdQ4WofVrQe9RILoJr58TKkutHqVg5ws89esC6blxUMziI8lUAe6HoD6z5WUAmZ+q3gKc+8p8OV4OaFY3T5FP/oddS0glftnw3BJiSu0FKrZSqi+O7fa9ZpQbChuDdA3sswXim+2iTDIuIRzVznLJfd5IMmtR72jNecKvSEcO4fMru4w9dUYX23oVBMWHS/nwf8p+UHi2nfdh476dx9dl/QXwoNYX7QbTc7ZId1yOB9/wyXZizoTnh8/GPOXmkhXlVf0s2RoFFZ7M8kMoGZjlh8NdBlh3NygP6m7eYuN/BEVa7F2LPmbkLKkGNsw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4ff4b03-57a0-4b05-1f96-08dec7e62d13
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 18:20:54.5797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uSHXJqcrvggTYnLW861VYTK3GZ7z/x6/I4yqVw4/T51ZDSc9IpEdEzSgmjATJ/mUXZQxu5/RgCCk/y4aq5e5CQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4714
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ABD02674658



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, June 4, 2026 1:24 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v8 17/20] drm/i915/cmtg: Add CMTG scan line programming
>=20
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
>=20
> Enable the hardware based guardband calculations which allows DC3co to re=
main
> enabled when timings are changing from one fixed refresh rate to another =
fixed
> refresh rate.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Bspec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c      | 2 ++
>  drivers/gpu/drm/i915/display/intel_cmtg_regs.h | 6 ++++++
>  2 files changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index cc36784e5253..1d63b612c44b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -188,6 +188,7 @@ void intel_cmtg_disable(const struct intel_crtc_state
> *crtc_state)
>=20
>  	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> cpu_transcoder),
>  		     CMTG_SECONDARY_MODE, 0);
> +	intel_de_rmw(display, CMTG_SCANLINE_GB1(cpu_transcoder),
> +CMTG_HW_GB_ENABLE, 0);
>=20
>  	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder),
> CMTG_ENABLE, 0);
>=20
> @@ -351,6 +352,7 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_st=
ate
> *crtc_state)
>  		return;
>=20
>  	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> cpu_transcoder), 0, CMTG_SECONDARY_MODE);
> +	intel_de_rmw(display, CMTG_SCANLINE_GB1(cpu_transcoder), 0,
> +CMTG_HW_GB_ENABLE);
>  	crtc->cmtg.enabled =3D true;
>  	drm_dbg_kms(display->drm, "CMTG: %s enabled\n",
> transcoder_name(cpu_transcoder));  } diff --git
> a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index a4a2a2fe6b66..18dcb665df04 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -32,4 +32,10 @@
>  #define CMTG_HW_GB_DC5_EXIT_LATENCY_MASK	REG_GENMASK(27, 16)
>  #define CMTG_HW_GB_UP_LW_BG_DIFF_MASK
> 	REG_GENMASK(31, 28)
>=20
> +#define _CMTG_SCANLINE_GB1_A		0x456A0
> +#define _CMTG_SCANLINE_GB1_B		0x456C0
> +#define CMTG_SCANLINE_GB1(trans)	_MMIO_TRANS((trans), \
> +						    _CMTG_SCANLINE_GB1_A,
> _CMTG_SCANLINE_GB1_B)
> +#define  CMTG_HW_GB_ENABLE		REG_BIT(31)
> +
>  #endif /* __INTEL_CMTG_REGS_H__ */
> --
> 2.29.0

