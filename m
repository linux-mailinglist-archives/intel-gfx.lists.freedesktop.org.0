Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OMeI5snn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E92A719AF01
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4782010E88E;
	Wed, 25 Feb 2026 16:47:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fiLm3HkN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43B4D10E872;
 Wed, 25 Feb 2026 16:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038034; x=1803574034;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=lu5QVRCXYWcL1jjMxBL7EUFaAXfj/5WzTaaHSJYHpuY=;
 b=fiLm3HkNgCxMVjwtuSq3PXaTSQKUvTUbIvn0CHSnVGy0qcasi7SHK/C3
 uYwedWykWkTdn0b2dcSrE4iE7RkrhHCMUNovDv40GLFoP0N4DYcEGldj6
 n+C9yQaF3vnwtfg/HeXO19xaxsEE7YyxOQKUCoufKnP/8jvVKkIj2WpPs
 fFKC6V1l0wwmR0qL6+A0EqUKkaoLv+MXoDs/nXfF7vWVKqpiy3V7LuEw7
 INfU58yLyJonPTcsyymCRJw9aor7a7mog/+7bu6eBNXiRcV5DMHP1QY5+
 k1iYQRnbGoApDpUB2K5DTv5+YJT1q+zKPAjhYo3600qPmgREGlIvRcMTS g==;
X-CSE-ConnectionGUID: 7U+ElYcASFOcqsfmqQllaw==
X-CSE-MsgGUID: fzNeYlw5T2eT+6SIvjDA3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83707152"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="83707152"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:14 -0800
X-CSE-ConnectionGUID: dd4BFdUUTxyECfDTHNmaBg==
X-CSE-MsgGUID: 7801e0cZTWeA7TDG8JqCOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216173143"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:14 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:13 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:47:13 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.8) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=afvKSeRrZnhnoScNv+DcIKcSVkjoghtZ2A2ijzamvWx0ZiVyAolQ4FrvnoFv4yIXOvEBzIXns/yhlFmlIh2rNOmRyDa9xf1Q9XpDfWEs4pLUEgBBYph/1jY+S8K6ywMGFfgkiBneQ1asUOSmbHL9g+dkp7nLFb/BhrWL1VywLr2VYNe0iJ2ytNiP+/FMKP3QjptvA9yp/QrCdnRx0q6gy1n6BPq/tXRkB6WCnYT332dgnOwhaklYalRyhfhtHWghuT1i6ApJhhoK5evDTdF+RFICX3daq9dabntuNkimy5smPGGgjj21LjOugssIvdmVHpKzMTD3AWN9HSWCjUDaWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K2nohU4oKQ8Ed7YAtcbBc0Uhas+O+uxArOzgJEgqenM=;
 b=l1XFsW1XV38n5y15yes6XaTxxi3kMD5Aqp+KbIDXRysZ74/XpBxuTb9VcK1nn+8+ZcFfsxKA1UXvXX7N7ujB+iHRfhRgIUBbjZAI5ncZyFLXk83jnmPH/3BlKQqW9tF62cbkwe8+QkgJbA89Yq2QtSmUpaQB+lfyB7oxGNT/Fi8+UOYEa11JKAZhOnF8i6ST4Z+uPvfhIeW1la8bVMoNpHbbjCELJM72OWb8WBXtkqDH6hrjE3Cb4A3GrbfIQdxrqlQIxVYjUyigxct9r1mPpZUAl9KsG8E103JuuAnI/O6e378HH+F5SFnJ9YFnvh3d7HPDGqFuSTuzjtOjLbkFLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB7449.namprd11.prod.outlook.com (2603:10b6:510:27a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:47:05 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:47:05 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 16/20] drm/i915/dp: Print debug message for a sink
 connected off request
Date: Wed, 25 Feb 2026 18:46:14 +0200
Message-ID: <20260225164618.1261368-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225164618.1261368-1-imre.deak@intel.com>
References: <20260225164618.1261368-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239B7.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::239) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB7449:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e215ddb-1a48-4733-72e1-08de748d81b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 99e7BqJgy38GhBzLYf2sIYmv/GG8sGJFcwmmTRvQArghNNZfIPmOyZQJp9Xnekpem4Yjgh8bRIAhWMHYarYEo9/CfYGSjCY3X9lyaI0AuucwP0egl8H59CFN02jVrseRRgWXUa/Mkg7QgfhYwMLDtYLjWm+pixAWxMd+lu/b/DyARTGJVRF8qDXr9GEoL4wHgvLMxDMX5ebiQ8SJMPHJHOMTLtrPKOkGpUs2elp1t8VD2eAigIgRKcmG3a9S6w9U76bOW8rXismH+Q7xb81QmiZrsXSJf3t+7VxGNyli6L3JdKws16NEMxtN4ghDr+wMKczKicu3trBuGWeWvNJ+4+a7i+NO8twmig7+1f8ZnqRcmruBT594TZIIMhRzHMgbxXGYNFYO7hUqm5MabBa3za2pyXOqbGh2HlvoxparRsOhcz/8fmWf4pwlhW58+SBTO725nFCYwTz+tHzyk5KiDpqBC5fpGREsAfMU+Jnid5UYdCJnJlwxhJ+ndNg+3pDm2PabZVHqq7L7Kel8Xs6opawB8vBWiMO2Y7DfLpaiXTMe6TOMjSTqxEQ+cLoTwtdZHx6cE7/mf6A6qttlK2uwY64YrqeGYJ1eVePKqGAeFqLumfTt5JFAEr3s+L5pqdKTRl8q2vhPDyIay7dtIRoSxiSO3qTwgZ9HcD3wNAZQMUENmEfRjX+tHPIWkRQ3Iwo3+C999QTMv6WnSUIG0xxnDj13K7Eqx/+vnw1kXjWhSyM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ziksCHc1NEKiHTJsr8eMfaG7y1hQQGV5GH4yC5uUMvD1ZYyyZfvIe+vyAwfh?=
 =?us-ascii?Q?6zSSHdawxtpVVoPThOzyj7ZTG0B6gnyUP9k7cAtDpCSejqIzaqn+sg+ci8dL?=
 =?us-ascii?Q?0p9pFCm1aZkrFycDbZYdWrgnrxbCo7Ebrt0X8ORQtqMe5BoN7nMwVkLx9Zwd?=
 =?us-ascii?Q?m8I3DJKVyLVgIYwJStpVKN/ooXghcxlDW3U8C4Ko2iKIydrOr1W/9FaumMTG?=
 =?us-ascii?Q?V3BFI0AXQzJSdmYF15Ccf7+0R8jFz5k/bQooy/dOdtFpbv9a5vxAmD5zqS0a?=
 =?us-ascii?Q?zr0tp2Whdkq7QD3IWSdKXrLXplcZKcZhGrGWYn3qvcs7GmSApP6Ys78E8Uwc?=
 =?us-ascii?Q?m3QFFgmzDuRfa/itHK/j0qXKxexYW1BBGumqGy5JCVaUcB/B/jp3mKfYpalV?=
 =?us-ascii?Q?Z3tuxvLatuK/vr6HyvnfFiiAGLS6IC1iLXLmxAkw8v54mC1eR2Kd5b01LRBE?=
 =?us-ascii?Q?CeBvuKQbaAyXMWTQ7P1r5ccY4vaXN3//SSKiagm+RJawqjasb7BcfTn+YD11?=
 =?us-ascii?Q?D6ImEg6fSGANtMZLK7qzDsR1szeBCF1yRQTuhl7maNP/sy8TWmvcVLWS/Chy?=
 =?us-ascii?Q?U9F6YdnbFQ3pXz06rVZVQ69F0tmIxhbPqzREJlzycmhhK6Xoz8AchdxkfoUv?=
 =?us-ascii?Q?Zg9/yjO/sRocUb93hP2areX0YwZNoz8ZD6OfcfwMtnNhab4lKObD4NKpOF1N?=
 =?us-ascii?Q?epjcDMGX1eiZCEDm6NP8w7Clfi5lnedAUC17s1RBIU3gKL42Qwt4q0Nf3G3g?=
 =?us-ascii?Q?ArKonxYF4qEKG2KB/FF/7eAF7Ub7XDXr5FGYbWUSpcZasxwN1gkvPujSwmXt?=
 =?us-ascii?Q?Ji83jPLSsmqqxCHdUgr46Wr15GtMNAI935D57cq/b0QYmf1yOc2cLOoWz42X?=
 =?us-ascii?Q?izBxxANfVurvAXz45mt2Ir1iCcHjmGyINLlT/YIQTrzbgY3PcXUe6VlmvrF5?=
 =?us-ascii?Q?L5WBubL8mmCd//f6zJnqgZWk3guVXqO8firSh2TspwOdDUh6VxYnfyXocy9a?=
 =?us-ascii?Q?tRz/4icxViSgN1fCSJfTlmoEy/KTvgHW4PeUVNu3zV77T47FcUYyMrImZxRP?=
 =?us-ascii?Q?MnxeNoZReRDwJGzN6USCa7GExAX/wKIvijK/XRd7DSRd0ySdgRXeUmptVe2y?=
 =?us-ascii?Q?ZwPE72/uQa3+eBdYyuoBnaAZjDjASVKegqay0K4TKyWWhxrJvsZ7QDUCaLBj?=
 =?us-ascii?Q?vjZYmRqbugav1GkAtwhcX1kxot5Smh/cV0RgTiChMoP9oHlvLk5zEgMxmiHL?=
 =?us-ascii?Q?DAXWAKE5EF9ThQHxX9C9OISxsvGf6DNQihILA0TcGhr/Jzjv2Y02cUnGsoto?=
 =?us-ascii?Q?yz8S2KCOgKBGVhHJ0k8qZm5qfiM7Xrgmn0rA1HgVWpa7B6TsnokWujO8YD8U?=
 =?us-ascii?Q?CAUKK4CjALXzpU9RNIjz6RMg73Vc+ulsrZzpQjl9SV7k8cSRDxrG+psIUfw6?=
 =?us-ascii?Q?ggDfA95zNlv68XyVhtSDDXRQkdbHi1dwFD/bcJx9bX6Yi8NTgvQjC3TpyIVx?=
 =?us-ascii?Q?+3KZflNrdTOi8LvyV+t2D6BSdxcwmcHBLETZVjKNRSGMrGiJ99b79eMV2luO?=
 =?us-ascii?Q?U9ddeVhqSQc10p3Z2JlLnhKGFND28mmp8F2KTyweC0OS9OASnpA6KasmsOPT?=
 =?us-ascii?Q?uSouXJ/7EXnWZA0etRrQdbmwDhLwhIclOyHSVAAzZNPl9qz6uENZSmwnKZ2a?=
 =?us-ascii?Q?Tk9+oHSF+iMotGc7HI2DIvsXVbgHjYOgwzfa3/lzoVLTZttPRP3ssQOyaemY?=
 =?us-ascii?Q?LHiHIIPI5g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e215ddb-1a48-4733-72e1-08de748d81b8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:47:05.0633 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6a77BHPfhdElPZk67r88j4K62iw9pZLN/0j1NwcEBEKxfANNw2G5nzbBeh9va0/FqOzA64hSZFLCm1BGtyOEyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7449
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E92A719AF01
X-Rspamd-Action: no action

So far the CONNECTED_OFF_ENTRY_REQUESTED request was accepted only
implicitly, by acking all the IRQs raised by the sink. Make this
explicit by printing a debug message.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 595a2232ed718..58c52a9974c46 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5864,6 +5864,8 @@ static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq
 static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool reprobe_needed = false;
 
 	if (irq_mask & RX_CAP_CHANGED)
@@ -5872,6 +5874,12 @@ static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_m
 	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
 		intel_dp_handle_hdmi_link_status_change(intel_dp);
 
+	if (irq_mask & CONNECTED_OFF_ENTRY_REQUESTED)
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s][ENCODER:%d:%s] Allowing connected off request\n",
+			    connector->base.base.id, connector->base.name,
+			    encoder->base.base.id, encoder->base.name);
+
 	if ((irq_mask & DP_TUNNELING_IRQ) &&
 	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
 				     &intel_dp->aux))
-- 
2.49.1

