Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D10E853C30
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 21:25:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E00710E2B0;
	Tue, 13 Feb 2024 20:25:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EBC310E2B0;
 Tue, 13 Feb 2024 20:25:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5B1/2=5D_drm/buddy=3A_Fix_alloc=5Frange=28=29_error_handling_co?=
 =?utf-8?q?de?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin Paneer Selvam" <arunpravin.paneerselvam@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Feb 2024 20:25:50 -0000
Message-ID: <170785595011.1218563.9269554130788592685@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240213135203.348050-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20240213135203.348050-1-Arunpravin.PaneerSelvam@amd.com>
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/2] drm/buddy: Fix alloc_range() error handling code
URL   : https://patchwork.freedesktop.org/series/129835/
State : warning

== Summary ==

Error: dim checkpatch failed
c8e823c34dcc drm/buddy: Fix alloc_range() error handling code
dd0bc4e07514 drm/tests/drm_buddy: add alloc_contiguous test
-:11: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' or 'Closes:' instead
#11: 
References: https://gitlab.freedesktop.org/drm/amd/-/issues/3097

total: 0 errors, 1 warnings, 0 checks, 107 lines checked


