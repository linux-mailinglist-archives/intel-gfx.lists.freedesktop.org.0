Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p8D2KLA0LGqoNgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 18:32:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E8467AF53
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 18:32:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=BIphAXyi;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E0A10EAA6;
	Fri, 12 Jun 2026 16:32:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 364FF10EAA1;
 Fri, 12 Jun 2026 16:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781281965; x=1812817965;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=fLZwlvUm9FJa8ziy2HjPC4Rd3gktLvhyFsyE5Tu+eO8=;
 b=BIphAXyi6DRpXPAAXluDV429U1vj/McuIWITRV7U6vZvcGlE7IbbYKcE
 gHP8UTx/0i1SAQqetDsBKxHvMH+E7sXwc/20xwBCfAWQoje963SJYLoVJ
 1JVbloR8+p/inXDLrUXbknYINHkT9B8+mn+VFmZ3VzfTkF99MfxnuciG8
 zebmfvPE/PGMNhFyDnaMxU2szcWtxcg0Vh75IzBWxnQFU6WRNiNzdZhw6
 0VhBoQadAV6tN6Cc0AUhNCL+3vK2MWQksi+PpVbKN/m2Za08BfBiLAW03
 gB25lj0fnQ0XxxcDcYNDzxSoqwZerGHEjLKxlEsVdDtYz1CXtsiEFtlwm g==;
X-CSE-ConnectionGUID: Y/+Nh55rT6qwqNr9KDjKWg==
X-CSE-MsgGUID: XLcIqwiiQFeLSs4Wekfc6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11815"; a="82305739"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="82305739"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 09:32:45 -0700
X-CSE-ConnectionGUID: TUUbB3eZSRWw8c1LUuXrnA==
X-CSE-MsgGUID: kb1PgLKKSX+vO7U4C7jwGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="245751149"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 09:32:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 09:32:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 12 Jun 2026 09:32:43 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.52) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 09:32:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mjDHBsyCyUeJDPkZ33hCMOKGPR62MlVkfSSiSafIH1YRryVxl8BK2Ah9m/KRHLxb8dfIvZB8lQWdtUmJheGHnQ++rx0y0VnzU5Zq+12CXAMMKmM5mmk8VGNx3sUWK7fUhFSks1AVqt5yf9JXThafeXXNEBLG869gp9tb8cOeZ51Lx1P7N/0pohJFZmXNgfTCEo7Po/7uSCEhesdp2awu11rFL0v32q6cmlJ1vkKwyx47SHgntGKu4WUpMalzaVCHbFuQKlQmCeRNZTht/y3eQ56Nv9b/5Jg18TC5tvLBLsa1bSarPaA4LbiT/BwThaknpaqnNH6eW0mzja6lFd2OqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y59Jahga/PKwFJLwoBH1cZhOeW9ZgVLEaAU/vEXH4Bs=;
 b=glok0c85MYgfy0A/bDDlFC5TAphXbqgKhHYr8JE5d1R6IdsEA7rVzZ9frd/o9M5hY3RpTC9DUi8gyFlrVb9z8/IHD0xtYtUsNJcb+CaDeUs8QPNEcLMF50nN90jMdfeKD8z70H79FarBiFIJ/f6Vv4bnFABCUjMBnXYXH91kvRPh7DRa8mDpbCxw5nDH3ooYsQUW8y9MQn+PTsA3JqnFa1IGmAXfHgPZBKcjDBvrzhDkpjlw6Y07BwIvnf3yTA8Hf9H4hy1cqFPuUui1b8UQfLATYNrMIKrBkDVWFRh65BA5EqRpRA27CfSisEYHjOSBsJP6udihGz+vqcBM29yl3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by IA1PR11MB8149.namprd11.prod.outlook.com (2603:10b6:208:447::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Fri, 12 Jun
 2026 16:32:40 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0092.017; Fri, 12 Jun 2026
 16:32:40 +0000
Date: Fri, 12 Jun 2026 19:32:33 +0300
From: Imre Deak <imre.deak@intel.com>
To: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, Chaitanya Kumar
 Borah <chaitanya.kumar.borah@intel.com>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/dp: Prefer DSC over a 6 bpc uncompressed
 output
Message-ID: <aiw0oaqf6Obrg054@ideak-desk.lan>
References: <20260610174413.5881-1-alexander.kaplan@sms-medipool.de>
 <20260610174413.5881-2-alexander.kaplan@sms-medipool.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260610174413.5881-2-alexander.kaplan@sms-medipool.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DC25.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::10f) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|IA1PR11MB8149:EE_
X-MS-Office365-Filtering-Correlation-Id: c8aeb8a3-8ca5-4f16-2184-08dec8a03862
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|18002099003|3023799007|4143699003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: iiUJKRCL4wmeRnu78UyXybpawYe8fqh+p8cJsjCYZSEvPTh2wexPbmiVzHZUi7NAukqgMFujW6tTGrWGF5PAcYBNawLAfC31ccHBLs9kRGNpJbpanhWmDZ4p+gHhxmvF+pgMFwxwdTDeHruOnFJXu7oNW8MO++J0mPyZRpoY7Mpz61n4oQz6JTtWtuyMquyyGlSPnUhgjFgaii/dKohZemG/pEf3L1bioJLXpI2VxZFjM6EX8mhMqOaajyJZqEZuWCCi3/hod/ko+jcY6MdAycD7iAgz51Rme1DbzJvgq7XjFIh7CTsAChCpwywtViRT+h8qiODxTDzH0zqpAZCuMLun2AlgA5aoJEoEVT+cOKG3hDStXCVOA2KI3jQ1STI/tuOR4vP2+A0oc21UlZHxGxpC60fUzwR5VzNIf2YAgMNR/SQImLNrYCGqiXIK3vvft7T5Jeq6n5g3BWJOpgapobPF3fh+nXFBG2v8+Mw7Cky/CN8U04f8VIddIcSpwI8Pm95CRupJnhYMZF32M1bARDg3jfLSjTGxDbEo5e53sfBJoUcVTTJ1hR2MRB2OemPpzC1d3ekg5XbWu7fr2Z975ysDYmot5xvJVSnx3ZXKZ7pv+SEbNK59nhyz2NVAB1555ElbFvP8Tb34H5JgvliUS4y8u7OE92SH+SM1cNav6OredKAYjbg6/C9qmBx3Efyt
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(18002099003)(3023799007)(4143699003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?9FHUi498F+ASbS8cvjDVe5BlNcDEVn6Q9YXCH4BCPnS9BtYZOcgfY4F/8r?=
 =?iso-8859-1?Q?0zxHKaoON6bqy4gc3o4llGlfX/BaBFOzOKOI3ScITjyfKJ91hD7hZNbdKr?=
 =?iso-8859-1?Q?wt7PLsniA4/KlENoc/uajVNjVFR6FEKiBglcpCKrcwCORiGC6J89CBZieH?=
 =?iso-8859-1?Q?zjQKIUvg+ul8koRmXHgYKwzoVlbPzOlEFWv3o2m6zaMx+57sAFh0QyfKoB?=
 =?iso-8859-1?Q?f0sCM12PnNFnVRAlwyEnek7kxhWdnqj2wQKdF0Qw0CgJPd9ANwSKFxzhQ/?=
 =?iso-8859-1?Q?NWOX4xl2mdYpf8hNpEhjQBgMY5PAaK0HjD95ozpFnQVPGqXC10h6Z24HYX?=
 =?iso-8859-1?Q?etUrnQdY78XASFquZsDtD707Oxg2xGbwWyTcVmTPmMyfA0ZpkbfzXykDhR?=
 =?iso-8859-1?Q?RfbcZ+C1pqeD6s+PbTNv4M7JcTfzK5FmIpg8/Zwr8rzFi5wRD7UnfhZq9u?=
 =?iso-8859-1?Q?GMFcqs7VfRW0AGUogD7qsC3qz0tFoxHby/qFemceX2p7YOca22Ap9e6/OC?=
 =?iso-8859-1?Q?bK31KqiQOsoOMqtb0N8HeLv+RMoWBiK22UFkymN9di3/4CogW1JpCf3yu0?=
 =?iso-8859-1?Q?kgD44MOCBSxv+0CmvImNu3a2QAKgG5ZhI8eg16khWRggUUQ8spN6eb2tgi?=
 =?iso-8859-1?Q?/R3gLT8M1rxsDIosAyJc+4iWf+G8G7TFhpmjLGf6NtvTxDpbXAhnju8w5U?=
 =?iso-8859-1?Q?jIK/HxBBkRSN6iImf+lcrMwJjSfircBrdR9Lecuh8hDow1XOHzqrRW4F97?=
 =?iso-8859-1?Q?hHGDTXLj/6sAOlY82zt0YqX/+1X3XTFRT2pzyMmQA5e7hjcSxGDx8Qaqh6?=
 =?iso-8859-1?Q?4wnMcQQJAlzZL49E7agtQx5AVEA1sKPjrf52BTLSoyHGI4PIz5nc7yPx1t?=
 =?iso-8859-1?Q?p/7C9X142whRAtxkZW05sU4BKMtfoJ34aPwvt0SXpmkeAPnS98hGCgpWLs?=
 =?iso-8859-1?Q?0dlhbHpWeY/lgbMsHrVjHbxsG/h3KkgPsbz7rZqZ21VFseH/0ChM9QKHUk?=
 =?iso-8859-1?Q?MAm2woBEGQf6Glm2Apmji28I5w8rPuR74lgGb+7x7usu6LwaVuohIIhpER?=
 =?iso-8859-1?Q?suhX8mhMs48Rd1z79rzE2nMXh1/vLhBqCIlMIonIrU7Lj26i2VQwdn9WYb?=
 =?iso-8859-1?Q?b+QFXKntKpxD8a2XUo0anspIJ838Z4JLbULFRlySYZhVImNEyTYHWk1EX2?=
 =?iso-8859-1?Q?xl+uFuy9QqvbmM6PPFOQV30JmTdPeSsNm9gtMKTz8yIF9EzrrOP+lBLd9c?=
 =?iso-8859-1?Q?XW16uDLUnKrKxKzwUvmriZ8MPJjPhRgzwZdT8n04nz+7jY2Gt/c57ta5yj?=
 =?iso-8859-1?Q?8N/HY3/PKKIWMitHwdYggn7Lw3n3XA+Krs3Basl3yFRCOQD4Rj+OVSooGt?=
 =?iso-8859-1?Q?crxDbp+eiYY/2RhAJ+m7FeR+wKP+rBj00oMK34bab7efVYnwTdU3LoM1MH?=
 =?iso-8859-1?Q?B78vqcq/ba8swGfvWZwytHaOPHV0paoyzNniVx2YSqVVanEEuRRy0ygorL?=
 =?iso-8859-1?Q?h8yZjlCWS5df/Na1B9O1BhYxtgnAE4MMV02JjtTsIoeE2d/+03KkhOXHN2?=
 =?iso-8859-1?Q?7/YbCLrCghSSfTEpmi5am2cRTq81HREqrL7xVTc14ZeqP6xEYXY4y0e4Yj?=
 =?iso-8859-1?Q?VAOOpmNWJMdlmOb6AwP515FJu8c/6jJxT97vAZrc7rUhvl3z2qxQTkC8GU?=
 =?iso-8859-1?Q?3U7h255+0bIe9Ih+KiPK3t+lVy+woUyzBKWdhafDyH7/PdOpejaRk0ZtjM?=
 =?iso-8859-1?Q?q6JlxHRrQMgD1Ti0Ro+YSJuY/eKNtfO1IxpNUgHBPIycGs4eYIK9ui8DpZ?=
 =?iso-8859-1?Q?InxpOJ1rng=3D=3D?=
X-Exchange-RoutingPolicyChecked: qUtGFapabjGY3KJvS1DahRuh/KNF/onPuLtcK7EkjL2JLIvQgSGLTo5o1locjdk+wySz7qPf1WdMJejwkrZykYUqu9+6B27xGUNdFlVXT5K9PAD+05FnfaYTptuQgik8UnkOSGwnyupoWygnTBST7cEugBiPM0f+OLkppfQgAWQuHh7UaR1TvW0wmc2mZMj+Y7SE+LOwDQpDRaueHa03sBitEoiGWDupspnO/Z2sERg0L9fW3a5/X2tw92x+EYVWb2HZ2+U4OR+ppEF2x8orTJ0hm12k2NR5hu8auutNX7wOm6qKQTLBOhu38YGRpL8TdOVcWIJZlrBvw0PU8CKdJg==
X-MS-Exchange-CrossTenant-Network-Message-Id: c8aeb8a3-8ca5-4f16-2184-08dec8a03862
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2026 16:32:40.1149 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gBxecpLCT2QHO0kkc1EsAcRnkrMB6L3JeC/p88VJbth8JmHDATo449yjXxLcd1F+4RGkSiZXsh4vGWORDWgd4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8149
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:replyto,intel.com:email,intel.com:from_mime,sms-medipool.de:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,ideak-desk.lan:mid];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4E8467AF53

On Wed, Jun 10, 2026 at 07:44:11PM +0200, Alexander Kaplan wrote:
> For modes which fit through the link uncompressed only with a 6 bpc
> pipe BPP, the link config currently selects 6 bpc with dithering even
> if the sink supports DSC.
> DSC with an at least 8 bpc input provides a better output quality
> than a dithered 6 bpc output, so prefer it, following the pattern
> commit ba49a4643cf5 ("drm/i915/dp: Set min_bpp limit to 30 in HDR
> mode") uses for HDR: keep the uncompressed minimum pipe BPP at 8 bpc
> if the sink supports DSC, making the uncompressed link config fail
> for such modes and the mode fall back to DSC.
> As there, if the DSC computation fails, the mode falls back to YCbCr
> 4:2:0 where supported, or gets rejected.
> 
> Besides the output quality, some sinks can't even display a 6 bpc
> stream at high pixel clocks.
> Synaptics VMM PCON based DP to HDMI 2.1 adapters from two device
> families (branch device IDs SYNAq and SYNAa) output corrupted FRL
> timings for an uncompressed RGB 6 bpc 4k120 (1188 MHz) stream,
> resulting in a black screen, while the same mode works with DSC
> (12 bpc input) and 6 bpc works at lower pixel clocks.
> Windows and macOS drive 4k120 on these devices only via DSC.
> 
> A lower bpc limit explicitly requested via the max bpc connector
> property is still honored.
> This keeps the current uAPI behavior (exercised by IGT kms_dither)
> and provides an escape hatch for sinks with a broken DSC
> implementation.
> Sinks without DSC support keep falling back to 6 bpc.
> 
> Tested on PTL (xe) with the above PCONs and an LG OLED G4.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 85d3aa3b9894..13cfccf60490 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2839,6 +2839,18 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>  								     crtc_state)));
>  	}
>  
> +	/*
> +	 * Prefer DSC with an at least 8 bpc input over a dithered 6 bpc
> +	 * uncompressed output, by failing the uncompressed link config for
> +	 * modes which would fit only with a 6 bpc pipe BPP. Honor a lower
> +	 * limit set via the max bpc connector property.
> +	 */
> +	if (!dsc &&
> +	    intel_dp_supports_dsc(intel_dp, connector, crtc_state) &&
> +	    limits->pipe.max_bpp >= 24 &&
> +	    crtc_state->pipe_bpp >= 24)
> +		limits->pipe.min_bpp = max(limits->pipe.min_bpp, 24);

So, this would be a generalization for/instead of the HDR logic above
using a intel_dp_in_hdr_mode() ? 30 : 24 limit (which would also apply a
lower max-bpc limit for HDR as well).

Agree that DSC vs. dithering would probably produce a better image.

There could be other reasons to prefer DSC, like a more finegrained BW
allocation on MST links. But there are also reasons to prefer non-DSC
mode like power saving (no need to enable either a DSC encoder in the
source or a DSC decoder downstream), or reliability issues related to
DSC.

There's been a lot of talk internally about the above aspects and how to
handle them in a way suitable in all scenarios. Hence, I'm not sure if
adding more policies to the driver like the above bpp limit/DSC
preference is too ad-hoc/early or not at this point. At some point we
will need a better logic for sure to decide between DSC or non-DSC, but
that could be based on userspace tunable knobs for instance. Maybe
someone else could also weigh in on this.

> +
>  	if (limits->pipe.min_bpp <= 0 ||
>  	    limits->pipe.min_bpp > limits->pipe.max_bpp) {
>  		drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] Invalid pipe bpp range: %d-%d\n",
> -- 
> 2.54.0
> 
> 
