Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zC9dBGZVVmpD3gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:27:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 645A37566B9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:27:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=f4sScRgc;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE09910E8D5;
	Tue, 14 Jul 2026 15:27:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D6F210E6D6;
 Tue, 14 Jul 2026 15:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784042849; x=1815578849; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=ld4Yapo3IDwrMgZnrMutipogtohUvGWdOy6kyQjppz8=;
 b=f4sScRgcs2upRIdvwSo7bpKeRcsAboNHUfmAl7eX2K3u17ucT1K4U8LN
 N5DBpJQJ3PAd0BvIZU9pcMfDbzXbwPYFPNrPwDje621bw66hc6hUCqfK9
 UZmg5CrYI1mLAmAkkNjIRCgE8WIwfMuCC3Ff7D4Tja0+0uuwC/SsO8gJ9
 neVI6sJa7EkDx2NdTsck26x1ukkQmVO9kTc1+errz6XmMk54qjEiXgP1B
 xZKDBKksPss4fWWKBnuwaY5gbaoBNIuzUWWgAH4nSy5kF4ir7b3g3DUMi
 fpvHCQECH3KVKixSbI+A0ZEY3ihJpvjU7b8XM8zSK5vDifiXk0zZ2hFV9 A==;
X-CSE-ConnectionGUID: u4OBuVplQpeIypLtV3HvXg==
X-CSE-MsgGUID: FqSqAzazSM6Jmu0NyA88rA==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="102222364"
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="102222364"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:27:29 -0700
X-CSE-ConnectionGUID: Qm7XtjqeRFazfNqdFpq2QQ==
X-CSE-MsgGUID: p+O0d76nQ5K677FmJEeZCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="280309681"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:27:28 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:27:28 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 08:27:28 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:27:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RexbgzL4yspZaCcoBgUi6IkbgC7mP2JdEe6EF1yUKviz9WH6pwk4cXXKFA/VUunMtpJR2/QgzFHctcHzyvwkzZ0Dr3h9JBg8dnGZCCdIRIc+dTBBc/UsF+1XihTAoYrKBlmR2xP7OP/mm0eWkrJC70hMAf/0g4hjcI86XY2vYOAIoRqpewYy8mo/pwpjZgocTuMRwDU2B+78F5JYpVB3DlaMD9Dj6mIu5zR9adyPDNKhAR3Kip16G0pgub7A/wFqkTV9mDOaJAQpJ7l3m31PfZsQtwk6B2gY2PjjFrD6Gqt+jPGP9EW/QZnaOYBZMjNQrtO4HxjUdEKA11jR9SKKCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B7AoxdvhKO4D/gyHH9FwKQbtAg3qPAku30mn85z7tQE=;
 b=gvDzw3RKqfZakedi83RFnCUxmezsUgcPGmjMBvvoEGGR5NwNQ70dxJjlXJ/WuJGl+S0xpJjzWLZWEYuVP22wto/0nXkBqcgrAUE/WlS/7iL6fX1Vl2vKUzE/xpBMzZ1X0bXkEtlshWZo5fswQ8artWKERruXfmf/Hj24Ny3xUhXXnzZIyFo8fydHfnxiSOjNwTt7wsInH5XoihuGwWRXKM2bcKbd4DP9ie+2GPPKnWlsWEoXt9MyKOe96z+5GDSp2CRqENwmSFnFtCHc/lnAcC4dA8ZP1rz1FAiiJ9bfSyU2U/KB3wZaRT9chIXamMyOWtDyEIr9Mb5ENmiaQWBPdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by DSWPR11MB9956.namprd11.prod.outlook.com (2603:10b6:8:3a4::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.9; Tue, 14 Jul
 2026 15:27:27 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 15:27:26 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 0/6] drm/i915/dp: Enable UHBR link rates on tunneled links
Date: Tue, 14 Jul 2026 18:26:54 +0300
Message-ID: <20260714152700.555527-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF00073CE8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1d1) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|DSWPR11MB9956:EE_
X-MS-Office365-Filtering-Correlation-Id: 315ac84b-054f-462e-0b93-08dee1bc68eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|18002099003|11063799006|56012099006|6133799003;
X-Microsoft-Antispam-Message-Info: gpaU5++XGQdBhfiv+D6Um+1Al+70tSCBiEJ7uAzuRPec+VfAnTqPjb9duob2+8V9u03EefvqT5Mzz97zB1B8wfGrSNrWsoS1J0diPg+7HUBRjrrObmhXBgA6dtHYKuABgnuc2U5bYCe/HcGfB/cbyruFZUvI4eXLrm2/Y8FTxdHfqWabeXy6cSloGzeNEhKUB5i5oDZi088pyApW5ntkjqSlBRtUVlEnFnQHJI4MPfzFIbYcoHnP1JZpNqrhoypisKhod+0omZ0q/3gIkJ7pi03GWPxudS8FUWfBbYXyuPX6SoybMlV6XWcgcYfjM0r1SVtpcsi+7S1xc1F/C5eRMUfjW5ImEHLqOJA3Pm9m6/K+i6pcO2giQwVql8ldpWxQdpMNCQRYhRr13fcV9jV0OPKggpnn0gIj98fjden0pGyoArcstUhVA7hUfc7aQyZFSCzJYvXpTB3WGPXEpE9ybXlDdpRE72RI7ICIRcOweBEaReYo/5UGcgFMX+RDqaM0fbXGPjf/L3mfBsMd3W6oYuH9Zx2I9RepzDLqKyC9fd8HTc9cgPDShQyqEogbnS/BgXx97if1tCDeaNfqlsF5njs31g9o2xLXDctgl9MgV0GHh5UjEFzp3aASFV0OsWsheMfq5emlbdpHpLzO3rZ6pYSlFRGBmoG82E8VX+uIPqc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(18002099003)(11063799006)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ws9W9HNQ/ekwYB5FhxgzJSOPuxW1Z+1H4BoQ12KB/Y2AC8N0oYk1MZiQAXNK?=
 =?us-ascii?Q?6Iax1wWizkw5MGn8LIxuIe5JVCWVQyULjXe9qaOgFjOpNT7zTKpUUnyodi/h?=
 =?us-ascii?Q?k3OrcT9qLt1a1D3mi6HfgjiaXqxdt66SXwv6U8WnFftEA5DkISmzcie818cU?=
 =?us-ascii?Q?eDB7vOeVsx3UF2E68UCqJknujj8DUQVJejTJmHF66wLOIMsds8lS1s8WIitw?=
 =?us-ascii?Q?3nrc0twUyRtU6cyfN0C3ZPtho1cXYOECGzOS1Fsf0VP2M6B3skoBQ09V0jC1?=
 =?us-ascii?Q?SGUpr42W+Od6sruXWSIpVlW1fan66vPqsMfLigePnLrtYU6mgDwdMN7cBL2Z?=
 =?us-ascii?Q?0p94sMkSebTQGsvmFdSkPvYBWv7lWKoL8xuNLc0S5YaekDQTcVQbhAa04naW?=
 =?us-ascii?Q?7/+VmOnSL/18oqq2i43XECWD8cnZ2T32DhgFhZ51TsIol81b0pwvQ+DTXINW?=
 =?us-ascii?Q?Oo2tP1szizq1+zbU2Bxf+cXUyPB7p2XjKHkCysDNqO+H03m2R48oOGv2gmPe?=
 =?us-ascii?Q?OA85xb1K1djXQPBWxGsd0LJ/OQKEa4OmyFrrzqwsWwQsDf7eXLXt5sFiJWYV?=
 =?us-ascii?Q?R7JVtQxD+IU7QR68toll0OCOPbTV9PeB2AsCShICDaO8GOkyOOuKmerGWR97?=
 =?us-ascii?Q?zECXTlfoe4VoEyQBxU1LsyNrhEpihIRinqM1nU/STZ0M7Sk4rHGtArcPSzKs?=
 =?us-ascii?Q?kYQAIujckev7MN3znxSfvqJaMDuAi802ygsmg0zsxQw1lrGg/zS1u7Tet4Rc?=
 =?us-ascii?Q?kIcBgI9a9msuvmhuvtv8E/Yhk860erBor02j1NxH8aiCDrq/fZImTNG2hPB1?=
 =?us-ascii?Q?idv3grur1f/Fv++3lJb2P2q1haZdYFF9NV1esXxeeizaeQlS9yHCYWJDqNgW?=
 =?us-ascii?Q?6VNWwxNc4rcO0zLUK6l4lo/kJDOvX65QqIf0ZNeC97vHbrrNojn955NcOAnd?=
 =?us-ascii?Q?b3BZ5CAr4RCniMLtPdsazjgkvSBvFfVrjeZ2dyxW/GHq5Bv+MkmP1mfJ55fn?=
 =?us-ascii?Q?3dHAVx718AZ3tzJlqSIIGHZCcmzjQlIhBQyWsVTWiZObdg1j1tuAGJGgYPOj?=
 =?us-ascii?Q?uV2EgAAVdm/4GtySJQJrRVSlgj0rWwIC2AoAgAPKrGTg7IqCUzpRlxHchIBa?=
 =?us-ascii?Q?9plfoYWI4Bl7tmTdP8egGQj/bFajOWM+MN2At/UPIF771/uYNPqJwuxuCScs?=
 =?us-ascii?Q?d3g2XFbLvZzQv+fD25PHQ/ldkoLZ0+LCvQEV+EqTwf7RuWW1BVUYzmS/u9SL?=
 =?us-ascii?Q?t9unOobe9fuKZK8HAUDvRPrj6fKYfeWoNtkwwzEaCAfGxdMsU2ReNJNehmpC?=
 =?us-ascii?Q?VsUNhDuNf01sf3sqjqnO0ZRU5ibn1LtkUUvyxwCioatkbj6Sw26K4CPsi9zy?=
 =?us-ascii?Q?LwzRC0Zvq6XAPRXXzOaLYan+RdaeQ95si1yTYMfKxbNksXHV2VmxAlhCLQAf?=
 =?us-ascii?Q?DO6Td5z80J78yay3RNIhsG5zvF15ZzyFLiiHDMF2mp/WB7AI23GJuc3qqseP?=
 =?us-ascii?Q?1BQ+rubUrzC4XRk4q+IyyhqCZN1qfbpwRVHcBn86/JIHMONBKDzl52ox4t0f?=
 =?us-ascii?Q?df2Ri76p2fPLlorCbDlIzzeEVNECPkPKkIlJztJa5dPNEzd43J4UwjwzAkJp?=
 =?us-ascii?Q?1cAuKSL6My+EMmS9f4es0crgleX3FUyxPJv8Tr7cKRIOUMBsqeko9ijEqxi3?=
 =?us-ascii?Q?4Irdipm+pTIQsd4zA2qDOwRDuo1xP74xUm/IzTy6kp3rfDezv9bXrzuK9zMl?=
 =?us-ascii?Q?UdFmeQYmxA=3D=3D?=
X-Exchange-RoutingPolicyChecked: cUmn9AoPxeeNl6q61xzYMcno6HlFVwue1JufSPUSFFm4j0l/LSyOo3SMQY0FfGJekgNEkSX3LEvMIEv2iqkNJPm5ixDHZWBpO+iS7JpKm8rkyONsFYWg1E9i77oeCq8KLW+M8q8K6lfO8EOnMs/18SMylY5wPOq7T2voy9Xr/ErDnA5ASDAK+QcsQL+ifzpbKWLXlSjY105pjObHZYREtTzp3x3Vq7q4Awd6tAUpc3TLInxX1yMh+na9HYmfJusqbm0NwkvvB1NcuVsWfCNvDI4WrHkjFqkTYUDFbT0Pc+2HbtdBIAMNzYwzraHF7GqPspzvhuj6ypKOB8trByHSyw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 315ac84b-054f-462e-0b93-08dee1bc68eb
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2026 15:27:26.6645 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gY1kOgkhxtvWSaPsWjLXgsUBCUFj6aOlZCNmVRTN80E46G/YCV+Mvqf7XkCxDOY9F9UwbT8S684FVYX5i0Ll7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9956
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:dkim,intel.com:mid,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 645A37566B9

This patchset enables UHBR link rates on Thunderbolt tunneled links.

Imre Deak (6):
  drm/dp_tunnel: Add UHBR tunneling support
  drm/i915/dp: End link configuration loops properly
  drm/i915/dp: Enable SST fallback between UHBR and non-UHBR rates
  drm/i915/dp: Remove UHBR dependency from SST fallback kunit test
  drm/i915/dp: Disable UHBR link configs with 1/2 lanes
  drm/i915/dp_tunnel: Add UHBR tunneling support

 drivers/gpu/drm/display/drm_dp_tunnel.c       | 116 +++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  65 ++++++++--
 .../drm/i915/display/intel_dp_link_training.c |   5 -
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   5 +
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |  45 +++++++
 .../gpu/drm/i915/display/intel_dp_tunnel.h    |  17 +++
 .../i915/display/tests/intel_dp_link_test.c   |  62 +++-------
 include/drm/display/drm_dp.h                  |  12 ++
 include/drm/display/drm_dp_tunnel.h           |  21 ++++
 10 files changed, 286 insertions(+), 63 deletions(-)

-- 
2.49.1

