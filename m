Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3wsFKv19TGoGlQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 06:18:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E82B71732A
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 06:18:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Mu2U78kf;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C1E810E423;
	Tue,  7 Jul 2026 04:18:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8731F10E415;
 Tue,  7 Jul 2026 04:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783397882; x=1814933882;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9d30xIwlBKW47tcmCb84qUX3k5xtDF9aEeOpHYvY89E=;
 b=Mu2U78kfiLgyaSMPHC6n63AxPOY/3KWd8eoZ63G6K08Nw3gj5dU0dmDu
 IkoSdZIgb/9yoci2ytuhTIC6Ad9FObhBEvm3Timp7YWEvH5ClUxbQ5gS7
 aOtuBeeYNXSrey8fju5BUuvHLJhFD4L2AJuop7OT0bTCTQDj5Zcgvh+dV
 k7zqeL8xumi4dbCXu8/mmEQ0yQv5wLwS5plRl6nexVCg1uPi011jYlTgD
 KAvax5QtAq3Bx5oXQ1y58LflsPV9I5x3Yn+QvFwBr5CsiE0K5qddWVUqQ
 zGCBRyiKhkJYbRkJufPf+aEvTyrRFyf3BCdApZKfCKAY5Njg7O4cadBLG A==;
X-CSE-ConnectionGUID: gEI/DaXiSA62xH6Ks39y2g==
X-CSE-MsgGUID: lNlJ8uAmRTeaild9bwrpFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="83015361"
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="83015361"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 21:18:01 -0700
X-CSE-ConnectionGUID: 2AuiWOROTGu93/vLix25RA==
X-CSE-MsgGUID: WeU3X/MGQQ2XzgZEIKBPIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="258805122"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 21:18:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 21:18:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 21:18:00 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.43) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 21:18:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ySIaV7m4ySz15I6Jk5dBDH5Q+G0Ko+fkJbf/nkfNjDEL1YHGqK6sTK1wOYT2pFdT/DsxRrBr0acC+pOudD2sTqIPmHy21Ux0jGMT3uJfPS+brdp+WA9fbbtOIP/aOPuAxVPXytWzHh10XzucYcRroZioMeOwg1XREO3+wS5CUlCAkA1ns9ydwEskAJbfGdtHSCyWhEqDgOyZgstr34jaFVvypqZX6FKeU0pf9oMMxrnkro46X0G9DnG64kGjHrMV+QFUrfFW1wSPRAjYeIkCipx1gi+h6OqBXrN11UH6Rlc0RDr6/dP0MXgZZbLVbJn4ut164tGRd5gf6Du9L7tjvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LDcB5XB7BvhxSxnERLWfokZL9M7Qc5emoyUgNFDWcMQ=;
 b=p1m3M8BHA0tclZx5wahQdRzfGLmalW2EBlyzE2bvculEL26xXlAd8MlEjpRuDkVwlwWmcKPYpHrtfZG4WU3Y11jkR/EsPyiEMSYfRoLQvo5AIYjbEJNNAKX3cQpQYmeZ32Y0GLWvCOe2jWy/fPEF+lE89kp+nKr3MXq22zywqahDX3qxn+XQiWRE1Z/vagTBzDiJW8qf5lavFmw2pJ8JkO4pwuI6bqIxnVhoQmTtML1UZnrRkim31QLKZZAcZsATw66HIyUGKIV+4qt9XYXiFHAK6CZgRKk7z2qUnUCrCy8v1m8+IZcMvKmA5ilPobdEH8HevRRPo+hMij2s1Zz9kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by CYYPR11MB8406.namprd11.prod.outlook.com
 (2603:10b6:930:ba::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Tue, 7 Jul 2026
 04:17:52 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.012; Tue, 7 Jul 2026
 04:17:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 04/34] drm/i915/dp_link_caps: Add link configuration
 iterator
Thread-Topic: [PATCH v2 04/34] drm/i915/dp_link_caps: Add link configuration
 iterator
Thread-Index: AQHdCW7qTorUZPZ1hEOHPIasCs1ICbZhfCTw
Date: Tue, 7 Jul 2026 04:17:52 +0000
Message-ID: <DS4PPFE901A304F9468732DCF0C31FBAC19E3F02@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-5-imre.deak@intel.com>
In-Reply-To: <20260701153204.4124150-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|CYYPR11MB8406:EE_
x-ms-office365-filtering-correlation-id: a63fda77-a7b9-471a-40b9-08dedbdeb653
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|18002099003|22082099003|38070700021|11063799006|4143699003|3023799007|56012099006|6133799003;
x-microsoft-antispam-message-info: C0yu0EWCByCB9YA/e6EKwb5jrrzWBGqQidiN7vvhnS9uT5DXbo+7+qScncC7exYjaySPUDOfQnnFHzQDXtdY5n4D9ow9pk6AaymnYwnvRNrtf4oKA9NDJx6peQQNOnsQaIGhWLoie4iCrjCy7ihe3SVmVxaYfNQ93tjslbjsQV4WP63ZEOGGwFEdCNFlKWlo+S/SXFegredYta/iLdZ3bxSKlDw9Nnhl4ZfKIz6Z65ea7Ya+sksa0e09lG7dD6xeWqpEq3OUDlYbTo8I2IYg54rZDPTCsV/2+d6mxqFL6pFDzqcey9nF2fjUwzbN2nrB3R3OkPUewBLcMR7mS3jJjoj26IP8hv/HFX++AtyHMsNlTQNz2fVXrgyW7onS4LMBCPPRXvaCrn3aNlrMSbHrqwsHVykP31WZcAvQb0GSFkQvh5UTNEPccjbN9BZN25L8eUMWWjsT173oCNmJ7HDte/hsBhm7AmgI8WSp8pKFjgR9GaJCQ4tuoVlE4UuMkYRxjJnjcP1UsC51l3Aw/O1bi+HO9t8rVfdwrTdTkHT9iLgESQUvZCI7LepSNSPbIbUb62NXuknLdXPolEKIZ/rKTMyiAUbBh3tSv415OsVhB1+LpME8F4+hhc+KIvpDelfL6RWtJBACQ8sbD489MOL85sM2WRKYz4VONXai/EOJYx4pGZ4r1oHfaySHe6ThJpupdcc+WQq73WB6xfyE91GfzA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(18002099003)(22082099003)(38070700021)(11063799006)(4143699003)(3023799007)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?66sUyTTXxPmvLKbd5F/bgBJ9N9DX0wdKhkFR2uu2fPRNIIHxhyEbe3ifHxGQ?=
 =?us-ascii?Q?8K83cR+RsIjfcu+NosbY82rR+wf07LP77MB1xh8UoNiOftRHCwQd3q8d6YXN?=
 =?us-ascii?Q?18zUUBhgrkpNjmnGOxk4GJq8aDK0jhgPXoh0g2KYizrOK9VRPoMJvm84b7eE?=
 =?us-ascii?Q?fvuDqffaJ7kAtZu+JpjF867AnoDgpPgfhdeFq95l8/LDVqj0RMhFSLejP/B+?=
 =?us-ascii?Q?iS6u7WY/gUIpIxczHriJz+NKtmyNNmrk9CDnfHtnxaizyHJKwWQ97cfxbz3H?=
 =?us-ascii?Q?Upk6A9WPM5VLEmiYnk1CNkI48GF3KRlnSebou/S1ATjoHkebxzJPmJw0E4sT?=
 =?us-ascii?Q?MwMA0Qwym7o1fVlUC7XPTtsy7SsOKOStCmRmO98UcqF+CrxA8YrL5GESJSCa?=
 =?us-ascii?Q?vkQSgzTwh5/6kCke/cdDv8wnk2xabgVRijM2mpIBgTmIRN9FaE1XJBtW4DMD?=
 =?us-ascii?Q?g9HSupYrjZtuwoXMT0ddruaxt/CHgI4dWGO8fzBSSNJK8aWDqeR+iNv3OpmH?=
 =?us-ascii?Q?MQ2wsuVaBPWiYvg9GGEwrgfLybw5202SOjjVui5c3itqC9QHrnScl8mnAPgp?=
 =?us-ascii?Q?IhpVlPoi9NuEpxUJoqmG3A4okkHI4NwnoTrb4MfjqAsJjus9CMRX9MPQiS1M?=
 =?us-ascii?Q?PxzNhqyVItNjxVDRMmx5PuJb1qtZPQBcE/J1cGZ9e+xyuRdaK3X/rHaNDwaJ?=
 =?us-ascii?Q?tYw2gWfF2fcTQC4Njd7/5RlHA61Fh5tWdOUugvYv9l/r+6pl60HFvp+Ryjvi?=
 =?us-ascii?Q?lcfgbUxo+G3e2c91/cVew7OM+7+zYyRVNAea3k/qTTX1AGDts+RTtLTW/mmy?=
 =?us-ascii?Q?+entAkJfELuRPCxuXq5FPVRKHkY4FLYtCLpYdGgmG0vaYlBs0trjbkkokb0N?=
 =?us-ascii?Q?B+y16Fpb8xWea3O8qguRrwoKRJ4dVrKmDqUiGgAVBcbOalHECxL6dWm8MFB7?=
 =?us-ascii?Q?rqMm9VS+eYk3Y4rumsDoc1sdZYWRQ8N1ProSx39CHXCiYPJAsEw/4GyAXcNj?=
 =?us-ascii?Q?Jm5pQTCWd3SZWfZHeYLv5rqXp2OB3Y2AXBZxecn8aMI3HhwZMzOZlWnJljN4?=
 =?us-ascii?Q?JfEMFeC5InzgJWFmVV8eIZzKszQOgjqOMcMbtnRK2tdAWzoEXdK5GW+ncGU4?=
 =?us-ascii?Q?VsoJORuD3yE4+aLINPEO68ZRH0FSTdM6tqL+vn0Ii7Oum9nsTNxzjixbZ053?=
 =?us-ascii?Q?nABI7QXnnFEpe5w/kcOIExyvcx7K9k87CCN7REFmSV5t2oTRk7H8aIfu1GTS?=
 =?us-ascii?Q?1r5lB30Yu35f6dnsIRgQLOZhsClWped5o3LqBFKhElJ12/ugt2CuHEfazJ6g?=
 =?us-ascii?Q?uB4xaMNgIbVFm/LIgbos33werp0EdRfaU9YYUzjkiNmLFsCJv08wn4YuzmaP?=
 =?us-ascii?Q?p8H2y1bOBgFQlfkuPsocVrVSOlkBMgSLY6ncZCzJZzMuvK5H+5TEXI7coy3B?=
 =?us-ascii?Q?NMUTtAZBnxkdHXQsumY6g3NOHNnVmD6IF/O4I8S3RJveCio0LVdw/F4cqjUF?=
 =?us-ascii?Q?0mhyN83yCcT4XguqgUpZ05FsHrdZ4qYLXDB87n8YcwH3VKASZ0WYdCxDBNOT?=
 =?us-ascii?Q?52IHlo9k3ToFMPQV/MNgXpra73R2YVPfeHcG8KWQZRGOHOgKAS3mXLa/HXHo?=
 =?us-ascii?Q?VRjzkf5sSCnVAtAwILfvYVBsJck4HHPrpLr9hKkA+VcO5Uz7CY0F0tvRGyeD?=
 =?us-ascii?Q?hWbJjqdsQG13oKpN8RduWdAvLq+6bPZlbMfLtNxi/KSGL2Wdp/cI5A6Nr7/o?=
 =?us-ascii?Q?D8y10sm1PA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rOMdpoXLcNUMAXta/gUyVYukMmtepWjG3F7+ffDh3KKfNJJO2EMtmSPMcSza7Wx0q5gLNq7lbAcbdsm2fhi2a7QzzDb8/rZH+ISFXWbEg9yIXnsqmJ5yyTbvSPLxINm+oa4cNvXXaMrhEZMIAFGwOzIYwslJyqf/nMKw1fmurssfc6QcFBCGzyGaZfvDpFW/lCrSPUoEJ22QdB7Jy4Cp7PqbEKnsYH7uq0LdU3M3I5v7w9KjCA26dB84S/c+D5nV1cMubMNWLlRl8UlZW58uCbNiNi4xLUpRkipyYLfNS4qNdobVvo0caYFLbDz/Rv9YEpIbxl9SWxD74E9zjnRQKQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a63fda77-a7b9-471a-40b9-08dedbdeb653
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 04:17:52.1053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oX9XoOvcwLvvubvHeYs71njRTuR5nGYpbmxeyHqOpnPVztJBMHHIOlN+WiTO1O/g6aYJkNMYDTzVErnDzIi5yA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8406
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS4PPFE901A304F.namprd11.prod.outlook.com:mid,intel.com:from_mime,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0E82B71732A

> Subject: [PATCH v2 04/34] drm/i915/dp_link_caps: Add link configuration
> iterator
>=20
> Add helpers to iterate over the allowed and optionally filtered set of li=
nk
> configurations in a given order.
>=20
> Taking into account disabled configurations will be added later when addi=
ng
> support for disabling configurations.
>=20
> Use the BW order in descending direction by default.
>=20
> v2:
> - Keep the iteration state in an iteration object. (Jani)
> - Use a filter object instead of exposing configuration indices. (Jani)
> - Move changes adding helpers required to setup the iteration object to
>   this patch.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 213 ++++++++++++++++++
> .../gpu/drm/i915/display/intel_dp_link_caps.h | 106 +++++++++
>  2 files changed, 319 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index fe5a11efbe67b..d46b9d505a847 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -16,6 +16,7 @@
>=20
>  #include "intel_display_core.h"
>  #include "intel_display_types.h"
> +#include "intel_display_utils.h"
>  #include "intel_dp.h"
>  #include "intel_dp_link_caps.h"
>=20
> @@ -146,6 +147,18 @@ struct intel_dp_link_caps {
>  	 */
>  	struct intel_dp_link_config max_limits;  };
> +static_assert(BITS_PER_TYPE(((struct intel_dp_link_caps_filter *)NULL)-
> >config_mask) >=3D
> +	      ARRAY_SIZE(((struct intel_dp_link_caps *)NULL)->configs));
> +
> +static struct intel_dp_link_caps_order bw_desc_config_order(void) {
> +	struct intel_dp_link_caps_order order =3D {
> +		.key =3D INTEL_DP_LINK_CAPS_ORDER_KEY_BW,
> +		.dir =3D INTEL_DP_LINK_CAPS_ORDER_DIR_DESC,
> +	};
> +
> +	return order;
> +}
>=20
>  /* Get length of common rates array potentially limited by max_rate. */ =
 int
> intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps, @@ -
> 252,6 +265,206 @@ to_intel_dp_link_config(struct intel_dp_link_caps
> *link_caps,
>  	config->lane_count =3D intel_dp_link_config_lane_count(lce);
>  }
>=20
> +static int
> +iter_pos_to_idx(struct intel_dp_link_caps *link_caps,
> +		struct intel_dp_link_caps_order config_order,
> +		int iter_pos)
> +{
> +	int config_idx;
> +
> +	if (!in_range(iter_pos, 0, link_caps->num_configs))
> +		return -1;
> +
> +	switch (config_order.dir) {
> +	case INTEL_DP_LINK_CAPS_ORDER_DIR_ASC:
> +		break;
> +	case INTEL_DP_LINK_CAPS_ORDER_DIR_DESC:
> +		iter_pos =3D link_caps->num_configs - 1 - iter_pos;
> +
> +		break;
> +	default:
> +		MISSING_CASE(config_order.dir);
> +
> +		return -1;
> +	}
> +
> +	switch (config_order.key) {
> +	case INTEL_DP_LINK_CAPS_ORDER_KEY_BW:
> +		config_idx =3D iter_pos;
> +
> +		break;
> +	case INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE:
> +		config_idx =3D link_caps->rate_lane_map[iter_pos];
> +
> +		break;
> +	case INTEL_DP_LINK_CAPS_ORDER_KEY_LANE_RATE:
> +		config_idx =3D link_caps->lane_rate_map[iter_pos];
> +
> +		break;
> +	default:
> +		MISSING_CASE(config_order.key);
> +
> +		return -1;
> +	}
> +
> +	return config_idx;
> +}
> +
> +static bool iter_get_next_config(struct intel_dp_link_caps_iter *iter,
> +				 struct intel_dp_link_config *config) {
> +	while (true) {
> +		int config_idx;
> +
> +		iter->pos++;
> +
> +		config_idx =3D iter_pos_to_idx(iter->link_caps, iter->order, iter-
> >pos);
> +		if (config_idx < 0) {
> +			iter->pos =3D -1;
> +			*config =3D INTEL_DP_LINK_CONFIG_NULL;
> +
> +			break;
> +		}
> +
> +		if (!(BIT(config_idx) & iter->filter.config_mask))
> +			continue;
> +
> +		to_intel_dp_link_config(iter->link_caps, config_idx, config);
> +
> +		break;
> +	}
> +
> +	return iter->pos >=3D 0;
> +}
> +
> +static void iter_start(struct intel_dp_link_caps_iter *iter,
> +		       struct intel_dp_link_caps *link_caps,
> +		       struct intel_dp_link_caps_order order,
> +		       struct intel_dp_link_caps_filter filter) {
> +	iter->link_caps =3D link_caps;
> +	iter->pos =3D -1;
> +	iter->order =3D order;
> +	iter->filter =3D filter;
> +
> +	iter->get_next_config =3D iter_get_next_config; }
> +
> +static struct intel_dp_link_caps_filter
> +calc_allowed_config_filter(struct intel_dp_link_caps *link_caps,
> +			   struct intel_dp_link_caps_filter enabled_configs,
> +			   const struct intel_dp_link_config *max_limits,
> +			   const struct intel_dp_link_config *forced_params) {
> +	struct intel_dp_link_caps_filter allowed_configs =3D
> INTEL_DP_LINK_CAPS_FILTER_NONE;
> +	struct intel_dp_link_caps_order order =3D bw_desc_config_order();
> +	struct intel_dp_link_caps_iter iter;
> +	struct intel_dp_link_config config;
> +
> +	iter_start(&iter, link_caps, order, enabled_configs);
> +	for_each_dp_link_config(&iter, &config) {
> +		if (forced_params->rate &&
> +		    forced_params->rate !=3D config.rate)
> +			continue;
> +
> +		if (forced_params->lane_count &&
> +		    forced_params->lane_count !=3D config.lane_count)
> +			continue;
> +
> +		if (config.rate > max_limits->rate)
> +			continue;
> +
> +		if (config.lane_count > max_limits->lane_count)
> +			continue;
> +
> +		allowed_configs.config_mask |=3D BIT(iter_pos_to_idx(link_caps,
> order, iter.pos));
> +	}
> +	intel_dp_link_caps_iter_end(&iter);
> +
> +	return allowed_configs;
> +}
> +
> +/*
> + * get_allowed_config_filter - get filter for the currently allowed
> +configs
> + * @link_caps: link capabilities state
> + *
> + * Return:
> + * Filter of link configurations allowed after applying the current
> + * maximum link limits, and further narrowing them by removing any
> +disabled
> + * configuration and limiting to forced link parameters.
> + *
> + * See also:
> + * - intel_dp_link_caps_get_max_limits()
> + * - intel_dp_link_caps_get_forced_params()
> + */
> +static struct intel_dp_link_caps_filter
> +get_allowed_config_filter(struct intel_dp_link_caps *link_caps) {
> +	struct intel_dp_link_config forced_params;
> +
> +	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
> +
> +	/* TODO: Get filter for enabled configs. */
> +	return calc_allowed_config_filter(link_caps,
> INTEL_DP_LINK_CAPS_FILTER_ALL,
> +					  &link_caps->max_limits,
> &forced_params); }
> +
> +void intel_dp_link_caps_iter_start(struct intel_dp_link_caps_iter *iter,
> +				   struct intel_dp_link_caps *link_caps,
> +				   struct intel_dp_link_caps_order order,
> +				   struct intel_dp_link_caps_filter filter) {
> +	filter.config_mask &=3D
> +get_allowed_config_filter(link_caps).config_mask;
> +
> +	iter_start(iter, link_caps, order, filter); }
> +
> +void intel_dp_link_caps_iter_end(struct intel_dp_link_caps_iter *iter)
> +{
> +	memset(iter, 0, sizeof(*iter));
> +}
> +
> +static int find_config_idx(struct intel_dp_link_caps *link_caps,
> +			   struct intel_dp_link_caps_filter filter,
> +			   const struct intel_dp_link_config *link_config) {
> +	struct intel_dp_link_caps_order order =3D bw_desc_config_order();
> +	struct intel_dp_link_config iter_config;
> +	struct intel_dp_link_caps_iter iter;
> +	int pos =3D -1;
> +
> +	intel_dp_link_caps_iter_start(&iter, link_caps, order, filter);
> +	for_each_dp_link_config(&iter, &iter_config) {
> +		if (iter_config.rate =3D=3D link_config->rate &&
> +		    iter_config.lane_count =3D=3D link_config->lane_count) {
> +			pos =3D iter.pos;
> +
> +			break;
> +		}
> +	}
> +	intel_dp_link_caps_iter_end(&iter);
> +
> +	if (pos < 0)
> +		return pos;
> +
> +	return iter_pos_to_idx(link_caps, order, pos); }
> +
> +bool intel_dp_link_caps_filter_add(struct intel_dp_link_caps *link_caps,
> +				   struct intel_dp_link_caps_filter *filter,
> +				   const struct intel_dp_link_config *config) {
> +	int idx;
> +
> +	idx =3D find_config_idx(link_caps, get_allowed_config_filter(link_caps)=
,
> config);
> +	if (idx < 0)
> +		return false;
> +
> +	filter->config_mask |=3D BIT(idx);
> +
> +	return true;
> +}
> +
>  static void set_max_link_limits_no_update(struct intel_dp_link_caps
> *link_caps,
>  					  const struct intel_dp_link_config
> *max_link_limits)  { diff --git
> a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> index af9028e7cb987..5ea87f112c13a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> @@ -4,6 +4,7 @@
>  #ifndef __INTEL_DP_LINK_CAPS_H__
>  #define __INTEL_DP_LINK_CAPS_H__
>=20
> +#include <linux/bitops.h>
>  #include <linux/types.h>
>=20
>  struct intel_connector;
> @@ -11,6 +12,107 @@ struct intel_dp;
>  struct intel_dp_link_caps;
>  struct intel_dp_link_config;
>=20
> +/**
> + * enum intel_dp_link_caps_order_key - key used to order configurations
> + * @INTEL_DP_LINK_CAPS_ORDER_KEY_BW:
> + *   Order configurations by bandwidth, then by link rate.
> + * @INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE:
> + *   Order configurations by link rate, then by lane count.
> + * @INTEL_DP_LINK_CAPS_ORDER_KEY_LANE_RATE:
> + *   Order configurations by lane count, then by link rate.
> + * @INTEL_DP_LINK_CAPS_ORDER_KEY_NUM:
> + *   Number of ordering keys.
> + *
> + * Selects how a caller wants the configuration table to be ordered,
> + * together with an &enum intel_dp_link_caps_order_direction, for
> + * iteration queries.
> + *
> + * See also:
> + *  - &struct intel_dp_link_caps_order
> + */
> +enum intel_dp_link_caps_order_key {
> +	INTEL_DP_LINK_CAPS_ORDER_KEY_BW,
> +	INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE,
> +	INTEL_DP_LINK_CAPS_ORDER_KEY_LANE_RATE,
> +
> +	INTEL_DP_LINK_CAPS_ORDER_KEY_NUM
> +};
> +
> +/**
> + * enum intel_dp_link_caps_order_direction - iteration direction
> + * @INTEL_DP_LINK_CAPS_ORDER_DIR_ASC:
> + *   Iterate in ascending order according to the selected ordering key.
> + * @INTEL_DP_LINK_CAPS_ORDER_DIR_DESC:
> + *   Iterate in descending order according to the selected ordering key.
> + * @INTEL_DP_LINK_CAPS_ORDER_DIR_NUM:
> + *   Number of ordering directions.
> + *
> + * Selects the direction associated with an
> + * &enum intel_dp_link_caps_order_key for iteration queries.
> + *
> + * See also:
> + *  - &struct intel_dp_link_caps_order
> + */
> +enum intel_dp_link_caps_order_direction {
> +	INTEL_DP_LINK_CAPS_ORDER_DIR_ASC,
> +	INTEL_DP_LINK_CAPS_ORDER_DIR_DESC,
> +
> +	INTEL_DP_LINK_CAPS_ORDER_DIR_NUM
> +};
> +
> +/**
> + * struct intel_dp_link_caps_order - configuration ordering
> + * @key:
> + *   Key used to order configurations.
> + * @dir:
> + *   Direction of the selected ordering.
> + *
> + * Describes an iteration order for link configurations.
> + *
> + * See also:
> + *  - for_each_dp_link_config()
> + */
> +struct intel_dp_link_caps_order {
> +	enum intel_dp_link_caps_order_key key;
> +	enum intel_dp_link_caps_order_direction dir; };
> +
> +struct intel_dp_link_caps_filter {
> +	u32 config_mask;
> +};
> +
> +#define INTEL_DP_LINK_CAPS_FILTER_NONE	\
> +	((struct intel_dp_link_caps_filter){ .config_mask =3D 0 })
> +#define INTEL_DP_LINK_CAPS_FILTER_ALL	\
> +	((struct intel_dp_link_caps_filter){ .config_mask =3D (u32)-1 })
> +
> +struct intel_dp_link_caps_iter {
> +	struct intel_dp_link_caps *link_caps;
> +	int pos;
> +	struct intel_dp_link_caps_order order;
> +	struct intel_dp_link_caps_filter filter;
> +
> +	bool (*get_next_config)(struct intel_dp_link_caps_iter *iter,
> +				struct intel_dp_link_config *config); };
> +
> +/**
> + * for_each_dp_link_config - iterate allowed link configurations
> + * @__iter:
> + *   &struct intel_dp_link_caps_iter being iterated
> + * @__config:
> + *   pointer to &struct intel_dp_link_config filled for each match
> + */
> +#define for_each_dp_link_config(__iter, __config) \
> +	while ((__iter)->get_next_config((__iter), (__config)))
> +
> +void intel_dp_link_caps_iter_start(struct intel_dp_link_caps_iter *iter,
> +				   struct intel_dp_link_caps *link_caps,
> +				   struct intel_dp_link_caps_order order,
> +				   struct intel_dp_link_caps_filter filter);
> +
> +void intel_dp_link_caps_iter_end(struct intel_dp_link_caps_iter *iter);
> +
>  int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
>  				   int max_rate);
>  int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index=
);
> @@ -29,6 +131,10 @@ int intel_dp_link_config_index(struct intel_dp_link_c=
aps
> *link_caps,  void intel_dp_link_config_get(struct intel_dp_link_caps *lin=
k_caps,
>  			      int idx, int *link_rate, int *lane_count);
>=20
> +bool intel_dp_link_caps_filter_add(struct intel_dp_link_caps *link_caps,
> +				   struct intel_dp_link_caps_filter *filter,
> +				   const struct intel_dp_link_config *config);
> +
>  void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_c=
aps,
>  				       struct intel_dp_link_config
> *max_link_limits);  bool intel_dp_link_caps_set_max_limits(struct
> intel_dp_link_caps *link_caps,
> --
> 2.49.1

