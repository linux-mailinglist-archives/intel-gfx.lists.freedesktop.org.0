Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7C68D163D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 10:28:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B6210E05F;
	Tue, 28 May 2024 08:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2EAC10E05F;
 Tue, 28 May 2024 08:28:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Revert_=22igc=3A_fix?=
 =?utf-8?q?_a_log_entry_using_uninitialized_netdev=22?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 28 May 2024 08:28:35 -0000
Message-ID: <171688491586.2215486.8795396559646699505@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240528074614.3306301-1-jani.nikula@intel.com>
In-Reply-To: <20240528074614.3306301-1-jani.nikula@intel.com>
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

Series: Revert "igc: fix a log entry using uninitialized netdev"
URL   : https://patchwork.freedesktop.org/series/134112/
State : warning

== Summary ==

Error: dim checkpatch failed
a37e219fcbae Revert "igc: fix a log entry using uninitialized netdev"
-:16: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#16: 
<4>[   10.648954] CPU: 2 PID: 313 Comm: systemd-udevd Not tainted 6.9.0-next-20240513-next-20240513-g6ba6c795dc73+ #1

-:70: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' or 'Closes:' instead
#70: 
References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11198

-:71: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' or 'Closes:' instead
#71: 
References: https://lore.kernel.org/r/87o78rmkhu.fsf@intel.com

total: 0 errors, 3 warnings, 0 checks, 17 lines checked


