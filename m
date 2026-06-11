Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sWr7INb2KmqK0AMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 19:56:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA3B674379
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 19:56:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=mmORTVFU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61C6310E847;
	Thu, 11 Jun 2026 17:56:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E801E10E82D;
 Thu, 11 Jun 2026 17:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781200595; x=1812736595;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Yt9e1WveMBFmStXLyzhtTL51YNcEoOCCJK5nP74Usmw=;
 b=mmORTVFUKzb1EtMT+s7aczgpuhWXcbnNQjFBqyQoFOVbuQSaHYzcykAv
 CRPMDLhRqC1sSEnZ4AXHA9CmTi5QxRX2Y21Qg7N3ARMDax844Vn3/lN5+
 b2ro1BUQkLrLb+HLCMe33QnOaEElDKy/sdLGObh5mgL1Q6UI6sDTBgbMf
 E8jr7ViKR8ymU3+TSqckD4VijANK1ntuZaNtgWOgjZS6ac+EmrtMy3GVx
 RQ5o3r3t7sdCGF3y8RPZ1rgoZdQBvmDWVOFWbNLWYVgkxsMhI3xxBVfoQ
 +2MuVCjk3Ec0RTbUU5q9otfmIrf5IEelIObsX96pemkgD0HXKi3OmrZqe g==;
X-CSE-ConnectionGUID: M7mqSbgHRWG75sjjm9Dajw==
X-CSE-MsgGUID: tkeN2G5AS3S4rJSI9X6ZtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="84590873"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="84590873"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 10:56:34 -0700
X-CSE-ConnectionGUID: pzyQHxwUTMiHpzhFYPOxrQ==
X-CSE-MsgGUID: zdjQ4c91R7Cqy3ohmy4xBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="251499095"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 10:56:35 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 10:56:33 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 10:56:33 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.49) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 10:56:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vJDCqurnxBWepAyujuQN6hsMcxWNkPg4dv3f72LmHDOSuWkMRuw25TxXi16gFitKqSw/z9Bsz7Uuo/cWRW2jp0PYM76GfAVj8nzdWazUdHIRh9MO4rHNXBzy3z9q+AwhKANrmen+2zRlPYq3IUDspdeGQBq2OOKV+RF/ax+WWxjgfjFARhHuocrdRlzhu96tzz3VLnQZgW6uuciMSao4Qf6kVTwYt1pfg2Hy5X0Wo5Ak1TGg7tg9Eq80jrbfb6WXjwGku32OOhTYDv+hRLg6jyTrucVzQAckRA5m+fvUeXj6Q6pEtJb532V77/fsHcZfxdBWxKWk1Ij/RZqjgtT1kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u02+hXRK1Zu3zO7gJwTwM+yFvZVuGf3jRR4O+1UMQGU=;
 b=JDL2f1ipX3AE1vTtLJI1LECL2CTW1Jr6AYyUR9BpkC3+2Baw2m7gYvHH0k1yURVMC3R1I6aUNyI+EzF3V9gzsLr2As8IJmnGFgOR0nO0d88KEjA6NvUmlIQhr051pkhi18m/TMWX9QJCXFgg7GPKElhG2O4r7mtCPcJYvKrEB4dJh9Wz39/IAjisZSodYASZEIpb3ts016m0Qfb2yUSj3ES4At9oUY3anH/nUqyaRBLH/UYhvDpW9Z+M6IvU+zxVkjjo6TRgAGGAEsPgyU1II8qRZAint45qigNF2okwVJPUxcpWDY9YDOX9dXgv2zyx1ygJx0D9h+er+/Khm8Eqzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MN0PR11MB6208.namprd11.prod.outlook.com (2603:10b6:208:3c4::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Thu, 11 Jun
 2026 17:56:30 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 17:56:30 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 14/20] drm/i915/cmtg: Modify existing hook to disable
 CMTG
Thread-Topic: [PATCH v8 14/20] drm/i915/cmtg: Modify existing hook to disable
 CMTG
Thread-Index: AQHc85dcvn/f5DK6Mk+tk8iSR4JWCbY5rcHA
Date: Thu, 11 Jun 2026 17:56:30 +0000
Message-ID: <DM4PR11MB6360D16B4D978778529281CBF41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-15-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-15-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MN0PR11MB6208:EE_
x-ms-office365-filtering-correlation-id: 54427455-d809-4245-e326-08dec7e2c444
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|38070700021|6133799003|18002099003|22082099003|56012099006|11063799006|4143699003;
x-microsoft-antispam-message-info: 70PipfmPij8pl1aW1VW5yVerj4RBa4Ib7rS42rERuxTlMOr7vhIkt1MbODyJbIXOuPkih1ZRlP6Bwi157mVcgAaBy0jbOIbOYo+K8TPLIErcp4v245lrFebiLmN+Vo9uJbfKAhfWEe8gpq1J//dtkwUrWgtWLqWpScSb7bc3y6EiBKEQFOkgQXg6zDI8Vszry/ZKemyCy1kdNGNwTYtLSBY2ZTjMJTwelPCUAwtIPFo+7xvDp4GPNq75tBG09cVv2++3D9CcQUVdrFqJ4uB+9MvxMQh2xSghTbPb/2698QoFin/JrTUJWDGhWLhRb+agsO6rhSXDlENvnl3aSw2fNNp4PodKYQdEEZmaqNelbDG58SdUgsgiZkK5MCLT6EOjEGjRwkEcz/hjsMsZW7ZlIwziBSL70oxqTS6ojyVwm3fJB+rTsR+LFmM8y5lsCt1O+cUmav08RVKS+EUFCDo6R/11VMBgfDYbJEomszhw1/PevyDZAkssYUwOryEstFLR2Rb1PX5gZ9bkwgLKlz+oPuinJK8TvlKz3TIEqEbbvJMs3lrkg7fv7ixahrmlrtWTR8BOo2GWoknnMorFAHJF0f3cR8/+sCpd7xgIUG1I6/oHZ/PSdyojxxmeCfIduoyK45PpBy4HqHaMevcPLpnOGOv/T5T1vzOp4IKEMaNawYy4y0UnBlgTtLoKWRWv4nI0fviy0RIGa1RqPbWu1j0Mn8XvbIKCjteUHcOxgD2QG1SrmJk3nj0Ck9QwQtElCvqr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(38070700021)(6133799003)(18002099003)(22082099003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zT8KPH0gaP2m3TPD6+WsrGtjr33IBJLqL9DzpE7s8BqFMm+WD7DSHLrYUJ3x?=
 =?us-ascii?Q?tLqmmzRAYfLb9sqSoA80OL+BIk4hj4k+2jeYvBySJjRbNj5bwMg2w0tBOjll?=
 =?us-ascii?Q?o46pqt79JuFOjwPDMe43OSjnfxP7Vx9lo3ucmB5r2NMSAmNzsQ/dJjOk1gxX?=
 =?us-ascii?Q?Mk+Q+10JCo0rAPJ7dHVu5frOjYY+U29K+q4T2TPkJoZGhJUMPSk9yPZ00z/H?=
 =?us-ascii?Q?Bq/bqqZFXdJCtBpxHy7ezPW2KZGsCeHzpSbt6XwySwdrIDUiXYW7ouSfAbRZ?=
 =?us-ascii?Q?V1xSaJYRPSHnnYgB3tmC9nXDHyCl3NOW03tEapZ4lNXsmFdNlD6EAeIrh8qz?=
 =?us-ascii?Q?lGOM6l1fvoosQucfZrNwdUVSo5Cg5A0wDIhnDfTfFLw9shxm6p7w7lo3mEjK?=
 =?us-ascii?Q?0jjYinv5Lt3gKVCVs48T2sh+svw/1kQAROQD5H1x2z/1BlGLcBTL0YJXEzSY?=
 =?us-ascii?Q?GJwkc8ye46/XyY/U6doMTk+SPmB+ArAmu6lvkfdJ44HrQ8WtUW/cRibLvWlj?=
 =?us-ascii?Q?2FX4W4mszKFBisg8vuYDO50Bk0dftOkvs30iGFd3/nuTWxQahh6NXqg+2RJS?=
 =?us-ascii?Q?FULYVAkE0B+2nNs9vWImF++1z9tLCowmYxLDk7XLduUM2T60jU66UcDUg13o?=
 =?us-ascii?Q?KL+EwXgMuT2quaoYcg4bxBZvEjElf+0jPimLVgshMl0ihn9QIQD/i1bjuC91?=
 =?us-ascii?Q?ceqhtKTdrDe2Fj5QhvBLYIn2mieV/CKIvWtgLQP3vRoMJYOZb/YZQGs57MM2?=
 =?us-ascii?Q?wIKIJih3+my5mKihVNd0TM+1+/BpbSQ8VEmppVoAvwDI9p45F8uIq8uN9Qx1?=
 =?us-ascii?Q?3tedVqccqVn/HaDKV6wdFoIcbFYdUzCX1U2gOKdwopkyD4eTTbOIWhDY5d8M?=
 =?us-ascii?Q?DBroVA1PaCqfDVGmLrKLB7F1NW37R/AdxDOlMSlC0DCf+5yA9zB0FOcLQaDW?=
 =?us-ascii?Q?PX4WD8WIy4zTrCEyoMzq3gti7IvWSNJqFgOqFGivxxtE7sLNfWYfO3mI6J/Z?=
 =?us-ascii?Q?7JTYpPwxIGqeAp+rRlRGlU7LFBbqdTI1pwl+Q+/rAgzgxFMLaKqLe7PDF80k?=
 =?us-ascii?Q?rB0ej5v8udxaZ9OyjpntNKQ5uhp5Zob0DLW1dquGDEa945fm8FKQHWc0QNvX?=
 =?us-ascii?Q?+t97Xvr0/fj4Ou4Tli+MazhI+MK74gXO5GRkr92b6TeZxS8NI4PwtEY6v2SD?=
 =?us-ascii?Q?ZYjZa4YQO1bmtX1KMRpL08VUr8utblW2tJE5rgOERVjOpdaYMr4kW7QAubpC?=
 =?us-ascii?Q?xEQoXm62qmYwgmFMaHj141LBOe+LM2XTiQ8EJeKZQFt3oa6jgV/uL8TYbknT?=
 =?us-ascii?Q?nV6XXtUxEMvy610bo9s7iPa6N+BUkJRVs6EOM27X4QUryuFPhINWId6ULAqB?=
 =?us-ascii?Q?qeKRx7LsF41+1vO4Bte762H4EQpFE0xC+nmAF8e+ZmMGKWFNn/P0vyXy5eYj?=
 =?us-ascii?Q?xFpgAkObGIQChzMmm0QM+S1PYmeIWQMqP4q+xTio4XOdOHth09h2bvzECz/Y?=
 =?us-ascii?Q?dAVbmyASgtFd+Xo/fAns0o2f4t94QeV5ekYe06h8t/Mbi4RlGjR2HvxEh0Ng?=
 =?us-ascii?Q?6OOwsZPWsEpC9qpxzfBI1ip7aRKtb66dNE6ubzKh/Hr7/Es0TKLl9EyAJcnj?=
 =?us-ascii?Q?aec/7fqWT03cEAPbFK+StZt6VHhTeNL9R7Wy11pJIqZ7zhIR9szIq6McDrIF?=
 =?us-ascii?Q?iUUmrMeIlwfjV+qBwfCF5azDoJKHNJCNMoploJrA+vOzDqWkWCR4pGffWQFF?=
 =?us-ascii?Q?86QH1jR3DQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Y4LXlVCOobF4WutunwlDYk1p8eZVE3pf14cigvEI7hAu09+EX5MKL4XPiYy1qlci4XZ858zuUXamZyK5mravXkmtghPjqQCNx7YdJmwg2mfZzPOXYuN04kU35h+qoOeY5UTmDa0DWxryepUdmb2HjMcEVjoP2l4FwNFzCBWiCXEB4PQanGhTYFOAnamm25JMx3tpqoajycYhX+ivsl6L0429EyL3HZUHat2xPPzFM+sGikc19MPLxGhBxxS9iweIaTOIAC0BLFmQ2F/C7RLLoAi1H9uel8udc1hpi65v8JVlVvs+4dVKvMzhFCWvU4PKZx/1VwmUjIDPwLjwVWexcA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54427455-d809-4245-e326-08dec7e2c444
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 17:56:30.2546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FSuyNAA2Y4KG0MDcUc5gZZk4X1g7eI4v/1daWkzmuc5Jii0PvFSpi7utOlWhhcrBbTaLR90T0DvZIdMOTOYeHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6208
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
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
X-Rspamd-Queue-Id: DAA3B674379



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, June 4, 2026 1:24 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v8 14/20] drm/i915/cmtg: Modify existing hook to disable =
CMTG
>=20
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
>=20
> Earlier cmtg_disable() used to disable all instances of CMTG which cannot=
 handle
> individual request for specific CMTG instance.
> Introduce cmtg_disable_all() which will disable all cmtg instances and
> cmtg_disable() only disable specific instance.
>=20
> v2:
> - Use intel_de_rmw to simplify. [Uma]
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 62 ++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  1 +
>  3 files changed, 49 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 077653e2f599..20b74c2856c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -83,6 +83,18 @@ static void intel_cmtg_dump_config(struct intel_displa=
y
> *display,
>  		    str_yes_no(cmtg_config->trans_b_secondary));
>  }
>=20
> +static inline enum transcoder to_cmtg_transcoder(enum transcoder
> +cpu_transcoder) {
> +	switch (cpu_transcoder) {
> +	case TRANSCODER_A:
> +		return TRANSCODER_CMTG0;
> +	case TRANSCODER_B:
> +		return TRANSCODER_CMTG1;
> +	default:
> +		return INVALID_TRANSCODER;
> +	}
> +}

This seems to be already defined in patch 7, drop this duplicate.

>  static bool intel_cmtg_transcoder_is_secondary(struct intel_display *dis=
play,
>  					       enum transcoder trans)
>  {
> @@ -126,8 +138,8 @@ static bool intel_cmtg_disable_requires_modeset(struc=
t
> intel_display *display,
>  	return cmtg_config->trans_a_secondary || cmtg_config-
> >trans_b_secondary;  }
>=20
> -static void intel_cmtg_disable(struct intel_display *display,
> -			       struct intel_cmtg_config *cmtg_config)
> +static void intel_cmtg_disable_all(struct intel_display *display,
> +				   struct intel_cmtg_config *cmtg_config)
>  {
>  	u32 clk_sel_clr =3D 0;
>  	u32 clk_sel_set =3D 0;
> @@ -158,6 +170,38 @@ static void intel_cmtg_disable(struct intel_display
> *display,
>  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
> }
>=20
> +void intel_cmtg_disable(const struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	enum transcoder cmtg_transcoder =3D to_cmtg_transcoder(crtc_state-
> >cpu_transcoder);
> +	u32 clk_sel_clr =3D 0;
> +
> +	if (!crtc->cmtg.enabled)
> +		return;
> +
> +	crtc->cmtg.enabled =3D false;
> +	intel_de_rmw(display, TRANS_VRR_CTL(display, cmtg_transcoder),
> +		     VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN, 0);
> +
> +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> cpu_transcoder),
> +		     CMTG_SECONDARY_MODE, 0);
> +
> +	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder),
> CMTG_ENABLE, 0);

Should it not be cmtg_transcoder ?

> +
> +	if (intel_de_wait_for_clear_ms(display,
> TRANS_CMTG_CTL(cpu_transcoder), CMTG_STATE, 50)) {
> +		drm_WARN(display->drm, 1, "CMTG: %s disable timeout\n",
> +			 transcoder_name(cpu_transcoder));


Can you add a comment explaining which transcoder is referred here cpu_tran=
scoder or
cmtg_transcoder and why.

> +		return;
> +	}
> +
> +	clk_sel_clr =3D cpu_transcoder =3D=3D TRANSCODER_A ?
> CMTG_CLK_SEL_A_MASK : CMTG_CLK_SEL_B_MASK;
> +	intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, 0);
> +
> +	drm_dbg_kms(display->drm, "CMTG: %s disabled\n",
> +transcoder_name(cpu_transcoder)); }
> +
>  /*
>   * Read out CMTG configuration and, on platforms that allow disabling it=
 without
>   * a modeset, do it.
> @@ -185,7 +229,7 @@ void intel_cmtg_sanitize(struct intel_display *displa=
y)
>  	if (intel_cmtg_disable_requires_modeset(display, &cmtg_config))
>  		return;
>=20
> -	intel_cmtg_disable(display, &cmtg_config);
> +	intel_cmtg_disable_all(display, &cmtg_config);
>  }
>=20
>  bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state) @@=
 -222,18
> +266,6 @@ void intel_cmtg_set_clk_select(const struct intel_crtc_state
> *crtc_state)
>  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
> }
>=20
> -static inline enum transcoder to_cmtg_transcoder(enum transcoder
> cpu_transcoder) -{
> -	switch (cpu_transcoder) {
> -	case TRANSCODER_A:
> -		return TRANSCODER_CMTG0;
> -	case TRANSCODER_B:
> -		return TRANSCODER_CMTG1;
> -	default:
> -		return INVALID_TRANSCODER;
> -	}
> -}

Oh this is moved up, but this is unnecessary change part of same series, ha=
ndle it gracefully instead
of moving across the patches.

> -
>  void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, b=
ool lrr)  {
>  	enum transcoder cmtg_transcoder =3D to_cmtg_transcoder(crtc_state-
> >cpu_transcoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 12abbafa7d08..79785afccc51 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -11,6 +11,7 @@
>  struct intel_display;
>  struct intel_crtc_state;
>=20
> +void intel_cmtg_disable(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state);  =
void
> intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state);  void
> intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state); diff --git
> a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index a93236bf7b75..240a02cd4a3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -22,5 +22,6 @@
>  						    _TRANS_CMTG_CTL_A,
> _TRANS_CMTG_CTL_B)
>  #define  CMTG_ENABLE			REG_BIT(31)
>  #define  CMTG_SYNC_TO_PORT		REG_BIT(29)
> +#define  CMTG_STATE			REG_BIT(23)
>=20
>  #endif /* __INTEL_CMTG_REGS_H__ */
> --
> 2.29.0

