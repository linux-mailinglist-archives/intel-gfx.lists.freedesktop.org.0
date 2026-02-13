Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MzsHEXejmlSFgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:18:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8D8133E52
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:18:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACEED10E2E6;
	Fri, 13 Feb 2026 08:18:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="alpVy7Jp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECD2E10E2E6;
 Fri, 13 Feb 2026 08:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770970689; x=1802506689;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rwb2B4rtyIQC1XJYcidTtQUtvQ/nlPGRyR7j/gXuSJY=;
 b=alpVy7JpdjfyA9cN5z2Ry6ss7CDvh+GQff+F4vNXQjGj2DHN9Uf2uFpt
 5XP0tzHMVtlxB5HpCs9NOAK6VOv7HW7O/4i6qFKFoZdaZtwsU/rHf0JXQ
 HwAiC30+Gm2nfHYXiQKY9Fdz6AjWciD4tEgsVN1iXSV66xiv6ffDcjMhA
 5PQu2KJ2tWyLboPWZ4WGvZCDKkdHNISwGcVctGv8RFdxJZKb/p7up+ukf
 RS/4U5y/TxlV5aHEnUZHItBwlWDVQADhsLdipfJPDvaS8P2qk+wqcRBqo
 VKi2BS3O5++GP+Kh/2040ifzzlwPf9cK97KNYI+HkJ5tq9q0T846k6fVB w==;
X-CSE-ConnectionGUID: aq/l/aIFQpy4adzpu4L4tg==
X-CSE-MsgGUID: pWdDVC++SzaEnruc5dqSRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72140317"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72140317"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:18:09 -0800
X-CSE-ConnectionGUID: uB7lbW4ESrS1SedNorSIDQ==
X-CSE-MsgGUID: S6V7h8MrR8+div+/ycTtsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="217330724"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:18:08 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:18:07 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 00:18:07 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:18:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d3ZgTPJwNzqBuZfijijwfw/g1XHLPYw5C4ehLJ52TgsEKbTqvtJuErrYiY8OlYt6hKgsSIazierJ0VXJrZFnt9z23F7kgkBSi7KDQKNfuR6lMWxAgfr4InY/wMvI7RURuWN82+HLKtD1hUrtHfYCGoxcg9Gr3UaAtNp2MTgwg8naQES2psl/rVYLSgqFjOaUzOwfo/OJn9PN7DZN4iT+QP87FI5w/vqVGgN1Yq20kPnW8Z3RX9dzZ1mCy0KojBmT2wHIOQOepWKqX3Nht+v+7wHV42JmlurkSTaWbxxidft+GEPJo7OgR797MhY09Yqk0FF2ExsyhPYZUwprzzYDyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S196pztLhKJersnZ+mrkKY+P3ffiaJPW55c27p5WgfI=;
 b=x24xXXf5X2rnuoFJfZ/ZjbGDOR/p39Ouu1Aw7JB+4eIxtZRfzvlVEsuq+dcXy0cXmualO1n7FkiyAAPTuZdR6OFHyQPP6DCEFGdaghyFynyaGMJnPmZD7cbGSigQK3rca828t8EnWYosSmwpqJI8geTqBmJqPJ/zRnNZM0nrt29PDd7byRXCEuiGzCR/Bptf6D32UZUwzovOnAP6lYrGpYQTYXrIcmKOT5Wc8P+XQ9jsDLd03FP5ZG5Dty1QP5bPzbryTVn1EfxlxU+T4x/dUw0wzkqFy3DjRRmy278SlwwPegubcnx8jLX59mrcs+ZJBSSWCxbsBR4vfW3cG7s+YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW3PR11MB4666.namprd11.prod.outlook.com
 (2603:10b6:303:56::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.13; Fri, 13 Feb
 2026 08:18:00 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Fri, 13 Feb 2026
 08:18:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 14/15] drm/i915/display: convert W/As in
 skl_universal_plane.c to new framework
Thread-Topic: [PATCH v2 14/15] drm/i915/display: convert W/As in
 skl_universal_plane.c to new framework
Thread-Index: AQHcnFLcTiEkBDHxskWp6MhBcwRfsrWASX/g
Date: Fri, 13 Feb 2026 08:18:00 +0000
Message-ID: <DM3PPF208195D8D46B3E3EEDFD4DE4533F3E361A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
 <20260212184737.352515-15-luciano.coelho@intel.com>
In-Reply-To: <20260212184737.352515-15-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW3PR11MB4666:EE_
x-ms-office365-filtering-correlation-id: 52c07f24-2d0b-47e4-f9ae-08de6ad866a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?NlwgtxF+QFrrZDRW2Osfiu8nAiIDAgSoLkTc4ofaB8rvIjo2c73ptjC0Th8B?=
 =?us-ascii?Q?tqnldVn1Xwz6jgNEmyvkKSSp1F9cxkePh47wvDLd3zxb/P07ssJQOVV/emd2?=
 =?us-ascii?Q?X5jD0gszmQGaZyPZz8TpV6owF46XFoiHh5xNGQY2AY4YVx8nythY06dL7V6i?=
 =?us-ascii?Q?FlzNEov9AMqYKdQzzELDCBJO8EJISJCYrtxSb0cAFqBzBht25RDvh7xoqvkE?=
 =?us-ascii?Q?67nKTAUCY6JeybEmV3DubVSRQYUklVprhqaJ1kU8s7W5x311KR3+jKvfnQvu?=
 =?us-ascii?Q?F2fKcTexeObkPfRCm8BEBOW295dtd3qqvBJy0pfLB4WXRRFZLpC8Q5drSIxR?=
 =?us-ascii?Q?bMfiJ0ue0WJM5jAOssETjckGGsgAhYS+jg1xunIBtClT9+RJo8Jm+Cj77ymJ?=
 =?us-ascii?Q?Pzpb0ilIDLVmqrp2YyVdHmJRJ31ZBC40kwxxLa/tcEDopXuZ2dWKynIz6BDd?=
 =?us-ascii?Q?lDzGpYJa8UXif5EGZvjWRd+NT0kxX/ywl+igk0FwFxoPiwgbBu7pZ36P3VmV?=
 =?us-ascii?Q?9xUaLMiG5viwBzAseNb+sExdkXKpOrFoqynKMDtlhL3J9mRjPa7TiOg2ODsO?=
 =?us-ascii?Q?EiDd7KcsDMbKvxPhAicTBeOqK0EfAkWNjKfz/v0RA3RDrvT3iFxpIfJRyl+k?=
 =?us-ascii?Q?qmPk44sUqB4wtvosDhLvdQFOjpczRaQCSwFe+CdnVPBd27j+uvjnicgHfr1T?=
 =?us-ascii?Q?w+w4RuYDJSrG7WdOSXacPj91FVUF2roVFrI9lrLruCl/rcPB7T3eKLKNgt4k?=
 =?us-ascii?Q?Acy8EghMt6FweH04a8K2eBW9GCVC7Xx08wpt29liNsSbxe+kJB4QPCOnzSoG?=
 =?us-ascii?Q?7EMxhNz1GVRWwCO2Fy+fRgTx4fi/V0bwaCmGn4mFnUdGTQzptkSYOkm587EB?=
 =?us-ascii?Q?7kNvoc1WS9gYPsUySFQnkn+WbA79sC3LE51DqlBvcEpLmQvNrEt7WLP90GFa?=
 =?us-ascii?Q?AsqjTwrsyOTreiiahrt6lVlJv65Ci1D4QNDg5/nlZb+fqWogUuLMtoKhKDQS?=
 =?us-ascii?Q?GAEh1Ch19yR0vGICIryDBSGvnqv/Z71CG2HXJ9Rc0ePGx1XPa9GToiJ+1fVm?=
 =?us-ascii?Q?q9/9CtyCF954WdiRmiYNCjI952FbHm8xREaWvPI42EX8tkwc8PkcK2efDgH+?=
 =?us-ascii?Q?7MlMunL4OppqlY1jwcjU66MOJlrIZNIgfVJjnAPRgAheV4p4IgLA9+FYsVNN?=
 =?us-ascii?Q?BNYMFojBxC0XzTCQGKZxil29UvzN7gggcPXIFpIP+Ok5vY0C/RcuSEZDyC6d?=
 =?us-ascii?Q?Q5sS2Pefec2CcfXJZlhIpboYaR4YyfkYw4vmWYeqE8CXBiEJPOmKc2iWUi3/?=
 =?us-ascii?Q?zKs5aSgMtVuQ7AahU+n/ZzPTaoYE56iHbKNi1JWEWxttEr4dAMxBLH+SRhsa?=
 =?us-ascii?Q?jPOwx6obgXB+SLyCqW3STRfZopSHN9jPCd11xz0o7XVXPhd/9HAVwBcOEwDt?=
 =?us-ascii?Q?5oaoGieMbZHXgZ/tQwHZHB7OV9MYvqQXd0ND6H6sp+7C7ijuh9dtfpDmwIKV?=
 =?us-ascii?Q?CIa7zHHOq1dcp2D2caEeGahm4+GNCPRi5AvsJcyl6S1Nol8+Q9Z5FaZob+A3?=
 =?us-ascii?Q?Zfi8jLTb24SGnslnjI6XBTaBUwq0Kiq9GgBsGVHMjXEl8jle/bJ8TokVEExS?=
 =?us-ascii?Q?Uw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i89JW2W7prdhuPTW/cUR86lw44qXv7nzFJaEBBFwJmzFsgH2pVNMI2ThVt9q?=
 =?us-ascii?Q?BFToeo4J7ZD2BU1Rk5+dgQ9Hu7l79H04bUxbzKR4cuprOJiol/ArHK3G4WXD?=
 =?us-ascii?Q?fcjZ4yIiDWUB/YQlbE3A/YvlUY+rDm5dCjftBlgjpjPLKoCklIhyIDUlDU6I?=
 =?us-ascii?Q?33ppLT4e1/TPl+K96+1HHptJm3+tNvBIi4pjsVcHdRM+nWFEJsBhS69J6jL6?=
 =?us-ascii?Q?FSUUiEabZlnudCJpCMjg8PLC2O37DHB0SMHc79+GRbQZpgDvPrLbP8hdoNtd?=
 =?us-ascii?Q?GOUrtWYHzUSejluAVOTbdjZbJ9SF4vh8nLX1tecMxb6Kc3IPI7fsiM6wyiHP?=
 =?us-ascii?Q?R9BYZIVoRE5BHNzpjArmMeZetIHQ9IT2BhnCK5rGpWftI99cJDPAx8Dyma5R?=
 =?us-ascii?Q?DiFB9pDJWOfi0RFMN8MjGdFhUfBILVaW1OWFWZtmERK2+inPc2/g4tiXETyR?=
 =?us-ascii?Q?MYrcO5EUmo995nzoNCiZrqnWmuVE9MS1HvQIqw5M9XNCl4F9TEG8ko9GOlBm?=
 =?us-ascii?Q?ggaHhKtiqzkjLRaU2Oq2D5RBtkkiKGCHxRVbCFAcLlOsqKZfBtkdWvIcSvYL?=
 =?us-ascii?Q?efO6Ve4r08zdhIaqPOadlIt0oYMvh5Gv3oTQereR3iiJ5DgoxQUMurIWHnAf?=
 =?us-ascii?Q?w490yllkUb2f7JLvcw0FK+FaJfDj89LdmtUwVwGXuAb1Fy3gjK8wyp+S9Qsp?=
 =?us-ascii?Q?UBQHWo++87AWErPQueNvj7pElbKS+NA9Q8HqtKr+dYLUS5a8xJcx38BdlA/6?=
 =?us-ascii?Q?dqukAkVSDgW8NtrvelGt68K67cY0ogyjyxEiqQZNs4HTmCcElKJDs/zPGw66?=
 =?us-ascii?Q?baVAbiD3YFAUtHmaiuHySs18FcqWxHt5CGbAyUe+gCbuVy+35fxBEyHlCtl7?=
 =?us-ascii?Q?sDmb97K4mzksxVuQ+sIand5xnOwZoPwbb0CT9QayHrMnwNwPwZM6jt1BMG4z?=
 =?us-ascii?Q?W8KD+4PXHUOpFDYYq4Zt7AjsrsrLyG7sVPq6qH/qIvN4u5sIFpVvsJyje8vY?=
 =?us-ascii?Q?PsRw1ZEerN6bFeBP/fHPxa/BeUao0GPyfB/4tjwAtYZZNMfqTu+IPGPy68YQ?=
 =?us-ascii?Q?Oap4+qU/8j0jkvUZUUFvbdbaQh2T6NN7599hrGa6/mN7TikAX5ds8PLve81g?=
 =?us-ascii?Q?wNcdgDg8Fti5wYyw4MQFYa+ZElX4b7kphz5Q1kZny+7tsP0UZ4o0hTb6fVOF?=
 =?us-ascii?Q?UoGglf/8/R8EV3kbtoBaUsP9Vm01iXMpZF1wn08a9KFrI/liYs9mYhaY57sT?=
 =?us-ascii?Q?YknEPkvlrlOvpBihJF7NWw7nZN5c2lLqJZm3XQOKHd/Oa5kWt52sXZ0eseKV?=
 =?us-ascii?Q?Etx4A1gWyL4cBbjodS2sMUNYy3ineebqJTV6BHk30jU1jBVikgNTj4G8PlZM?=
 =?us-ascii?Q?MvP2oHCkMWGAl0Q8bo+2i71ytveL6DwZcgulHyCxxiGUNFNRwaZHZmg17Ajh?=
 =?us-ascii?Q?8/eLFFrqaxAS1I6Be4vluNFi49sUjBtaw23dI+aY9IVaQJOjCDoozW8qDhMe?=
 =?us-ascii?Q?hN6SQn/onasds12pMq3E1gVgkrUd+xKTuO+EEIN6RCc7b/VMQRE3o3RZnHuE?=
 =?us-ascii?Q?Nr7PPbBbwN0p5RcQdjEubzPtBGjNj5/wGUNZxh+ls4e3Ph21x7pnq0uvSelj?=
 =?us-ascii?Q?GmhHjdIxeCzNSsVgLrw9bB7jeX1B8WEHiNHeuNMZq+4p0RM+F3jsAnW2W/wd?=
 =?us-ascii?Q?e3R21MMqnhp0UVM8FfovUhSaQT7ep0UoH9dvJxCyctYOWRMhmr9b9NnUGqD4?=
 =?us-ascii?Q?NWtN1R/psg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52c07f24-2d0b-47e4-f9ae-08de6ad866a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 08:18:00.0546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XLcABQZ0bCbPc5P19NOU0ar/B0auxmsOK0n9j0jSH2uAmc+rU+W7qXKWHc0jWnAdi65jTlpYT9OB6nUEzJ55SA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4666
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: CB8D8133E52
X-Rspamd-Action: no action

> Subject: [PATCH v2 14/15] drm/i915/display: convert W/As in
> skl_universal_plane.c to new framework
>=20
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the workaround=
s all
> over, concentrate the checks in intel_wa.c.

*intel_display_wa.c

>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_wa.c    | 4 ++++
>  drivers/gpu/drm/i915/display/intel_display_wa.h    | 1 +
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 6 +++---
>  3 files changed, 8 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 783e1383ff89..20216514c085 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -79,6 +79,10 @@ bool __intel_display_wa(struct intel_display *display,
> enum intel_display_wa wa,
>  	case INTEL_DISPLAY_WA_13012396614:
>  		return DISPLAY_VERx100(display) =3D=3D 3000 ||
>  			DISPLAY_VERx100(display) =3D=3D 3500;
> +	case INTEL_DISPLAY_WA_14010477008:
> +		return display->platform.dg1 || display->platform.rocketlake
> ||
> +			(display->platform.tigerlake &&
> +			 IS_DISPLAY_STEP(display, STEP_A0, STEP_D0));
>  	case INTEL_DISPLAY_WA_14010480278:
>  		return (IS_DISPLAY_VER(display, 10, 12));
>  	case INTEL_DISPLAY_WA_14010547955:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 35d8df4c75a2..784baf66222b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -30,6 +30,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_1409120013,
>  	INTEL_DISPLAY_WA_1409767108,
>  	INTEL_DISPLAY_WA_13012396614,
> +	INTEL_DISPLAY_WA_14010477008,
>  	INTEL_DISPLAY_WA_14010480278,
>  	INTEL_DISPLAY_WA_14010547955,
>  	INTEL_DISPLAY_WA_14010685332,
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 746e942cafd2..9f31c609271f 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -17,6 +17,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
> +#include "intel_display_wa.h"
>  #include "intel_dpt.h"
>  #include "intel_fb.h"
>  #include "intel_fbc.h"
> @@ -1217,7 +1218,7 @@ static u32 skl_plane_ctl(const struct intel_plane_s=
tate
> *plane_state)
>  		plane_ctl |=3D PLANE_CTL_KEY_ENABLE_SOURCE;
>=20
>  	/* Wa_22012358565:adl-p */
> -	if (DISPLAY_VER(display) =3D=3D 13)
> +	if (intel_display_wa(display, 22012358565))

I feel like you missed to add this WA no in the enum and corresponding inte=
l_display_wa function

Regards,
Suraj Kandpal=20

>  		plane_ctl |=3D adlp_plane_ctl_arb_slots(plane_state);
>=20
>  	return plane_ctl;
> @@ -2793,8 +2794,7 @@ static bool tgl_plane_has_mc_ccs(struct intel_displ=
ay
> *display,
>  				 enum plane_id plane_id)
>  {
>  	/* Wa_14010477008 */
> -	if (display->platform.dg1 || display->platform.rocketlake ||
> -	    (display->platform.tigerlake && IS_DISPLAY_STEP(display, STEP_A0,
> STEP_D0)))
> +	if (intel_display_wa(display, 14010477008))
>  		return false;
>=20
>  	return plane_id < PLANE_6;
> --
> 2.51.0

