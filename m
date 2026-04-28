Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLKrA8mt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB94485260
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035E510EBB1;
	Tue, 28 Apr 2026 12:53:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KhjOrUoQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 154F910EBAA;
 Tue, 28 Apr 2026 12:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380804; x=1808916804;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=0M3lw1KY76JH+87lQKoc/Z8ytHmEZCVwGWG9qfrfvEk=;
 b=KhjOrUoQkXLgjBsvncovhS+rgQ2JFrzo+BVEh4/uJWGi7UStjHIO9Jd2
 Q1LPONJJKcBwbkgAwM/Q9+A2tQRuWgcFv9N2TXXYoM1AFGmH0E87bywBG
 tKRDmCAl9E1/rcs/usazC0aFTECbk6PNJWcsZf54Kb8MZL0nYLHfugZ1G
 tcqvwrzGatAb4MuxbPSOPGp0IRalvXStuud8CJZ8kiaDHDmNFgS/SKKJd
 voWCuHfvM840bVVfHnvSbBzePTO1AZXYluKcePGlTgTmk4hgGoMGfbZBI
 bH1+e1XYyj2a4bbR4OWa8Bqj3+HC4yoXa9aEE+ZzPykL/88ybH/IvxcFm g==;
X-CSE-ConnectionGUID: vbcs71GJRqO3ZJxXl8xr1w==
X-CSE-MsgGUID: n47z++YmS9u2uowTAugziQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398611"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398611"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:24 -0700
X-CSE-ConnectionGUID: t2slAEwMRxidHjxFqHatlw==
X-CSE-MsgGUID: MI5FqrbzQBWCKaTTbqnPNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911338"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:23 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:23 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:23 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.51) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fy5hDrmNtUa+RHHyYVoKjtfJKCvPojRJbTSFI+STgW2vke0be2VeGSdIs5Gh4SnZUSx5GTXamW4p7/hDOui73LzWEv/gfaXtZdoVkYUPq/wfsepQU8QaDo+IGv+69sNTuvjhoZeM3eJo+H5gMjQyh1KIjZAWrae7agBkXKsskOZdkqSN1PdzUCMuVj8kGB0+VBnaU/8YiI1pCIhumSmj27AzhwbvC7Q6GR3tU5bey05PDbJLjPUX8NObwWEfJdo4B35u/FigII8UTJ6yOz+C6B0Blr4MBuDkEroL2nwDaqDs9mCrChnn9v3AYAhQ1qUbF+D38lmqIF+QhSJ32S14Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8grL4wScA0Nvpsut+nxYXYTjguJl5IJLL+Y4SO+p0h0=;
 b=J6YXVpmiS00JjjjOryPFqD+SbzdXp5bwNxsM1piN4SxQwvZ+1sKByg/unHdGQg3xkiQstIfUphJZSdPVwPPGLAA18WZiTXvrsdWW6I9YW12ZYJsFhTQCRT/ezYkvBLEJBUzNZzrfOxK1X/tE4KS5tMvXj7+do3sWXYBprsSp90fPBwBTn9RsM1Y4nfEew7BH6acTDGr3TWYEX9x/WoGaEppNtYgrYfwiMo9PTmJRr0ldyu7YiZPW+Pu7eLvdBnqs7mk9mFeO5zKPWGjBgEPam9HWscwoCTBNzQ1CzGm3heySKGZYg22ODoraWZzgHV2X/ay719CWFOblzK9ZlXJWMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:17 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:17 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 022/108] drm/i915/display: Simplify
 intel_modeset_commit_pipes_for_atomic_state()
Date: Tue, 28 Apr 2026 15:51:03 +0300
Message-ID: <20260428125233.1664668-23-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: 51bf3520-80df-4559-fc58-08dea5251deb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: jIgp6rmT8uADCAgrIpaZ/KoCCj/2f4D0H7iWLUYX8Qs16WiJ5gBXoCVTj/7fbuYYjIbXVFgbaMXGkg8j1RUTwE9027NLFh8B4KE0Ptp51HzaYKNsa6oxyvlFzg5HULql3tcV1ZsRcscHK0JJzUf+VUZCN+b/vHLbw3nNfuZTKkFbttY29FhiZvk0dxAxBjZffiNeRvJ6uRRpZaTVAosmrGXd5gtFFDJF2PGXE3rX7NROPExfqrpDV3M0PGfw/HkcZszHUURPFhizQTY9K5v6Qila5oukZbSBaCCTIJJtzEDrdczWleKUpKUKnRA0PxQPS3T6BjYB6/pMeFZ+1I0nbvT8tRkpfdADUNyr6V7HceUEhbK2Um1WgjyWrSmBUw7qY956fwiui/owyejNyixMwg9FMH7H31n0hJ+3Nsq1JGy3lORPxI11EFMWfS0XCWLuDOvMiKOVcNzVHYStAHZNN9uNhkyCU/EWEsEf+D/a/ZXxUj+B71uaOMjBj86zMVdsdjfOXXg5E1NRXavunazZijvahHcPM3upzBP+QpKb3lQx/1HHJ5jYcdODg1j72wa7Ey3PcNlD+1+4zl/zN8JRzSNkUY12EW2ymQO48LYW5DKWSfL+iASonaxuGoLz03rEqDrsRYRjc1lOkhxRejEjbFaez0gQu4TCFgOe+pRUUeeSoZBdvM5JalPkYm9JYyXp9GD5sMmv+ge4dWJSuTuf+DWxD56NPIwcKqYFJlKXwL8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?v2LBUsiQsvX1o6r9MxQ19Y3CPpsdwyrVwfYVDXLMrv2W7O1CbebSDsGib8Ax?=
 =?us-ascii?Q?xlschVK/8PR3gmxkQ9b1jEyOi+lhb1Iy9v9HEByWI9yd66dTHzmTcWXYndSV?=
 =?us-ascii?Q?Xp8O27xEt3VCeu9eJgjVs45+J6Yo1e/5CpcvmSAOAEsMF4INSHGSRTPULrMA?=
 =?us-ascii?Q?Z+WMisEcXSl2x6MmcoinLeeUh4AbMGMVLqqMLvS3M1eWZ7inMflWHfRJ2zLw?=
 =?us-ascii?Q?Nh3EfVUtdFKAo9Fx7yt46fBaVOhrUkTvGjRFoyi5g+uxA09OC0kJKuQ8qUkG?=
 =?us-ascii?Q?TmxhRs/DIoOgy03Zf5coMryUzVEdyFFpf+ODZbu5QJZviO43tdtH6tyGrbCq?=
 =?us-ascii?Q?+g5k1SGKEvGGUIYjPABI7eknIaAX72aKpnx11VQ/0IC3CUK3SYBAP/Go/aO+?=
 =?us-ascii?Q?d91edqd2r9kAQkSenZrg1WL/BFG+s9fRbJXGFsx/OmyV5EqN2mvp+0yLaxGt?=
 =?us-ascii?Q?pWlB5GHfcVENcPh0Xc5F31uKdxLCTiR/HQJiTZiMPT2NNfvNPJAyXDeE0pG/?=
 =?us-ascii?Q?nV1gdNRw3l2c4r2UMQYUDzEUl89oMUWGwnA+LKEFd/hUBK2Etd5iDnLQlcq0?=
 =?us-ascii?Q?3nrrTw/S0OGrLIAQYeg2FMCEjidIKn6f62LHEenF3b9i5QXxE8uyqbRh+BkN?=
 =?us-ascii?Q?muzNghLgIr6WVaM/n5oueGbDO/+6rf/msBbGiqHWgjcXgHOznkRHrjMSAEoB?=
 =?us-ascii?Q?kiQzVqG1j2VnN9MU86pyqLIXb/SgAlZroomj+RUZ1rHtS3w+IHv362YhjsLJ?=
 =?us-ascii?Q?eJco3+unAdPk1ohAfksJ9Yed01thtYji02nZRZPMhXVAAehUjvg586shLYG8?=
 =?us-ascii?Q?rrTeqfb81lwE2EpwHldMUYtCoCHGIAKswiiv59I3NMHcG+6he4qtKRhOlYsF?=
 =?us-ascii?Q?uk9eYjZIv449mLkVhEXuIMUP+2j+G9ARJCTlAMJflzR12BeiNoY+RlqidPnm?=
 =?us-ascii?Q?kvh09WKZn13S0BL4jPb0VvwlQi8L77ysUB7xtSdheyKbUzzbljePHOX3IML7?=
 =?us-ascii?Q?yL7rwd8zzVslWUjoJ8Qx4RyFXFxg6qeL01MRNzJJ62ApYFr0tbhb7Cev2b4V?=
 =?us-ascii?Q?ROSQSOjMKsc/5wGVsmb1GAgf7XRDnjt9xrqgiQ7j9MX9iZ4k77sbjXYLTy9s?=
 =?us-ascii?Q?rO1lnmMu5zlCczFufnPi//3IplqKjyb+X4QswHelS/oxkPT3ma6RRfF7NCgn?=
 =?us-ascii?Q?Cv9TP/SOJbEfujLsEvfjjY574Xibc3XZ/wyBmmweRJQiwrcU6upZwYZJ6sad?=
 =?us-ascii?Q?5LNe3r/4USPycFKCmh18/+XwTeMfe18S2dmcjYqP09T9Y7ETp4zb2AiYNWbv?=
 =?us-ascii?Q?JsXtU6wrvnAFozCZBQiikRC/eWT7rGDQG7t0m0TRIo+tWmdKPOG9NqGrcj3l?=
 =?us-ascii?Q?AfS32iVOCdpW6AB/U9S1KrAgxHpuP3d/Zv37hq2CJztApmm6FwtmvYvjRPVc?=
 =?us-ascii?Q?68XACc/QdMlztty/jf1WyVBK41Djv1GH2Mnkhbe8M+nQIORZIoVMfEs92jst?=
 =?us-ascii?Q?5yUrSSKFP3XW24OPRlTYF9dJxxRqMP5+kzkkfw2jU5Fimc4keHtoGyvYG92G?=
 =?us-ascii?Q?Vqe78pbfX6uA41REsnUQ9j4cYOELal+NYfbB+QJvTa5oKVcMfQfAmGbSMScs?=
 =?us-ascii?Q?cxGwmaBw/YIz0UfTg6tWnJN4Q3RmM+Y8aO18I4Vx6VKf+WRaM6sfyrfJNP65?=
 =?us-ascii?Q?2Q0g+H/0znnwuMKBuNhBnOu0OECQ13suNl5jVO1n0vynz0lygG0t2KtQHsv1?=
 =?us-ascii?Q?/OYfoBvQzg=3D=3D?=
X-Exchange-RoutingPolicyChecked: fPrp3p8N5LWBxAsBN7vkSaB9QwEY2McqZpXoXjPCt1l8IqmG++SC90GqtXRI+DQzankcIDw0MBTtyW3iQs2EKLoXxUUBCvdaj4pMbPcrpzmjiI0hc95Clo8a0d75Ndde5xkYikt1LHfsqxAgRRXB5eQZ6zvBiX0LNh6A9vLefBDfKZYnL7fq5npbOpwEaujstrwonSzZNCqggOp/Zy4bxRoJUyYsRQO6drnYmUsCPZJISxEfiZ3FWwuTlLtMlIKrn/01gvrK1DgmeW+d5Ro+t79twUiJDfVmUkuGwYSaSoIFu9CDpAfp8A1yyJirgBxTwUG0LfKqMAFLntblkG885A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 51bf3520-80df-4559-fc58-08dea5251deb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:16.9440 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FNJCKVjJJ4wBhXRh0LKHd6TKDZSyBWLAvVIgbtCKp3pE7+LgAiQVV0W1GrAuS6pxP2aVDxxivVhWjMFlZbCQtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: 9EB94485260
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Simplify accessing the DRM atomic state via the intel atomic state
in intel_modeset_commit_pipes_for_atomic_state(), which also allows
dropping the cached DRM state pointer. Also streamline the success/error
return flows.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 22 +++++++-------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 560b057ec163d..f13aaaf2ea1de 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5629,33 +5629,27 @@ int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
 	return 0;
 }
 
-int intel_modeset_commit_pipes_for_atomic_state(struct intel_atomic_state *intel_state,
+int intel_modeset_commit_pipes_for_atomic_state(struct intel_atomic_state *state,
 						u8 pipe_mask,
 						struct drm_modeset_acquire_ctx *ctx)
 {
-	struct drm_atomic_state *state = &intel_state->base;
-	struct intel_display *display = to_intel_display(intel_state);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
-	int ret;
 
-	state->acquire_ctx = ctx;
-	to_intel_atomic_state(state)->internal = true;
+	state->base.acquire_ctx = ctx;
+	state->internal = true;
 
 	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, pipe_mask) {
 		struct intel_crtc_state *crtc_state =
-			intel_atomic_get_crtc_state(state, crtc);
+			intel_atomic_get_crtc_state(&state->base, crtc);
 
-		if (IS_ERR(crtc_state)) {
-			ret = PTR_ERR(crtc_state);
-			goto out;
-		}
+		if (IS_ERR(crtc_state))
+			return PTR_ERR(crtc_state);
 
 		crtc_state->uapi.connectors_changed = true;
 	}
 
-	ret = drm_atomic_commit(state);
-out:
-	return ret;
+	return drm_atomic_commit(&state->base);
 }
 
 int intel_modeset_commit_pipes(struct intel_display *display,
-- 
2.49.1

