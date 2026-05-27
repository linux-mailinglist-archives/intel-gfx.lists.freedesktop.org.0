Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGIXNWY9F2qg9wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 20:52:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 215C95E93C7
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 20:52:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E732410E922;
	Wed, 27 May 2026 18:52:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UAhRdqRn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BAD310E91F;
 Wed, 27 May 2026 18:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779907938; x=1811443938;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=6ZvpeeBIrZeER4moEdXZoZl66+JKgflM0ugJ8JA/NUY=;
 b=UAhRdqRnWsO8Kfdz+nlHPhXfB6SACzRQOJX8uEU7PxTulpM+Pp3hEtMy
 KFj+Mzz6SV5MKLffIrQ0EWTywxte3w9R6sl8AD2rwiT6KGki5GQq+1qYI
 d4VURxJdeNRjOEo9kNh/DDeZ2F4vtczdy04ZoQVP63KnhyTAXgtsC4bne
 flYp21aGUOEjVSFOh6xmRfwimw+ltwVYmXnujyWECrbxzAjasbdIm31yX
 xH3zgTspXIXWxpazQcKiLBGZVF9J5/zbPGTlWPns7LK4EqHHmroR0wJ6v
 cJpE7dxV+7M4Iw5ewAsIAq5AUsj2ME38ZYpN/TOdgW03C0q8GvdnxCWuT w==;
X-CSE-ConnectionGUID: VWmOalZCT4+/q8kOOQec8A==
X-CSE-MsgGUID: MmAKTz48Q96/MilIxRESkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="91054880"
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="91054880"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 11:52:17 -0700
X-CSE-ConnectionGUID: +qI6+OFsQg6sqfl4fTi2AQ==
X-CSE-MsgGUID: KXNfvdbqTkCn5VvHpzWVGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="266204791"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 11:52:17 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 11:52:16 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 11:52:16 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.53) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 11:52:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v199a8ZtzSzaUNKCqKf1FoM7Q4MlxhBld/Qb+DDg2oNKi/IQcZDmRIVpgTmpcbPWVcnZ2oS+Vspp3oSzEckkldLHP2bgP7R098+NRnbjh2Nv5Io2tD97lTwws1IKQke3IBBG1lKJtFzvy3VJiCKt74k69Y25wbPjqrgkLuxA/Lcsix6Yzj679NFqmyFQ+sCoEUWsyWm1S0d+NBkLDrP9sgGei+nMHGsc0sddSdkvD9IU0WHtpY0lsM6fBEpH1spT+w+ax+qp1IADiSd79V497CVnFMjUnTVUYFmb5XNJ0f47Sq7xGL6ULjTJWAcliJEBsnmJ6WleljEh/sFqhkUvDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+1ZLB2asG5b578TD7Le5kv9nRQRPgCrD6v61xdCa/VU=;
 b=dGe9P+I+Lw8+nsMPSIWeH/bi5azFLaXOSC+CKc0WSCl3UXDF58F1pTvXB4fDPcoKIYRkb4GLsAg+CO3iB+T9wfELk0tLN6wfRa+vi8Q9dQEiDnUXcJZw6TbXH8n10GmxDuhpFk+3U1eOTMaNtW1cVgzkCzbhuc10Im4TPVXqM8g+pjwiOozgPEYE3O0UQQHN9hR6v7MqWuV0BipwGQnzD+FHaDuCLXRkpfjkssp8HprBDtv0Co7dWnXZ36RboLm8ijztY3AGjj+T7dALi7miQx5VXFfwe0d67aYNy4FB+OC3ufrVvjx/eEUWfzt+Brtf1NHwlxDsCo+4kd2wS5Ow/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by DSWPR11MB9929.namprd11.prod.outlook.com (2603:10b6:8:39d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.13; Wed, 27 May
 2026 18:52:14 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Wed, 27 May 2026
 18:52:14 +0000
Date: Wed, 27 May 2026 21:52:08 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/3] drm/{i915, xe}: move xe display shutdown and pm
 hooks to intel_display_driver.c
Message-ID: <ahc9WCALisq7cyrd@ideak-desk.lan>
References: <cover.1779887154.git.jani.nikula@intel.com>
 <b5d9bda0d181b8e1bb0834a977d2b632416a4a2c.1779887154.git.jani.nikula@intel.com>
 <ahcG2uqriNbcB8qY@intel.com>
 <7bd1fbcda840f3f382f29e67592b587ab844905d@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7bd1fbcda840f3f382f29e67592b587ab844905d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF000239F3.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2a5) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|DSWPR11MB9929:EE_
X-MS-Office365-Filtering-Correlation-Id: 40fb800e-feb1-4609-3bb8-08debc211122
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|5023799004|11063799006|4143699003|6133799003|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 5AFcCDemH15kFK/CtucJn5VP/CnA/3JDMToR8U2SDKlhAdHKvaOCG2EaD9jyl9AuLSoanaHa8C9SprGgZXgYJyOhxkVCA7yi0DHijYf+AgPn+8s9cwhQK1afORSlmE0ScM9JgwjPrLyiG1UYFTYbbdfsyC59fCeiso5Bz/6/dKIzXWWIAfSyJ5Mphu7XCmNB1Q0epZaklpvKUxPkqvv2dHQCF4AJmdQ6lyRTppB32IeWgeaq2rQ4ksiEppmxwbHEn7nOUCgTEVnktmOMSHx312/XAPlxYNTfP7GaWJW3x/ohgdhtDm75bS3VUvAAaxYSNZ19nrQizKir4G54bMrm2M8/tm1ir6yuvPaFFdDm87374x/E9d1p9CAOGamLXFLXxWqGOGtDmbS6hXQsqmY3o6/YbQog+Q4/V7PD2AHzNRckd12cKPLAXOX5F/VauzW15Fgm7z5xTx/h06PxDL2tFS2QCDPUb5KNLkqxYZf/46uTkuZlRH2pP3xiAVsPvsQmB4uXPXQ7DZ9bRZL2u6m+5PWHB+vkSV1bQgKocp0Qd2ZNTixjkkqPvCmahDbPMDJZ5UanRCSaeSpcEZ3djSdJZRwfcjKRxNeWQWNKTMukxS/auu5xgOa1MQq+gESWOURegKpGKBUvWTgs0QQ5wLWfCHC3uubMkzotg/QP6FxZeysqss9vstGKChTWPYNm4EOs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(5023799004)(11063799006)(4143699003)(6133799003)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?KxJIBMBPYbb3t3wOaVjZDX1YtAtmPowIrnXofRHFl5/V8ZwtSHsak03Y3E?=
 =?iso-8859-1?Q?ouoK9xsPUmWSbyUyEFuWbYK2Sb2HQVGIxx+oF+8XhMabycjTaz/LYpxckn?=
 =?iso-8859-1?Q?/jm2h5yC8hZArdbOjwNvgB/p8qUni5+KSTYwn+9OCAAls7fYUfFY1WOz63?=
 =?iso-8859-1?Q?bwbsoMPUHAYb/De4EDCYRKbxYTNcRNRbqbxa0XrQl2EZezYIsoRaoAndrt?=
 =?iso-8859-1?Q?c7w8hozv2I3jsFTByIonnBfYATu1CCJ7SMxG8H73G3jsXiIc7/mUUMmC54?=
 =?iso-8859-1?Q?8poi84QwZkhcrUjZZbbOoNu4JuzjY2AoA2FE7cem2und0ezHBQcOLJpZTw?=
 =?iso-8859-1?Q?34xUc1VmpYdFc/pwgaxc5C+5UP/Q2LCF0KNPpeIh2a+FA+pD019bUkmuxu?=
 =?iso-8859-1?Q?4BPWHUV+7RL8CD1zJlj0N9WuF63HWJ2dj3TKA8Z7I3TaP7H/sFFOjgoy+o?=
 =?iso-8859-1?Q?PurBOXQJLuIAIPZQVRPmgGTn0kUTahxWPOrZsiOCil1Rr+5i+27KGYRrz8?=
 =?iso-8859-1?Q?WNM+2gfzg5KH1qfXHM7Zgc2zboKErWmldjzc4fMHw/NMiZ+HsnhdB7e4ip?=
 =?iso-8859-1?Q?7RsF7Vu/79teCw/q6zpEMxOiCaC8XU7iOk2RKaYdZhw/TP1QfJ4PEzY3vn?=
 =?iso-8859-1?Q?iPsXkunQ/5zS7lnDRovFl7sLi3wplFTYRqyzMa6tpFNEbvL/XjIS/qSGTM?=
 =?iso-8859-1?Q?KAKypWlf1O5eA5fBpfiLKKVDAZKBkX4RsJcI/sSyDCaZLRP7cuxAZ8r8Tc?=
 =?iso-8859-1?Q?IzOhungJRCktIgx65343LA/yDiBMGomIIMcu5SRIzgOO4m/J+w7Ye1elvB?=
 =?iso-8859-1?Q?LhLZlAVcsZ3fEx6vrgPV365LR6zgJdZMQ8gFgoc9jTDAhwBtyVdNpcDt6l?=
 =?iso-8859-1?Q?MS+ekSSDMky7r47V0lE6iq6hsJu75J95O0dwU764uArLOygAX5k9idm9fv?=
 =?iso-8859-1?Q?G2lfO1XwQ6/hZpkJOfyyCY3Cml1jvQ9Q0sjliZ9KAUNy+9KxpO8HZ78tpM?=
 =?iso-8859-1?Q?wgPvMs7cdGk7Tbr70hCuQt+TlpXqJEj1ZI8wIXp5KImOdDMfnT8FfRLTle?=
 =?iso-8859-1?Q?FB/dOny7vIrYXaolILRER7lY7uHhDC6WTcQQAXf9X7ZoKfnfpz5Kjsm2eg?=
 =?iso-8859-1?Q?KhMAyTug+4g0Rth6z1JqjcL0MmLV5XYSj2H6FZ01dGdTfIguKb8a5LHVmP?=
 =?iso-8859-1?Q?hoFDpU7AJj0l7hMT7lurX/4Zf6DOoHzxuizBWaCvoHC7GrDroCUh9f9tYw?=
 =?iso-8859-1?Q?sngC0WuImyTAASz7H7jVD/5/jIqANXYoXBwwXhzmItQiMRYuOhOhbYhuqA?=
 =?iso-8859-1?Q?tgb883PXJWYZAl84lOHraE3gW2yN8cqZkmc43GKdODBN3Ih/JIHruOvItJ?=
 =?iso-8859-1?Q?J0nh7lA+QjUL5UzPfJteV+Rt+F9kwtsD4LglR2F2oIHvGf6Pkrbltl1C/Y?=
 =?iso-8859-1?Q?UdQuZClKd2NNfGwKQ/mTHc50VcUBUn9/H+6ZUM1sVNac9+Es9P/475bU+K?=
 =?iso-8859-1?Q?wIO0RKdy3JC/NkWlx4vwdUdvSqwjcYbk8sdhEgqpXLJv9OS9VgKSS2G0Cr?=
 =?iso-8859-1?Q?mI2rjo+v9SfYsxNOQ1/XiDLdlnm3IrO9fHFoX2TndxTdjOy0a6LusP/suu?=
 =?iso-8859-1?Q?+Xpau8cdHO0LVKj3bNdEXwX1FsRYV8ico9wjjn4C8O76vyXlFoaVS1bRlJ?=
 =?iso-8859-1?Q?muB8DU09lQ8F0qUyO69j/3zC6zjJlPgRl1vCLlMa9I9u7/mx4kXJX05cYs?=
 =?iso-8859-1?Q?Y4qIFW4YVpiyXFF3VkB190jHFz4IpZIYPsMwA5y1t/BWdZY3YO3NulDmys?=
 =?iso-8859-1?Q?XdgSbn4QHg=3D=3D?=
X-Exchange-RoutingPolicyChecked: pyi32KnTf2dJellq/fuIbdRGDFUsaBoIm4Zo1gEzjG91y+E4P+OhWo8tAK/Tf6MTtmbswAQ3VnOAnNd/fcyP20K4jcnq8AUsBFlhQYCFZ4oBZbols7CblwdBh98F6wX+Fj+GvYVH9LPAh/NlzwkCtVfOYtPg08LQ9uCvQuj1q4IbJkSRkmJGj0mRMBiOtVdG1RFVixR+/zG3xQ843gbvuwj97HgvGBi88A7YYsPplpvN33KFb64sgu0pZhQLYThevGp1GcOdcikdiRB6CIkmjaK2VdZvAstLLkQ4OJVFK0CY+aqi2/0Az5HpGA275MixR2UUZHBwKGwM2dzS27x6Aw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 40fb800e-feb1-4609-3bb8-08debc211122
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2026 18:52:14.3584 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g2ylatwojlLG732+UYNbbspoHBJ3vEm2ryOGuo9Q2/y2Nylb/LYaYh5ZodNuatm3EpF8wCCMo4aR6oPLoGzbOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9929
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 215C95E93C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 27, 2026 at 07:35:32PM +0300, Jani Nikula wrote:
> On Wed, 27 May 2026, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Wed, May 27, 2026 at 04:06:25PM +0300, Jani Nikula wrote:
> >> Move the xe display glue code for shutdown and pm hooks from
> >> xe_display.c to intel_display_driver.c. This is a small step towards
> >> unifying the display interfaces between i915 and xe drivers. The code
> >> belongs in display, not in i915 or xe driver. Neither the xe nor i915
> >> core code should be calling deep into display functionality.
> >> 
> >> The high level functions are obviously modeled after the xe driver
> >> now. The i915 driver needs to start calling them as well. For this, they
> >> may need to be further changed and refactored, but this needs to happen
> >> in display side.
> >> 
> >> Clean up xe_display.c includes as many of them become unnecessary.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  .../drm/i915/display/intel_display_driver.c   | 189 ++++++++++++++++++
> >>  .../drm/i915/display/intel_display_driver.h   |  12 ++
> >>  drivers/gpu/drm/xe/display/xe_display.c       | 185 ++---------------
> >>  3 files changed, 214 insertions(+), 172 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> >> index d0729936f681..15ba4c2ac985 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> >> @@ -43,6 +43,7 @@
> >>  #include "intel_dp_tunnel.h"
> >>  #include "intel_dpll.h"
> >>  #include "intel_dpll_mgr.h"
> >> +#include "intel_encoder.h"
> >>  #include "intel_fb.h"
> >>  #include "intel_fbc.h"
> >>  #include "intel_fbdev.h"
> >> @@ -780,3 +781,191 @@ void intel_display_driver_resume(struct intel_display *display)
> >>  	if (state)
> >>  		drm_atomic_commit_put(state);
> >>  }
> >> +
> >> +/*
> >> + * FIXME: The below interfaces are currently only being called from the xe
> >> + * driver code. They need to be unified with the needs of the i915 driver hooks,
> >> + * and i915 needs to migrate over to them.
> >> + */
> >> +
> >> +void intel_display_driver_shutdown(struct intel_display *display)
> >> +{
> >> +	intel_display_power_disable(display);
> >> +	drm_client_dev_suspend(display->drm);
> >> +
> >> +	if (intel_display_device_present(display)) {
> >> +		drm_kms_helper_poll_disable(display->drm);
> >> +		intel_display_driver_disable_user_access(display);
> >> +		intel_display_driver_suspend(display);
> >> +	}
> >> +
> >> +	intel_display_flush_cleanup_work(display);
> >> +	intel_dp_mst_suspend(display);
> >> +	intel_encoder_block_all_hpds(display);
> >> +	intel_hpd_cancel_work(display);
> >> +
> >> +	if (intel_display_device_present(display))
> >> +		intel_display_driver_suspend_access(display);
> >> +
> >> +	intel_encoder_suspend_all(display);
> >> +	intel_encoder_shutdown_all(display);
> >> +
> >> +	intel_opregion_suspend(display, PCI_D3cold);
> >> +
> >> +	intel_dmc_suspend(display);
> >> +}
> >> +
> >> +void intel_display_driver_shutdown_late(struct intel_display *display)
> >> +{
> >> +	/*
> >> +	 * The only requirement is to reboot with display DC states disabled,
> >> +	 * for now leaving all display power wells in the INIT power domain
> >> +	 * enabled.
> >> +	 */
> >> +	intel_display_power_driver_remove(display);
> >> +}
> >> +
> >> +static bool suspend_to_idle(void)
> >> +{
> >> +#if IS_ENABLED(CONFIG_ACPI_SLEEP)
> >> +	if (acpi_target_system_state() < ACPI_STATE_S3)
> >> +		return true;
> >> +#endif
> >> +	return false;
> >> +}
> >> +
> >> +void intel_display_driver_pm_enable_d3cold(struct intel_display *display)
> >> +{
> >> +	/*
> >> +	 * We do a lot of poking in a lot of registers, make sure they work
> >> +	 * properly.
> >> +	 */
> >> +	intel_display_power_disable(display);
> >
> > This stuff is not meant for runtime pm. xe just has some
> > obnoxious hacks in its runtime pm code to allow it to call
> > incorrect functions from its runtime pm paths without
> > deadlocks/etc.
> >
> > I think the xe hacks need to be killed and runtime pm
> > implemented there *correctly* before we base any common
> > code on the xe implementation.
> >
> > We should perhaps start from the i915 implementation
> > instead. That might help properly highlight all the
> > bogus things that xe is doing.
> 
> There are a few reasons why I chose to start off with xe like this.
> 
> The granularity of functions are a fairly good starting point for a
> shared implementation. Simply moving them over from xe to display in a
> non-functional way reduces xe_display.c dependency deep into display
> functionality. It's forward progress with no risk for regressions.
> 
> Sure, we could define similar functions for i915 to call, but that's
> going to contain functional changes from about patch #1, because i915
> calls deep into display in a very scattered way. With the approach at
> hand, we can gradually move i915 over to the new stuff, even function by
> function, comparing the sequences, making small changes to either along
> the way, as the case may be.
> 
> From my POV the end result is going to be the same. The difference is in
> the path we choose.
> 
> Of course, there's also the problem that I don't know for sure what all
> the hacks are that you refer to, or what implementing runtime PM
> correctly there means.

From the peanut gallery: the hack I suppose is the mechanism in the xe
driver to allow the driver's runtime suspend/resume hooks to get a
runtime PM reference. Everywhere else in the kernel (at least to my
knowledge) this is forbidden, since getting an RPM reference itself
requires 1. waiting for any pending runtime suspend hook to finish, 2.
run and complete the runtime resume hook. Hence getting an RPM reference
from the suspend/resume hooks themselves is a re-entrancy problem (and
others, like unexpectedly not actually enabling some power resource,
depending on the exact point in the hooks the RPM reference is
acquired).

One reason for adding the above mechanism (I assume) was the
implemenation of the D3cold enabling/disabling during runtime
suspend/resume, which do get an RPM reference. The solution would be -
for this one particular part - to change the D3cold enabling/disabling
sequence not to acquire any RPM reference. The rest of the runtime
suspend/resume sequence should be also converted not to rely on getting
an RPM reference.

> The d3cold stuff (including those intel_display_power_disable/enable()
> calls) is hidden behind a flag that only gets called for xe, which I
> guess is a bit lame, but also isolates it from the rest.
> 
> I guess to me it's often more important to be able to make meaningful
> forward progress without stalling right in the beginning. It does defer
> tackling the hard problems instead of confronting them right away, but
> it also makes it possible for the solutions to present themselves while
> making progress, without banging head on the wall so much.
> 
> *shrug*
> 
> I can also start looking at going the i915 route. But Someone(tm) needs
> to look at xe runtime suspend/resume/etc. in the mean time.
> 
> 
> BR,
> Jani.
> 
> 
> >
> >> +
> >> +	intel_display_flush_cleanup_work(display);
> >> +
> >> +	intel_opregion_suspend(display, PCI_D3cold);
> >> +
> >> +	intel_dmc_suspend(display);
> >> +
> >> +	if (intel_display_device_present(display))
> >> +		intel_hpd_poll_enable(display);
> >> +}
> >> +
> >> +void intel_display_driver_pm_disable_d3cold(struct intel_display *display)
> >> +{
> >> +	intel_dmc_resume(display);
> >> +
> >> +	if (intel_display_device_present(display))
> >> +		drm_mode_config_reset(display->drm);
> >> +
> >> +	intel_display_driver_init_hw(display);
> >> +
> >> +	intel_hpd_init(display);
> >> +
> >> +	if (intel_display_device_present(display))
> >> +		intel_hpd_poll_disable(display);
> >> +
> >> +	intel_opregion_resume(display);
> >> +
> >> +	intel_display_power_enable(display);
> >> +}
> >> +
> >> +void intel_display_driver_pm_suspend(struct intel_display *display)
> >> +{
> >> +	bool s2idle = suspend_to_idle();
> >> +
> >> +	/*
> >> +	 * We do a lot of poking in a lot of registers, make sure they work
> >> +	 * properly.
> >> +	 */
> >> +	intel_display_power_disable(display);
> >> +	drm_client_dev_suspend(display->drm);
> >> +
> >> +	if (intel_display_device_present(display)) {
> >> +		drm_kms_helper_poll_disable(display->drm);
> >> +		intel_display_driver_disable_user_access(display);
> >> +		intel_display_driver_suspend(display);
> >> +	}
> >> +
> >> +	intel_display_flush_cleanup_work(display);
> >> +
> >> +	intel_encoder_block_all_hpds(display);
> >> +
> >> +	intel_hpd_cancel_work(display);
> >> +
> >> +	if (intel_display_device_present(display)) {
> >> +		intel_display_driver_suspend_access(display);
> >> +		intel_encoder_suspend_all(display);
> >> +	}
> >> +
> >> +	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
> >> +
> >> +	intel_dmc_suspend(display);
> >> +}
> >> +
> >> +void intel_display_driver_pm_suspend_late(struct intel_display *display)
> >> +{
> >> +	bool s2idle = suspend_to_idle();
> >> +
> >> +	intel_display_power_suspend_late(display, s2idle);
> >> +}
> >> +
> >> +void intel_display_driver_pm_resume_early(struct intel_display *display)
> >> +{
> >> +	intel_display_power_resume_early(display);
> >> +}
> >> +
> >> +void intel_display_driver_pm_resume(struct intel_display *display)
> >> +{
> >> +	intel_dmc_resume(display);
> >> +
> >> +	if (intel_display_device_present(display))
> >> +		drm_mode_config_reset(display->drm);
> >> +
> >> +	intel_display_driver_init_hw(display);
> >> +
> >> +	if (intel_display_device_present(display))
> >> +		intel_display_driver_resume_access(display);
> >> +
> >> +	intel_hpd_init(display);
> >> +
> >> +	intel_encoder_unblock_all_hpds(display);
> >> +
> >> +	if (intel_display_device_present(display)) {
> >> +		intel_display_driver_resume(display);
> >> +		drm_kms_helper_poll_enable(display->drm);
> >> +		intel_display_driver_enable_user_access(display);
> >> +	}
> >> +
> >> +	if (intel_display_device_present(display))
> >> +		intel_hpd_poll_disable(display);
> >> +
> >> +	intel_opregion_resume(display);
> >> +
> >> +	drm_client_dev_resume(display->drm);
> >> +
> >> +	intel_display_power_enable(display);
> >> +}
> >> +
> >> +void intel_display_driver_pm_runtime_suspend(struct intel_display *display)
> >> +{
> >> +	intel_hpd_poll_enable(display);
> >> +}
> >> +
> >> +void intel_display_driver_pm_runtime_suspend_late(struct intel_display *display)
> >> +{
> >> +	/*
> >> +	 * If xe_display_pm_suspend_late() is not called, it is likely
> >> +	 * that we will be on dynamic DC states with DMC wakelock enabled. We
> >> +	 * need to flush the release work in that case.
> >> +	 */
> >> +	intel_dmc_wl_flush_release_work(display);
> >> +}
> >> +
> >> +void intel_display_driver_pm_runtime_resume(struct intel_display *display)
> >> +{
> >> +	intel_hpd_init(display);
> >> +	intel_hpd_poll_disable(display);
> >> +	skl_watermark_ipc_update(display);
> >> +}
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
> >> index 5270c26a32e0..e4ce17efe793 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> >> @@ -26,6 +26,8 @@ void intel_display_driver_remove_nogem(struct intel_display *display);
> >>  void intel_display_driver_unregister(struct intel_display *display);
> >>  int intel_display_driver_suspend(struct intel_display *display);
> >>  void intel_display_driver_resume(struct intel_display *display);
> >> +void intel_display_driver_shutdown(struct intel_display *display);
> >> +void intel_display_driver_shutdown_late(struct intel_display *display);
> >>  
> >>  /* interface for intel_display_reset.c */
> >>  int __intel_display_driver_resume(struct intel_display *display,
> >> @@ -38,5 +40,15 @@ void intel_display_driver_suspend_access(struct intel_display *display);
> >>  void intel_display_driver_resume_access(struct intel_display *display);
> >>  bool intel_display_driver_check_access(struct intel_display *display);
> >>  
> >> +void intel_display_driver_pm_enable_d3cold(struct intel_display *display);
> >> +void intel_display_driver_pm_disable_d3cold(struct intel_display *display);
> >> +void intel_display_driver_pm_suspend(struct intel_display *display);
> >> +void intel_display_driver_pm_suspend_late(struct intel_display *display);
> >> +void intel_display_driver_pm_resume_early(struct intel_display *display);
> >> +void intel_display_driver_pm_resume(struct intel_display *display);
> >> +void intel_display_driver_pm_runtime_suspend(struct intel_display *display);
> >> +void intel_display_driver_pm_runtime_suspend_late(struct intel_display *display);
> >> +void intel_display_driver_pm_runtime_resume(struct intel_display *display);
> >> +
> >>  #endif /* __INTEL_DISPLAY_DRIVER_H__ */
> >>  
> >> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> >> index a18af4d96dd1..6aba5668e4df 100644
> >> --- a/drivers/gpu/drm/xe/display/xe_display.c
> >> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> >> @@ -6,36 +6,22 @@
> >>  #include "xe_display.h"
> >>  #include "regs/xe_irq_regs.h"
> >>  
> >> -#include <linux/fb.h>
> >> -
> >> -#include <drm/drm_client.h>
> >> -#include <drm/drm_client_event.h>
> >>  #include <drm/drm_drv.h>
> >>  #include <drm/drm_managed.h>
> >> -#include <drm/drm_probe_helper.h>
> >>  #include <drm/intel/display_member.h>
> >>  #include <drm/intel/display_parent_interface.h>
> >> -#include <uapi/drm/xe_drm.h>
> >>  
> >> -#include "intel_acpi.h"
> >>  #include "intel_audio.h"
> >>  #include "intel_bw.h"
> >> -#include "intel_display.h"
> >> -#include "intel_display_core.h"
> >>  #include "intel_display_device.h"
> >>  #include "intel_display_driver.h"
> >>  #include "intel_display_irq.h"
> >> -#include "intel_display_types.h"
> >> -#include "intel_dmc.h"
> >> -#include "intel_dmc_wl.h"
> >> -#include "intel_dp.h"
> >> +#include "intel_display_power.h"
> >>  #include "intel_dram.h"
> >> -#include "intel_encoder.h"
> >>  #include "intel_fbdev.h"
> >>  #include "intel_hdcp.h"
> >>  #include "intel_hotplug.h"
> >>  #include "intel_opregion.h"
> >> -#include "skl_watermark.h"
> >>  #include "xe_device.h"
> >>  #include "xe_display_bo.h"
> >>  #include "xe_display_pcode.h"
> >> @@ -235,97 +221,14 @@ void xe_display_irq_postinstall(struct xe_device *xe)
> >>  	intel_display_irq_postinstall(display);
> >>  }
> >>  
> >> -static bool suspend_to_idle(void)
> >> -{
> >> -#if IS_ENABLED(CONFIG_ACPI_SLEEP)
> >> -	if (acpi_target_system_state() < ACPI_STATE_S3)
> >> -		return true;
> >> -#endif
> >> -	return false;
> >> -}
> >> -
> >> -static void xe_display_enable_d3cold(struct xe_device *xe)
> >> -{
> >> -	struct intel_display *display = xe->display;
> >> -
> >> -	if (!xe->info.probe_display)
> >> -		return;
> >> -
> >> -	/*
> >> -	 * We do a lot of poking in a lot of registers, make sure they work
> >> -	 * properly.
> >> -	 */
> >> -	intel_display_power_disable(display);
> >> -
> >> -	intel_display_flush_cleanup_work(display);
> >> -
> >> -	intel_opregion_suspend(display, PCI_D3cold);
> >> -
> >> -	intel_dmc_suspend(display);
> >> -
> >> -	if (intel_display_device_present(display))
> >> -		intel_hpd_poll_enable(display);
> >> -}
> >> -
> >> -static void xe_display_disable_d3cold(struct xe_device *xe)
> >> -{
> >> -	struct intel_display *display = xe->display;
> >> -
> >> -	if (!xe->info.probe_display)
> >> -		return;
> >> -
> >> -	intel_dmc_resume(display);
> >> -
> >> -	if (intel_display_device_present(display))
> >> -		drm_mode_config_reset(&xe->drm);
> >> -
> >> -	intel_display_driver_init_hw(display);
> >> -
> >> -	intel_hpd_init(display);
> >> -
> >> -	if (intel_display_device_present(display))
> >> -		intel_hpd_poll_disable(display);
> >> -
> >> -	intel_opregion_resume(display);
> >> -
> >> -	intel_display_power_enable(display);
> >> -}
> >> -
> >>  void xe_display_pm_suspend(struct xe_device *xe)
> >>  {
> >>  	struct intel_display *display = xe->display;
> >> -	bool s2idle = suspend_to_idle();
> >>  
> >>  	if (!xe->info.probe_display)
> >>  		return;
> >>  
> >> -	/*
> >> -	 * We do a lot of poking in a lot of registers, make sure they work
> >> -	 * properly.
> >> -	 */
> >> -	intel_display_power_disable(display);
> >> -	drm_client_dev_suspend(&xe->drm);
> >> -
> >> -	if (intel_display_device_present(display)) {
> >> -		drm_kms_helper_poll_disable(&xe->drm);
> >> -		intel_display_driver_disable_user_access(display);
> >> -		intel_display_driver_suspend(display);
> >> -	}
> >> -
> >> -	intel_display_flush_cleanup_work(display);
> >> -
> >> -	intel_encoder_block_all_hpds(display);
> >> -
> >> -	intel_hpd_cancel_work(display);
> >> -
> >> -	if (intel_display_device_present(display)) {
> >> -		intel_display_driver_suspend_access(display);
> >> -		intel_encoder_suspend_all(display);
> >> -	}
> >> -
> >> -	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
> >> -
> >> -	intel_dmc_suspend(display);
> >> +	intel_display_driver_pm_suspend(display);
> >>  }
> >>  
> >>  void xe_display_shutdown(struct xe_device *xe)
> >> @@ -335,29 +238,7 @@ void xe_display_shutdown(struct xe_device *xe)
> >>  	if (!xe->info.probe_display)
> >>  		return;
> >>  
> >> -	intel_display_power_disable(display);
> >> -	drm_client_dev_suspend(&xe->drm);
> >> -
> >> -	if (intel_display_device_present(display)) {
> >> -		drm_kms_helper_poll_disable(&xe->drm);
> >> -		intel_display_driver_disable_user_access(display);
> >> -		intel_display_driver_suspend(display);
> >> -	}
> >> -
> >> -	intel_display_flush_cleanup_work(display);
> >> -	intel_dp_mst_suspend(display);
> >> -	intel_encoder_block_all_hpds(display);
> >> -	intel_hpd_cancel_work(display);
> >> -
> >> -	if (intel_display_device_present(display))
> >> -		intel_display_driver_suspend_access(display);
> >> -
> >> -	intel_encoder_suspend_all(display);
> >> -	intel_encoder_shutdown_all(display);
> >> -
> >> -	intel_opregion_suspend(display, PCI_D3cold);
> >> -
> >> -	intel_dmc_suspend(display);
> >> +	intel_display_driver_shutdown(display);
> >>  }
> >>  
> >>  void xe_display_pm_runtime_suspend(struct xe_device *xe)
> >> @@ -368,22 +249,21 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
> >>  		return;
> >>  
> >>  	if (xe->d3cold.allowed) {
> >> -		xe_display_enable_d3cold(xe);
> >> +		intel_display_driver_pm_enable_d3cold(display);
> >>  		return;
> >>  	}
> >>  
> >> -	intel_hpd_poll_enable(display);
> >> +	intel_display_driver_pm_runtime_suspend(display);
> >>  }
> >>  
> >>  void xe_display_pm_suspend_late(struct xe_device *xe)
> >>  {
> >>  	struct intel_display *display = xe->display;
> >> -	bool s2idle = suspend_to_idle();
> >>  
> >>  	if (!xe->info.probe_display)
> >>  		return;
> >>  
> >> -	intel_display_power_suspend_late(display, s2idle);
> >> +	intel_display_driver_pm_suspend_late(display);
> >>  }
> >>  
> >>  void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
> >> @@ -394,14 +274,9 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
> >>  		return;
> >>  
> >>  	if (xe->d3cold.allowed)
> >> -		xe_display_pm_suspend_late(xe);
> >> +		intel_display_driver_pm_suspend_late(display);
> >>  
> >> -	/*
> >> -	 * If xe_display_pm_suspend_late() is not called, it is likely
> >> -	 * that we will be on dynamic DC states with DMC wakelock enabled. We
> >> -	 * need to flush the release work in that case.
> >> -	 */
> >> -	intel_dmc_wl_flush_release_work(display);
> >> +	intel_display_driver_pm_runtime_suspend_late(display);
> >>  }
> >>  
> >>  void xe_display_shutdown_late(struct xe_device *xe)
> >> @@ -411,12 +286,7 @@ void xe_display_shutdown_late(struct xe_device *xe)
> >>  	if (!xe->info.probe_display)
> >>  		return;
> >>  
> >> -	/*
> >> -	 * The only requirement is to reboot with display DC states disabled,
> >> -	 * for now leaving all display power wells in the INIT power domain
> >> -	 * enabled.
> >> -	 */
> >> -	intel_display_power_driver_remove(display);
> >> +	intel_display_driver_shutdown_late(display);
> >>  }
> >>  
> >>  void xe_display_pm_resume_early(struct xe_device *xe)
> >> @@ -426,7 +296,7 @@ void xe_display_pm_resume_early(struct xe_device *xe)
> >>  	if (!xe->info.probe_display)
> >>  		return;
> >>  
> >> -	intel_display_power_resume_early(display);
> >> +	intel_display_driver_pm_resume_early(display);
> >>  }
> >>  
> >>  void xe_display_pm_resume(struct xe_device *xe)
> >> @@ -436,34 +306,7 @@ void xe_display_pm_resume(struct xe_device *xe)
> >>  	if (!xe->info.probe_display)
> >>  		return;
> >>  
> >> -	intel_dmc_resume(display);
> >> -
> >> -	if (intel_display_device_present(display))
> >> -		drm_mode_config_reset(&xe->drm);
> >> -
> >> -	intel_display_driver_init_hw(display);
> >> -
> >> -	if (intel_display_device_present(display))
> >> -		intel_display_driver_resume_access(display);
> >> -
> >> -	intel_hpd_init(display);
> >> -
> >> -	intel_encoder_unblock_all_hpds(display);
> >> -
> >> -	if (intel_display_device_present(display)) {
> >> -		intel_display_driver_resume(display);
> >> -		drm_kms_helper_poll_enable(&xe->drm);
> >> -		intel_display_driver_enable_user_access(display);
> >> -	}
> >> -
> >> -	if (intel_display_device_present(display))
> >> -		intel_hpd_poll_disable(display);
> >> -
> >> -	intel_opregion_resume(display);
> >> -
> >> -	drm_client_dev_resume(&xe->drm);
> >> -
> >> -	intel_display_power_enable(display);
> >> +	intel_display_driver_pm_resume(display);
> >>  }
> >>  
> >>  void xe_display_pm_runtime_resume(struct xe_device *xe)
> >> @@ -474,13 +317,11 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
> >>  		return;
> >>  
> >>  	if (xe->d3cold.allowed) {
> >> -		xe_display_disable_d3cold(xe);
> >> +		intel_display_driver_pm_disable_d3cold(display);
> >>  		return;
> >>  	}
> >>  
> >> -	intel_hpd_init(display);
> >> -	intel_hpd_poll_disable(display);
> >> -	skl_watermark_ipc_update(display);
> >> +	intel_display_driver_pm_runtime_resume(display);
> >>  }
> >>  
> >>  
> >> -- 
> >> 2.47.3
> 
> -- 
> Jani Nikula, Intel
