Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EAE8D385B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 15:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D41F2113B20;
	Wed, 29 May 2024 13:50:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="lKIjxef1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F056113B1F
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 13:50:26 +0000 (UTC)
X-CSE-ConnectionGUID: FQNx7f+MRJCq7FaOlQx0hw==
X-CSE-MsgGUID: Rm3mtHMtQx21IjBdOhgX9w==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="24048872"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="24048872"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 06:50:13 -0700
X-CSE-ConnectionGUID: eVOXqPq7RU6v3EcFtiAvAw==
X-CSE-MsgGUID: Qta8qbo3SA+pTb1lKPVAsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="40334054"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 06:50:12 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 29 May 2024 16:50:20 +0300
Resent-Message-ID: <87zfs8iv6r.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from orviesa007.jf.intel.com (ORVIESA007.jf.intel.com
 [10.64.159.147])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 6C7D12078A10;
 Tue, 28 May 2024 14:03:38 -0700 (PDT)
X-CSE-ConnectionGUID: 4Ta5znkgQSiySUjS8x988g==
X-CSE-MsgGUID: jmvTCG/eT6yzN9z4MrF3PQ==
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35804262"
Received: from orvoesa106.jf.intel.com ([10.18.183.146])
 by orviesa007-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 14:03:39 -0700
X-CSE-ConnectionGUID: M8HJxC3qQC6VSOIfjTfbwg==
X-CSE-MsgGUID: /GeU8PJVTV+ZP444GoYjsw==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0EBAAAoRlZmmLHS/INaGQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?RIBAQEBAQEBAQEBAQGBfAMBAQEBAQsBgXFSGQFigQ0HUB2IBgGFLohuGYtLj?=
 =?us-ascii?q?iSCWoEsgUAzGgEBAQEBAQEBAQcBAS4LCAECBAEBAwSBTIwDAiY1CA0BAQIEA?=
 =?us-ascii?q?QEBAQMCAQIBAQEBAQEBAQYBAQECAgEBAQIBAQYDAQEBAQIQAQEBAQEBAQEeG?=
 =?us-ascii?q?QUQDieFL0UNgkIegSZeSAEBAQEBAQEBAQEBAQEBAQEBAQEBARQCDVwBAR8BA?=
 =?us-ascii?q?QQBAQ8VCwENAQEECikBAgMBAgYCRAQIAwEcPAENBQUdgl4BgjADMQMBAgIMp?=
 =?us-ascii?q?BkBgUACAoomgXkzgQGCDAEBBtskDWyBYwMGgUgBiA8eAYRYgSSEQCcPgVVEe?=
 =?us-ascii?q?huCeW+BUk0riD2NB4wdiEiEHocsSoEHHANZMgFVEw0KCz4dAhYDGxQEMA8JC?=
 =?us-ascii?q?yYqBjYCEgwGBgZZNAkEIwMIBANCAyBxEQMEGgQLB1AlgyUEE0QDgTcGiWqDE?=
 =?us-ascii?q?wIFISmBdYEignhLggoCgmWBaw5hhFWCUXRogQszgRGBKEFSKiwdQAMLGA1IE?=
 =?us-ascii?q?SwWHwYOGwY+bgelDYNEBw4fLDUsIpUsgyGMPIIdn3w8NAeEFoFcBootjy6Fd?=
 =?us-ascii?q?E2qNYNShzKNXyCJXIN6hAGRIoENhDoCBAIEBQIPAQEGgWcDNQKBWnCDN1IXA?=
 =?us-ascii?q?g+OIQwWg1iFFIopAbpeWjsCBwsBAQMJhUYBAYEDglYBLIEcAQE?=
IronPort-PHdr: A9a23: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
 LuWiTtlMz9cvq4=
IronPort-Data: A9a23:yGWH56nRsXoqxzpVfRXbiwbo5gxdIURdPkR7XQ2eYbSJt1+Wr1Gzt
 xIaDWCHbvreMGP1Ldx0bo2xoU4GuJLSydJkGVY5rX81Hy4T+ZvOCP2ndXv9bniYRiHhoOOLz
 Cm8hv3odZhsJpMJjk71atANi1Eii/nQLlbbILedYnAvLeNcYH58z0olwqhh2dYAbeGRWWulo
 cn1r9DUJGir0jt1NnN8w6+YoXuDhtyr0N8jlgJ4PaAjUGP2zSFPUMpCf/HpchMUf6ENdgKEb
 7ebpF2G1j6Bl/sdIovNuqr2dEQMXonTMWCm4paBc/P66vTqjnVaPpcTbJLwW28O49m6t4kZJ
 OF2iHCFYVxB0pvkw71BDkYCQ0mSCoUdkFPPCSDXXcV+VCQqeVO0qxllJBhe0YH1YY+bqIyBn
 BAVAGllU/yNuw656Jfrast8rZ86FeK1Arg4m39i8T/TEvlzFPgvQ42SjTNZ9Dg5jM0IE+zTa
 sYUcjlzawyGZAdAUrsVIMtlxaHy2yO5KWQA7gvK+sLb4ECLpOB1+LT3MZ/Zd8KHQYBfmVuer
 W/d12D4GQ0BctKFxDeJ/2mvmujX2yThV+r+EZXhqacx3ATInQT/DjVRelaG8cGbtHKAGOBnd
 xBI1S0fr7MtoRnDot7VGkTQTGS/ljcaV8BCHu98ywiG0rDT/B2aB0AATzhceJonstM7QXoh0
 Vrht9rlDDkptbyOW3mP/7S8qTK0JDhTLGkeaCtCRgwAi/Hqpo0yyAnPX8piOKq0iMDlXzD23
 z2O6iM5gt07hNQCyaS98RbGjz6lo4PEUhIkzgHWWH+1qAJ/eIOhIYev7DDz7/9LIYXfSlCep
 mkCnNef5/ImCZCLiTzLQeMREbXv7PGAWBXeiFhuWZ8g9Cmp8lanfIZN8Hd/IltkNoAPfjqBS
 E3avx5K9tlQJmm7dr1rZIywCOwuzK79BZLkUOzZapxFZZ0ZXA2A+ydnfgiU1mDxkU4hl4k7O
 JGGYYCtC2oXDeJsyz/eb+IU2r4mxGYmzH/eQZvp3heP1buYeW7TSLEZPV/IZec8hIuCoR/Q9
 McZO8KR4xFeVvDuJCjR7YMXa1sNKBATHoz/rc1McuecZAV8BXozCPb5xbInZpwjnqJJm+OO9
 Xa4MmdEz1/2nm+BLASRdnl/QLfuW4tv63M9ISEoe12v3hALf4er6KpZbIotf7Aj/cRnzPhpX
 78EfdmNBrJETTGv0yYdYJ/ssZNKcBWtmBLIPiy5bTx5dJllLzEl4ffrdwHisicUAye7uNA9v
 7q4kATBTvLvWjiOEu7zONKN33jqpEE2xtxJeGrGIOVdclrjpd0CxzPKstc7JMQFKBPmzzSc1
 hqLDRpwmdQhTqc6+dPEw66eooqlHvB9Ak1CWW7B4t5a1BU2HELzneestdpkmxiACwsYH43/O
 Y1o8h0FGKRvcKx2jmaIKJ4ylfhWz4K2/9dyl100dF2VNA7DIu07fRG7MTxn6/clKklx41XmA
 ypiO7ByZN20BS8SOAdOfVt7N73aja18d/u7xa1dHXgWLRRfpdKveUxXM1+Hjyk1EVe/GNlNL
 TsJ0CLd1+BzZtfG/DpLYuC4Ollg9kA9bpg=
IronPort-HdrOrdr: A9a23:rrB5/aN3L41tDsBcTzT155DYdb4zR+YMi2TDiHoQdfUFSK2lfp
 6V8sjztSWftN4QMEtQ4+xoX5PwMU80lKQFkrX5WI3SPzUO11HYUL2Kh7GP/9TfIVyuygcw79
 YZT0CRYOeAUGSTo67BkVaF+vwbsYK6GJnBv5aD85+GJTsaNZ2Ilj0JUDpzcXcGNTWuZ6BJa6
 Z0vfA3/wZIEE5/Bq/Vdxt1Opmk1qT2eYrdEHk77jEcmVmzZFiTmcPH+najr2wju/Im+8ZlzY
 CT+DaJk5lLh8vLviM0mlWjo6h+qZ/E8J9uFcaMgs8aJnHFjRupXp1oX/m4sDU8sIiUmR0XeI
 2nmWZFA+1Dr1fqOk2lqxrk3AftlBw07WX59FOeiXz/5eTkWTMTEaN69MdkWyqcz3BlkMB30a
 pN0W7cnYFQFwn8kCP04MWNfw12l3CzvWEpnYco/j5iuLMlGftsRLEkjQNo+dY7bWPHAbkcYa
 dT5RTnlbVrmVDzVQGQgoAg+q3qYp0JJGbOfqEzgL3j79FopgEO86Jh/r1gop+OnKhNEqWsx9
 60eJiAx4s+A/P+AJgROA5Xe7rENoWKe2OCDF6v
X-Talos-CUID: =?us-ascii?q?9a23=3AQexdyGornL4BpLsCmSV2tYfmUeV1Ul/N5yzJGmT?=
 =?us-ascii?q?mN11OabOXdVGa56wxxg=3D=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3A3BpRUA/rz559tZfVPKL6ByeQf4BH7pn+MGIzrat?=
 =?us-ascii?q?FifHYaXBfPAaflyviFw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="17134133"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="17134133"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from gabe.freedesktop.org ([131.252.210.177])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2024
 14:03:37 -0700
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9745710E8D8;
 Tue, 28 May 2024 21:03:35 +0000 (UTC)
X-Original-To: dri-devel@lists.freedesktop.org
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam02on2074.outbound.protection.outlook.com [40.107.212.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0692588DE5;
 Tue, 28 May 2024 21:03:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L4/uOwnI+WKu2ZrxKXa/WapuD9ZoXh4KdCDomb5kyPYxfzxcSCm6gI5duJHbfkgPtru6Z0Ew/vf96uyJORd7rgdoEbPLBswxsg4zB7r1IeXjLH1Kv5HJPfhcgCZ8CLd1p7KBNPImW3NZq9b18BagFaIY6Y/nTdl7I62ztwASae2VpRi1w5BmoWAfZZD+0pbQN1ycuXrOYPoloSfAKgyBTdTbeyV+8Np8zFNGvgtZ1URBrDfr/BRHu9TPob0CUcIYcquYGwAJqZI5hKNmj6b9D4wdt34Wdn7rmVVND+j2NLEyVJogrm6HH82P7sXtgD7jn+LcdIlJlrsWa0Ck6Gp3jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TrFwAPgvpKPYzfFe7KPvO+P4TVBNHndb1Jvx1pbos6w=;
 b=Lr8nBJyzL6AClT1yYsBy/aep/M/Bj6HkH4GgwvrhzNP++tMB6adSvieNiFuqAe5vFw2ET1kFps62yezSaVIwo+JytMv+M3U/8pgBHI5soNeMh9sjiHHcR9a2MCf1gpnOUWd86dLbJn9k4RLcB829ZUue1EODYkkt8jh78cz0ugwDxqy0oTBYvEVthiF0M5bZoIuoipn7P9F6T7n7lNoY89UsKod8bh26CiU60CzG4hQc9bZw55KQGXhR2lcoxdpfhp+kK6Am9PqaHYjU/w49sa7aIoc8kOt8n7XiwrGBqS9Ez5hkhHwUHP8asC0mtYOVuQwITW8zvp7sekaxZ8onQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TrFwAPgvpKPYzfFe7KPvO+P4TVBNHndb1Jvx1pbos6w=;
 b=lKIjxef1t7grUYWW24QZ0o3ehqARq8zT2ovL6xPj85MNUSvzkEva1QWmgcVnKox5Ks0Dzn97RiP/NktxuTctH1bhvckKlQBgPkvTgYCjIAPKHp/lycA8HqFwVblNeXy0xKtKCS/6a3f/g+MgyNNXKw/stQ3ZCHO+G0z6msym8uc=
Received: from DS7PR05CA0050.namprd05.prod.outlook.com (2603:10b6:8:2f::9) by
 CH2PR12MB4103.namprd12.prod.outlook.com (2603:10b6:610:7e::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7611.30; Tue, 28 May 2024 21:03:30 +0000
Received: from DS1PEPF0001709B.namprd05.prod.outlook.com
 (2603:10b6:8:2f:cafe::68) by DS7PR05CA0050.outlook.office365.com
 (2603:10b6:8:2f::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.18 via Frontend
 Transport; Tue, 28 May 2024 21:03:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 DS1PEPF0001709B.mail.protection.outlook.com (10.167.18.105) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7633.15 via Frontend Transport; Tue, 28 May 2024 21:03:30 +0000
Received: from AUS-P9-MLIMONCI.amd.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Tue, 28 May
 2024 16:03:29 -0500
From: Mario Limonciello <mario.limonciello@amd.com>
To: <dri-devel@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
CC: <linux-kernel@vger.kernel.org>, Mario Limonciello
 <mario.limonciello@amd.com>, Chris Bainbridge <chris.bainbridge@gmail.com>,
 <hughsient@gmail.com>
Subject: [PATCH v2] drm/client: Detect when ACPI lid is closed during
 initialization
Date: Tue, 28 May 2024 16:03:19 -0500
Message-ID: <20240528210319.1242-1-mario.limonciello@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB04.amd.com (10.181.40.145) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS1PEPF0001709B:EE_|CH2PR12MB4103:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d0a1bf7-17b5-44cc-bb58-08dc7f59a07e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230031|36860700004|7416005|376005|82310400017|1800799015; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Q8GDRQJXUS7ftPLMh+dM7LE0gNwteXqRJqtWkEXn/LmgJMr4AIGgdLoUVm34?=
 =?us-ascii?Q?3Pa1VrUJpqK2vuWVRbZISf5sIpBGWgi4RHkxhbzgqEfC2NcCq+sii01QRsbW?=
 =?us-ascii?Q?7gBYtwuSUDFwqPVvT3i8ixyDKGWfjFwO9mp26ECVlZJTUmUvogLwIb4TO62t?=
 =?us-ascii?Q?GiYVUBUiySOPs6QqC1AfdwuzpJYn3RkWwNwllu6Lksu7kJdKn7clWaLEuNGn?=
 =?us-ascii?Q?dXkIeALHD4FvnC8KhxcUcXYo7QnQkv6idWLtPqhyatdf7wPH26QJY+j7w+P9?=
 =?us-ascii?Q?5oKL7nmkRk6+BkAGllxugxy0PqQVajAODv4YUqMtnhSJGbhO9yGpY1wFIFTI?=
 =?us-ascii?Q?2b+2AnEDdSpiqDsiCU1xuQiTM58H65gpzWZEB7mO2sQGPJyGdCZwSKFmNzab?=
 =?us-ascii?Q?yX8ZlPp/fiXnYpApmA2NwoQNKe15sDwpsSL9qDE7eXR2vFd4lbueMFe7pjjN?=
 =?us-ascii?Q?lHF4EDTfDkhlcmh8tbeE/fhbBYfBO5fxMd0sn/28oCNIkAiQ6f4tSABzXF+2?=
 =?us-ascii?Q?8f9xOT/XJ/6vP3166yKafnGJMTGl6e+WpaLIfkVSJxw9TSHf0SW6EGLVi3Tp?=
 =?us-ascii?Q?9vg/2ZsGPoPWb1Nkthm0Pv44Or5o1oLEEnJU+vs6QVEhGF7TgCkongdSwWol?=
 =?us-ascii?Q?8MNpY7teixR8maOMVBqenINzXb06rSM4ns0b749h0agADceaLd2BJbVTw1xs?=
 =?us-ascii?Q?BQUN76dVoUxb188o7DFBnHb8pKM8WKy3dQdVQQC1DrSZ4t8hPAsyws22f7YR?=
 =?us-ascii?Q?n7T7QRk4/hGQQ/WFrnxWH/1Fh0bAjfk7LHlBcSZNkqMxiH9lYQHKzGSafzKo?=
 =?us-ascii?Q?07S9ZqnU0bS8stwwO/pfWU/D2JOeIxpSPQsgC3l5SuGKCqRn4YaaJ7d8Jzbe?=
 =?us-ascii?Q?Y/O1Ap+VtQpyGrMFHW64wlJW4i4p589PvoSsPRsuQk+/GQQQVxXy5nODZV+Z?=
 =?us-ascii?Q?XxUVNNokQhpMtLZmWK4RA/Qkrk1F/8Vm/pQ2eVCV0XXWHKvrqENi6fDKN55A?=
 =?us-ascii?Q?bvJ3NAS959G+JP+1rotkS+C22Xa5khH32/6JeqH0WiCkWuDFx/FyHOxeR5BI?=
 =?us-ascii?Q?iMtwecPJaj68unkEcQCoZhka6o3rSfFiw48hkCR0rSng1w5seRjRFKRlZ6+i?=
 =?us-ascii?Q?06QW0x6AWytG05cz4w1B1gcniJ4i1NtucuaS2Yvp8qKCHAH4ne16P2wz8vcR?=
 =?us-ascii?Q?gJTkrPZwnh9jvixyREsQTxZd/qJd+AtQDnVyGkzfd/bgwOpLMdvDOWRNRSNk?=
 =?us-ascii?Q?Pr2Twmeb0ggFmFh3/mrexrJHoiGtL0MWVG5idakQq1bHm11RhW8zyCezLNtv?=
 =?us-ascii?Q?W38BU4bsceKZfk7rvOVN4Xvh?=
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:; 
 IPV:CAL; SFV:NSPM; H:SATLEXMB04.amd.com;
 PTR:InfoDomainNonexistent; CAT:NONE; 
 SFS:(13230031)(36860700004)(7416005)(376005)(82310400017)(1800799015);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 21:03:30.0464 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d0a1bf7-17b5-44cc-bb58-08dc7f59a07e
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; 
 Ip=[165.204.84.17];
 Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: DS1PEPF0001709B.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4103
X-BeenThere: dri-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
X-TUID: u0bJwPjdgWDJ
X-BeenThere: intel-gfx@lists.freedesktop.org
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

If the lid on a laptop is closed when eDP connectors are populated
then it remains enabled when the initial framebuffer configuration
is built.

When creating the initial framebuffer configuration detect the ACPI
lid status and if it's closed disable any eDP connectors.

Reported-by: Chris Bainbridge <chris.bainbridge@gmail.com>
Closes: https://gitlab.freedesktop.org/drm/amd/-/issues/3349
Signed-off-by: Mario Limonciello <mario.limonciello@amd.com>
---
Cc: hughsient@gmail.com
v1->v2:
 * Match LVDS as well
---
 drivers/gpu/drm/drm_client_modeset.c | 30 ++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/drm_client_modeset.c b/drivers/gpu/drm/drm_client_modeset.c
index 31af5cf37a09..0b0411086e76 100644
--- a/drivers/gpu/drm/drm_client_modeset.c
+++ b/drivers/gpu/drm/drm_client_modeset.c
@@ -8,6 +8,7 @@
  */
 
 #include "drm/drm_modeset_lock.h"
+#include <acpi/button.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/slab.h>
@@ -257,6 +258,34 @@ static void drm_client_connectors_enabled(struct drm_connector **connectors,
 		enabled[i] = drm_connector_enabled(connectors[i], false);
 }
 
+static void drm_client_match_edp_lid(struct drm_device *dev,
+				     struct drm_connector **connectors,
+				     unsigned int connector_count,
+				     bool *enabled)
+{
+	int i;
+
+	for (i = 0; i < connector_count; i++) {
+		struct drm_connector *connector = connectors[i];
+
+		switch (connector->connector_type) {
+		case DRM_MODE_CONNECTOR_LVDS:
+		case DRM_MODE_CONNECTOR_eDP:
+			if (!enabled[i])
+				continue;
+			break;
+		default:
+			continue;
+		}
+
+		if (!acpi_lid_open()) {
+			drm_dbg_kms(dev, "[CONNECTOR:%d:%s] lid is closed, disabling\n",
+				    connector->base.id, connector->name);
+			enabled[i] = false;
+		}
+	}
+}
+
 static bool drm_client_target_cloned(struct drm_device *dev,
 				     struct drm_connector **connectors,
 				     unsigned int connector_count,
@@ -844,6 +873,7 @@ int drm_client_modeset_probe(struct drm_client_dev *client, unsigned int width,
 		memset(crtcs, 0, connector_count * sizeof(*crtcs));
 		memset(offsets, 0, connector_count * sizeof(*offsets));
 
+		drm_client_match_edp_lid(dev, connectors, connector_count, enabled);
 		if (!drm_client_target_cloned(dev, connectors, connector_count, modes,
 					      offsets, enabled, width, height) &&
 		    !drm_client_target_preferred(dev, connectors, connector_count, modes,
-- 
2.43.0

