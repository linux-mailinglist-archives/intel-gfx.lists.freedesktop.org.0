Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9C08D1409
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 07:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BA7C10E2E1;
	Tue, 28 May 2024 05:44:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HD3wOfWx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BCA710E2E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 05:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716875043; x=1748411043;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f7bBalzbI2h4hYWFjwq9GUt8RsxbjDw5CnpJxB8SYY8=;
 b=HD3wOfWxvOeKmtTdc+I8A7GJ12yeLCiCx0L2rPsNRBuT+qhaYgeAG/4x
 +Qp9iit4fv1Bqt0U+ozNWxsg+HqdeJNm9PkG0VS5Yh2j2fvVh7NhJlahi
 VaErqCOGL0zaNcaRSSolI0f5QHsp3Zp0oc19AWN6E7K510FN6RkMAfNoD
 PXHJXxzYSNl7EL0T3LvZDg8l4+s1nhGw3LmVleoFBk6Yzn8NWb5LviGlh
 aoXc2zek9RrG6H0g/i3WWp4xoReVHRWyR1LJdUkncIK9QMTqpRJBYDsKM
 LZkCZzQcdaajZHYkd4EeoPVTx8YzHw0GW1oOokJtCUwiFmxhG+aZhPM31 g==;
X-CSE-ConnectionGUID: pWGhr62eTrGJm6YTdWgTtg==
X-CSE-MsgGUID: hFmSMSmxRziDEr/ARfsMcQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="30722232"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="30722232"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 22:44:02 -0700
X-CSE-ConnectionGUID: abA8LlAcQqyF45QXh42Uvw==
X-CSE-MsgGUID: NI8BqYzbTnWqpi0SrsxsVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="34931689"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 22:44:02 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 22:44:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 22:44:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 22:44:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TFsbWDOYTlx1jG0j1loPKSobt7Ob/Hkq+BQ8PJQ/9uJ7JAzNxNPw+uwjXWoj8vIOO2HW0/urH36bJp9mWP5t1+edMTEPCZjBA627C18gSSzqVjW0SH7whODIHDQoXlYODoeeuxwfAk9CLs12BkNlVL7iFyf9oPc/SAnIwddIO4Yy++aHSVGtc81fT9i6UFGOAdiQWUeKCrcmpOFhA9Y0KBsvxbwEHkFjYMUC1Zda4td1ROjhEN54O0ME+LhDFPLVu5PCCrP9oKIZ/alh6fR4IJoeP32MJqKo2PFJgFH0Rmtuca7jWWL8LxsLFrFOFjS1y9srn43pMI8SCLiVjbkI6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bS+ZI/cOmzypJ4MWg420pdeCZxZQpX5xUR3QQ7s5FY4=;
 b=OjjBcUuE2Nth2boM6Sq2CMog99Sl2/0kRSQhDDL4q56uPROo15A+IcL8UvYLisEOaNncPR6tJrnrFcSkZnZLpLntUPfelwq/bbTJK0RaxCtBG9P3naTDlbLrXFOiyaOFp5n91YZtlADlRfYZMZMOhjC5a8eY2KyIkes2KKTVziZK5gyB68mKaBHN4J7M5B/WYlun0vBtdifH3MNAQc4EHsgewRPn80YNtAArPt+t1A1R2kYWqfbs4T0kwiWvsHHVwgKpzXub6CVr0R97xJEVQa/OztWdslWYRZaVGHHQERN/8j3W5QIFD+MbrAS4Gs3Yj4qBIGbQxwVonE8P7Q/zow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS0PR11MB8083.namprd11.prod.outlook.com (2603:10b6:8:15e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Tue, 28 May
 2024 05:43:59 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.7611.030; Tue, 28 May 2024
 05:43:59 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH 00/11] drm/i915: pass dev_priv explicitly to DIP regs
Thread-Topic: [PATCH 00/11] drm/i915: pass dev_priv explicitly to DIP regs
Thread-Index: AQHasCaZvugwFNDO4EqVaBVUjISBkrGsI5Ig
Date: Tue, 28 May 2024 05:43:59 +0000
Message-ID: <SJ1PR11MB6129A87D55BBEE6D3E197417B9F12@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <cover.1716808214.git.jani.nikula@intel.com>
In-Reply-To: <cover.1716808214.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DS0PR11MB8083:EE_
x-ms-office365-filtering-correlation-id: 324d8cec-37f7-4982-2e28-08dc7ed92c0f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?9WKbHWCcZUa9prSoqHn29vzYtCVEcM6U/cgCq+JsuA050QaKpgEbxbPxcbuU?=
 =?us-ascii?Q?n/Xr1fuOAwILtVIKn/1BmDeHoDxWLIXCuZEJg6qx/kUYVm9w8hO4peA/VnBp?=
 =?us-ascii?Q?SgHfwWa0mmmo8TTynUGJxTJyCJAJJMKKI5U2lvq2QMqAe2C6T0AELqTZ36HG?=
 =?us-ascii?Q?GxA9mz8EXS1usuJyBRX91yWCDHrTHGy/g0vKVGLJlKywQHW9LbyZ189y1k4l?=
 =?us-ascii?Q?fUlHe0k/eZB02miiIImLAzCW4v4gbK552ue9llQqR7Biu9CK/HJXYIfQSyN3?=
 =?us-ascii?Q?VCsndGFJ6pXWsPZaWI23B+cMM9yz6niYzUKCQ/hC5Yof84q8gSbncsMR26Vy?=
 =?us-ascii?Q?05UVWAuypQBiXtQDEnvPmxFVHHDbyZpFGUjXWKUZ8zLuJL88cqHb8e64K3hI?=
 =?us-ascii?Q?eFFRJnLssBQ1eCNUoxZVSP4GALvniIFd2bpALyFUb6dveOM6fGbl4V9LnqPZ?=
 =?us-ascii?Q?VM/YtaGItIpa7jQaIvziXkuMouR+8D8uRvKFoMI/8JPWVbXF3tI2DXJ7mLB5?=
 =?us-ascii?Q?bZIpb0AGWwJtG4pLxCekdEMKU4m2qAtjGRNcz17c4TvhiCiX/JVu0Uv0aB+0?=
 =?us-ascii?Q?rxS8JLtK7N6CbHCEv5zoI7fAfmfuCzUCzKLTxQM8SIxRxwa2NR3Hcl8oJ+fh?=
 =?us-ascii?Q?Ou578FbXZpzzqNflJGMqyIA56wiLirL4kSugoiv7+bCpz5URYt0sOmatZmc2?=
 =?us-ascii?Q?vIFqM73OkY2zztARlMG87OAYalPAltziMy7q2CSponBwiOJU4kPo7cfmg+cS?=
 =?us-ascii?Q?J32MF1fcQO+RiduGqqJN9pvm3pkMJRuUclxjB1FvRjSAjcMQTY8Oq0jhxrPk?=
 =?us-ascii?Q?nxHU6MFDIRf1TFAS0XjHmhfwOQ26Ww4ZO2ep27PCb2epqQy9XAMVrX3piGCE?=
 =?us-ascii?Q?Ym7R8O9cpUtpc6w+wqV4Vl60LXbiNZORess4dvZ+PA1288XRggn7a+e235Tj?=
 =?us-ascii?Q?Pj1wUs3xzT55MzYDTqg3/Hi0+3j62GBKfVrhulHBr+V9TDe5cX2uWxS/o3Op?=
 =?us-ascii?Q?jl+y/o5VKubp3nzY8LrcFKc+JKC5lCLckncM0KDJv0+ccVU6puY04mGVtvs+?=
 =?us-ascii?Q?BB3kAsNUN9hFTfiBzsOh7DLwsVV+qEZL7gJ5Lvr5vZqSxGSGSP2iCV+kChwA?=
 =?us-ascii?Q?mRrzfQwlqg9lhMYg+qMKGnxMxKn4JjpIcdt8gD1XgLctR958Iu6WXX8Ii015?=
 =?us-ascii?Q?EB2vyZ44p2q34K71sj/m7glYl3w2cTjzhuQTp6TJ4JgJZPNHnw6724oO7BN3?=
 =?us-ascii?Q?7Xl4VwegaLiOidXPL0aDrS5oB48q0EXEb/9DwJ+3lezww1YBi9ddarl8lX0d?=
 =?us-ascii?Q?u6SEdqQrl7IjC8S+gElvAAKnE+aG9kt1WC3VGZfnXaq2ow=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?p+zrY/EEJ00J3vqsbslHsb2DdAWR1bkY0H6LL5lx3DHjct28JTOdapz68KjP?=
 =?us-ascii?Q?dYIC6DYDLkMTlFyB1jiorlaWFC28FraukKsNdySHM9EXzcCI+U6K+wn3DLzv?=
 =?us-ascii?Q?NH/MBVODf5GX0zYYAD+1S89vmJg+XeDo3Gs48rD9JsXcIU8DZipZNUeOO40t?=
 =?us-ascii?Q?CwZzJ95lvjl3b7JTC+vGvqWliN/soxotgpjlIu7oLI16+OXJC5f+5/yikkam?=
 =?us-ascii?Q?zwYFcuHpYgzEb6sIZ2iZzUd2+1/J/sv1WI0Qh5JB6xMQzcQU+xdfz/Rw2MNH?=
 =?us-ascii?Q?qh40wDO3lEt9xsb6dDKcxfV33LldigVS98JMmD5ZoZbWMCSxOhOfQ6qXK1hr?=
 =?us-ascii?Q?BdeMlvXAgLOGJBzjCd2euYQwvKT8CcoBQel9fuYZJoBsIGzCeMjd4hqwtyfA?=
 =?us-ascii?Q?DynNqXTRoH7shkEDbe/leKOa2EW1SUDhp202ZfcY+bZrpIeF1UBZb0Mouw6w?=
 =?us-ascii?Q?zAlGbf008aF8a4Po+MATd2ooCb/EWgzLqAxBbeQWDkAM19c/AOXvVPzDEqjA?=
 =?us-ascii?Q?V3GGxsE8ERdS+YIMq3rPMuQEoba/sqf9lcfbZkVLAEiyEAv0SMInmQN6N8zE?=
 =?us-ascii?Q?zgNCaEgT0wi5Vz85eKGgWpib/CdBBX1RJDR/TICqWM8/KFvaaEwBS64QH5Lw?=
 =?us-ascii?Q?JwXWjZ0ujekp6dGnowsju9BkepgRCadd7UviooJeNSwuSKO0Bu1JLHojQoOQ?=
 =?us-ascii?Q?f2lGK+/T/OVb2XoH1smVUDKpCXKBN3AWIjB8y7Ck1QyESVEGOgYtIhbxOUyZ?=
 =?us-ascii?Q?rC3c+RVYEplRbAMV9wIt3BtyK3mQVA+gfKEUcdEx+cNVN0Mu5kGUDsPOZeJu?=
 =?us-ascii?Q?sQcN6/tvsEa7LhqiCjYlQX4BZasfV4VN6wH94qP+f02B9KOsCZqW7YL+3M7w?=
 =?us-ascii?Q?o1XNOAIj7vw7nay3Blp0x4yTgFRWqr0fpmRPfR0rNK3Tt72GDxCj57uftA12?=
 =?us-ascii?Q?/pkpAvwt36uvqCXCubfIHPZnhf7kCrqn0yc6AMEmE+nE0IbzZ/izlQpC/uQ2?=
 =?us-ascii?Q?jq23IHgqkySLBllW1Ry6gD+ulNULUkVEGTUpT78QL+pb2RJSAIQNKMqFSS8o?=
 =?us-ascii?Q?QePJkF/DlqqvjMNQZFuNuHm+NMYsK2l0R2pd8hgkxpzwQRq+wP52XJJN8eMu?=
 =?us-ascii?Q?h8uXdBb8ex1B2wI/hvBmiTynK3u1EQrH/QdKW24C+BBulmPAdkMhgCwtiq6O?=
 =?us-ascii?Q?H/fXyndnUGzWMFRqSUp4HZQ8A2LuZL8mx2CcD/IYLjAvoBZa4cc4bPhWg/7k?=
 =?us-ascii?Q?MEP8yXAk0YcuFgM/ePb5V9j5tRSEarT4Rqmsm8YUBU9Yw5CEjDSUk41ofkHv?=
 =?us-ascii?Q?x9I4CQm9tepJeZd1HkiBwUnRh/206Qq2y3T7TaSTzFR4XffUrf++sCz5pPtp?=
 =?us-ascii?Q?eLeLu5+4XwibArnM1TRO9haZDHZJNR5ftRHL4+z64bPFwDuakiT1sSPi7N+C?=
 =?us-ascii?Q?OqsS6SflCmMbWjR7TK0JeuwmqQ0RPZgZw5fh+GBuKs1UrkGy5swdFnQUygWE?=
 =?us-ascii?Q?u57dt7BtXD+Fy9uTyzD5gzz3hogBmi3zVYHOI+rx4/2+L5wsjCKRyLAExm++?=
 =?us-ascii?Q?dFAASJuMacVlsbT+x9dakEbPE318TD0EpX5BwUfh8iQN4fIKuwwP2e9C7zoJ?=
 =?us-ascii?Q?NQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 324d8cec-37f7-4982-2e28-08dc7ed92c0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 05:43:59.1415 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vLryHXQjyEkteJi20kTFaqDsCw3Wso1U6EcFfy2U1Ux0aZILghDnrHdlVUTSJ6K7lTdakLaFNUPNdawMe29Q/n+KAo9DzKV4miePy/DPnk8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8083
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Monday, May 27, 2024 4:41 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 00/11] drm/i915: pass dev_priv explicitly to DIP regs
>=20
> Continue removing implicit dev_priv references.
>=20

LGTM
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>



> Jani Nikula (11):
>   drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_CTL
>   drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_GCP
>   drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_AVI_DATA
>   drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_VS_DATA
>   drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_SPD_DATA
>   drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_GMP_DATA
>   drm/i915: pass dev_priv explicitly to HSW_TVIDEO_DIP_VSC_DATA
>   drm/i915: pass dev_priv explicitly to GLK_TVIDEO_DIP_DRM_DATA
>   drm/i915: pass dev_priv explicitly to ICL_VIDEO_DIP_PPS_DATA
>   drm/i915: pass dev_priv explicitly to ICL_VIDEO_DIP_PPS_ECC
>   drm/i915: pass dev_priv explicitly to ADL_TVIDEO_DIP_AS_SDP_DATA
>=20
>  drivers/gpu/drm/i915/display/intel_dp.c     |  3 ++-
>  drivers/gpu/drm/i915/display/intel_hdmi.c   | 27 +++++++++++----------
>  drivers/gpu/drm/i915/display/intel_lspcon.c |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h             | 22 ++++++++---------
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 12 ++++-----
>  5 files changed, 34 insertions(+), 32 deletions(-)
>=20
> --
> 2.39.2

