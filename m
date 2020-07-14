Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D81220034
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 23:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 029BB6EA28;
	Tue, 14 Jul 2020 21:41:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E94F06EA27;
 Tue, 14 Jul 2020 21:41:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3D38A00E6;
 Tue, 14 Jul 2020 21:41:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anitha Chrisanthus" <anitha.chrisanthus@intel.com>
Date: Tue, 14 Jul 2020 21:41:55 -0000
Message-ID: <159476291591.24019.3055128364269136285@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1594760265-11618-1-git-send-email-anitha.chrisanthus@intel.com>
In-Reply-To: <1594760265-11618-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_support_for_KeemBay_DRM_driver?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Add support for KeemBay DRM driver
URL   : https://patchwork.freedesktop.org/series/79495/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8c3c65637a2a drm/kmb: Add support for KeemBay Display
-:42: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#42: 
new file mode 100644

-:238: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#238: FILE: drivers/gpu/drm/kmb/kmb_crtc.c:166:
+
+}

-:307: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#307: FILE: drivers/gpu/drm/kmb/kmb_crtc.h:35:
+};
+#define to_kmb_crtc_state(x) container_of(x, struct kmb_crtc_state, crtc_base)

-:309: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#309: FILE: drivers/gpu/drm/kmb/kmb_crtc.h:37:
+extern void kmb_plane_destroy(struct drm_plane *plane);

-:310: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#310: FILE: drivers/gpu/drm/kmb/kmb_crtc.h:38:
+extern struct drm_plane *kmb_plane_init(struct drm_device *drm);

-:797: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_CFG>
#797: FILE: drivers/gpu/drm/kmb/kmb_plane.c:66:
+		kmb_write(lcd, LCD_LAYERn_DMA_CFG(i), ~LCD_DMA_LAYER_ENABLE);

-:800: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_START_ADDR>
#800: FILE: drivers/gpu/drm/kmb/kmb_plane.c:69:
+		kmb_write(lcd, LCD_LAYERn_DMA_START_ADDR(i), addr);

-:801: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_START_SHADOW>
#801: FILE: drivers/gpu/drm/kmb/kmb_plane.c:70:
+		kmb_write(lcd, LCD_LAYERn_DMA_START_SHADOW(i), addr);

-:806: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_LEN>
#806: FILE: drivers/gpu/drm/kmb/kmb_plane.c:75:
+		kmb_write(lcd, LCD_LAYERn_DMA_LEN(i), dma_len);

-:808: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_LINE_VSTRIDE>
#808: FILE: drivers/gpu/drm/kmb/kmb_plane.c:77:
+		kmb_write(lcd, LCD_LAYERn_DMA_LINE_VSTRIDE(i), fb->pitches[0]);

-:809: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_LINE_WIDTH>
#809: FILE: drivers/gpu/drm/kmb/kmb_plane.c:78:
+		kmb_write(lcd, LCD_LAYERn_DMA_LINE_WIDTH(i),

-:927: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#927: FILE: drivers/gpu/drm/kmb/kmb_plane.c:196:
+	const uint32_t *plane_formats;

-:931: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#931: FILE: drivers/gpu/drm/kmb/kmb_plane.c:200:
+	for (i = 0; i < lcd->n_layers; i++) {
+

-:948: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#948: FILE: drivers/gpu/drm/kmb/kmb_plane.c:217:
+		ret = drm_universal_plane_init(drm, plane, 0xFF,
+				       &kmb_plane_funcs, plane_formats,

-:1033: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1033: FILE: drivers/gpu/drm/kmb/kmb_regs.h:26:
+#define LCD_LAYERn_CFG(N)		(LCD_LAYER0_CFG + (0x400*N))
                          		                        ^

-:1033: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CFG>
#1033: FILE: drivers/gpu/drm/kmb/kmb_regs.h:26:
+#define LCD_LAYERn_CFG(N)		(LCD_LAYER0_CFG + (0x400*N))

-:1033: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1033: FILE: drivers/gpu/drm/kmb/kmb_regs.h:26:
+#define LCD_LAYERn_CFG(N)		(LCD_LAYER0_CFG + (0x400*N))

-:1035: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1035: FILE: drivers/gpu/drm/kmb/kmb_regs.h:28:
+#define LCD_LAYERn_COL_START(N)		(LCD_LAYER0_COL_START + (0x400*N))
                                		                              ^

-:1035: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_COL_START>
#1035: FILE: drivers/gpu/drm/kmb/kmb_regs.h:28:
+#define LCD_LAYERn_COL_START(N)		(LCD_LAYER0_COL_START + (0x400*N))

-:1035: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1035: FILE: drivers/gpu/drm/kmb/kmb_regs.h:28:
+#define LCD_LAYERn_COL_START(N)		(LCD_LAYER0_COL_START + (0x400*N))

-:1037: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1037: FILE: drivers/gpu/drm/kmb/kmb_regs.h:30:
+#define LCD_LAYERn_ROW_START(N)		(LCD_LAYER0_ROW_START + (0x400*N))
                                		                              ^

-:1037: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_ROW_START>
#1037: FILE: drivers/gpu/drm/kmb/kmb_regs.h:30:
+#define LCD_LAYERn_ROW_START(N)		(LCD_LAYER0_ROW_START + (0x400*N))

-:1037: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1037: FILE: drivers/gpu/drm/kmb/kmb_regs.h:30:
+#define LCD_LAYERn_ROW_START(N)		(LCD_LAYER0_ROW_START + (0x400*N))

-:1039: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1039: FILE: drivers/gpu/drm/kmb/kmb_regs.h:32:
+#define LCD_LAYERn_WIDTH(N)		(LCD_LAYER0_WIDTH + (0x400*N))
                            		                          ^

-:1039: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_WIDTH>
#1039: FILE: drivers/gpu/drm/kmb/kmb_regs.h:32:
+#define LCD_LAYERn_WIDTH(N)		(LCD_LAYER0_WIDTH + (0x400*N))

-:1039: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1039: FILE: drivers/gpu/drm/kmb/kmb_regs.h:32:
+#define LCD_LAYERn_WIDTH(N)		(LCD_LAYER0_WIDTH + (0x400*N))

-:1041: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1041: FILE: drivers/gpu/drm/kmb/kmb_regs.h:34:
+#define LCD_LAYERn_HEIGHT(N)		(LCD_LAYER0_HEIGHT + (0x400*N))
                             		                           ^

-:1041: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_HEIGHT>
#1041: FILE: drivers/gpu/drm/kmb/kmb_regs.h:34:
+#define LCD_LAYERn_HEIGHT(N)		(LCD_LAYER0_HEIGHT + (0x400*N))

-:1041: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1041: FILE: drivers/gpu/drm/kmb/kmb_regs.h:34:
+#define LCD_LAYERn_HEIGHT(N)		(LCD_LAYER0_HEIGHT + (0x400*N))

-:1043: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1043: FILE: drivers/gpu/drm/kmb/kmb_regs.h:36:
+#define LCD_LAYERn_SCALE_CFG(N)		(LCD_LAYER0_SCALE_CFG + (0x400*N))
                                		                              ^

-:1043: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_SCALE_CFG>
#1043: FILE: drivers/gpu/drm/kmb/kmb_regs.h:36:
+#define LCD_LAYERn_SCALE_CFG(N)		(LCD_LAYER0_SCALE_CFG + (0x400*N))

-:1043: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1043: FILE: drivers/gpu/drm/kmb/kmb_regs.h:36:
+#define LCD_LAYERn_SCALE_CFG(N)		(LCD_LAYER0_SCALE_CFG + (0x400*N))

-:1045: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1045: FILE: drivers/gpu/drm/kmb/kmb_regs.h:38:
+#define LCD_LAYERn_ALPHA(N)		(LCD_LAYER0_ALPHA + (0x400*N))
                            		                          ^

-:1045: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_ALPHA>
#1045: FILE: drivers/gpu/drm/kmb/kmb_regs.h:38:
+#define LCD_LAYERn_ALPHA(N)		(LCD_LAYER0_ALPHA + (0x400*N))

-:1045: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1045: FILE: drivers/gpu/drm/kmb/kmb_regs.h:38:
+#define LCD_LAYERn_ALPHA(N)		(LCD_LAYER0_ALPHA + (0x400*N))

-:1047: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1047: FILE: drivers/gpu/drm/kmb/kmb_regs.h:40:
+#define LCD_LAYERn_INV_COLOUR_LS(N)	(LCD_LAYER0_INV_COLOUR_LS + (0x400*N))
                                    	                                  ^

-:1047: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_INV_COLOUR_LS>
#1047: FILE: drivers/gpu/drm/kmb/kmb_regs.h:40:
+#define LCD_LAYERn_INV_COLOUR_LS(N)	(LCD_LAYER0_INV_COLOUR_LS + (0x400*N))

-:1047: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1047: FILE: drivers/gpu/drm/kmb/kmb_regs.h:40:
+#define LCD_LAYERn_INV_COLOUR_LS(N)	(LCD_LAYER0_INV_COLOUR_LS + (0x400*N))

-:1049: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1049: FILE: drivers/gpu/drm/kmb/kmb_regs.h:42:
+#define LCD_LAYERn_INV_COLOUR_MS(N)	(LCD_LAYER0_INV_COLOUR_MS + (0x400*N))
                                    	                                  ^

-:1049: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_INV_COLOUR_MS>
#1049: FILE: drivers/gpu/drm/kmb/kmb_regs.h:42:
+#define LCD_LAYERn_INV_COLOUR_MS(N)	(LCD_LAYER0_INV_COLOUR_MS + (0x400*N))

-:1049: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1049: FILE: drivers/gpu/drm/kmb/kmb_regs.h:42:
+#define LCD_LAYERn_INV_COLOUR_MS(N)	(LCD_LAYER0_INV_COLOUR_MS + (0x400*N))

-:1051: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1051: FILE: drivers/gpu/drm/kmb/kmb_regs.h:44:
+#define LCD_LAYERn_TRANS_COLOUR_LS(N)	(LCD_LAYER0_TRANS_COLOUR_LS + (0x400*N))
                                      	                                    ^

-:1051: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_TRANS_COLOUR_LS>
#1051: FILE: drivers/gpu/drm/kmb/kmb_regs.h:44:
+#define LCD_LAYERn_TRANS_COLOUR_LS(N)	(LCD_LAYER0_TRANS_COLOUR_LS + (0x400*N))

-:1051: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1051: FILE: drivers/gpu/drm/kmb/kmb_regs.h:44:
+#define LCD_LAYERn_TRANS_COLOUR_LS(N)	(LCD_LAYER0_TRANS_COLOUR_LS + (0x400*N))

-:1053: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1053: FILE: drivers/gpu/drm/kmb/kmb_regs.h:46:
+#define LCD_LAYERn_TRANS_COLOUR_MS(N)	(LCD_LAYER0_TRANS_COLOUR_MS + (0x400*N))
                                      	                                    ^

-:1053: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_TRANS_COLOUR_MS>
#1053: FILE: drivers/gpu/drm/kmb/kmb_regs.h:46:
+#define LCD_LAYERn_TRANS_COLOUR_MS(N)	(LCD_LAYER0_TRANS_COLOUR_MS + (0x400*N))

-:1053: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1053: FILE: drivers/gpu/drm/kmb/kmb_regs.h:46:
+#define LCD_LAYERn_TRANS_COLOUR_MS(N)	(LCD_LAYER0_TRANS_COLOUR_MS + (0x400*N))

-:1055: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1055: FILE: drivers/gpu/drm/kmb/kmb_regs.h:48:
+#define LCD_LAYERn_CSC_COEFF11(N)	(LCD_LAYER0_CSC_COEFF11 + (0x400*N))
                                  	                                ^

-:1055: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF11>
#1055: FILE: drivers/gpu/drm/kmb/kmb_regs.h:48:
+#define LCD_LAYERn_CSC_COEFF11(N)	(LCD_LAYER0_CSC_COEFF11 + (0x400*N))

-:1055: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1055: FILE: drivers/gpu/drm/kmb/kmb_regs.h:48:
+#define LCD_LAYERn_CSC_COEFF11(N)	(LCD_LAYER0_CSC_COEFF11 + (0x400*N))

-:1057: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1057: FILE: drivers/gpu/drm/kmb/kmb_regs.h:50:
+#define LCD_LAYERn_CSC_COEFF12(N)	(LCD_LAYER0_CSC_COEFF12 + (0x400*N))
                                  	                                ^

-:1057: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF12>
#1057: FILE: drivers/gpu/drm/kmb/kmb_regs.h:50:
+#define LCD_LAYERn_CSC_COEFF12(N)	(LCD_LAYER0_CSC_COEFF12 + (0x400*N))

-:1057: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1057: FILE: drivers/gpu/drm/kmb/kmb_regs.h:50:
+#define LCD_LAYERn_CSC_COEFF12(N)	(LCD_LAYER0_CSC_COEFF12 + (0x400*N))

-:1059: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1059: FILE: drivers/gpu/drm/kmb/kmb_regs.h:52:
+#define LCD_LAYERn_CSC_COEFF13(N)	(LCD_LAYER0_CSC_COEFF13 + (0x400*N))
                                  	                                ^

-:1059: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF13>
#1059: FILE: drivers/gpu/drm/kmb/kmb_regs.h:52:
+#define LCD_LAYERn_CSC_COEFF13(N)	(LCD_LAYER0_CSC_COEFF13 + (0x400*N))

-:1059: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1059: FILE: drivers/gpu/drm/kmb/kmb_regs.h:52:
+#define LCD_LAYERn_CSC_COEFF13(N)	(LCD_LAYER0_CSC_COEFF13 + (0x400*N))

-:1061: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1061: FILE: drivers/gpu/drm/kmb/kmb_regs.h:54:
+#define LCD_LAYERn_CSC_COEFF21(N)	(LCD_LAYER0_CSC_COEFF21 + (0x400*N))
                                  	                                ^

-:1061: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF21>
#1061: FILE: drivers/gpu/drm/kmb/kmb_regs.h:54:
+#define LCD_LAYERn_CSC_COEFF21(N)	(LCD_LAYER0_CSC_COEFF21 + (0x400*N))

-:1061: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1061: FILE: drivers/gpu/drm/kmb/kmb_regs.h:54:
+#define LCD_LAYERn_CSC_COEFF21(N)	(LCD_LAYER0_CSC_COEFF21 + (0x400*N))

-:1063: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1063: FILE: drivers/gpu/drm/kmb/kmb_regs.h:56:
+#define LCD_LAYERn_CSC_COEFF22(N)	(LCD_LAYER0_CSC_COEFF22 + (0x400*N))
                                  	                                ^

-:1063: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF22>
#1063: FILE: drivers/gpu/drm/kmb/kmb_regs.h:56:
+#define LCD_LAYERn_CSC_COEFF22(N)	(LCD_LAYER0_CSC_COEFF22 + (0x400*N))

-:1063: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1063: FILE: drivers/gpu/drm/kmb/kmb_regs.h:56:
+#define LCD_LAYERn_CSC_COEFF22(N)	(LCD_LAYER0_CSC_COEFF22 + (0x400*N))

-:1065: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1065: FILE: drivers/gpu/drm/kmb/kmb_regs.h:58:
+#define LCD_LAYERn_CSC_COEFF23(N)	(LCD_LAYER0_CSC_COEFF23 + (0x400*N))
                                  	                                ^

-:1065: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF23>
#1065: FILE: drivers/gpu/drm/kmb/kmb_regs.h:58:
+#define LCD_LAYERn_CSC_COEFF23(N)	(LCD_LAYER0_CSC_COEFF23 + (0x400*N))

-:1065: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1065: FILE: drivers/gpu/drm/kmb/kmb_regs.h:58:
+#define LCD_LAYERn_CSC_COEFF23(N)	(LCD_LAYER0_CSC_COEFF23 + (0x400*N))

-:1067: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1067: FILE: drivers/gpu/drm/kmb/kmb_regs.h:60:
+#define LCD_LAYERn_CSC_COEFF31(N)	(LCD_LAYER0_CSC_COEFF31 + (0x400*N))
                                  	                                ^

-:1067: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF31>
#1067: FILE: drivers/gpu/drm/kmb/kmb_regs.h:60:
+#define LCD_LAYERn_CSC_COEFF31(N)	(LCD_LAYER0_CSC_COEFF31 + (0x400*N))

-:1067: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1067: FILE: drivers/gpu/drm/kmb/kmb_regs.h:60:
+#define LCD_LAYERn_CSC_COEFF31(N)	(LCD_LAYER0_CSC_COEFF31 + (0x400*N))

-:1069: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1069: FILE: drivers/gpu/drm/kmb/kmb_regs.h:62:
+#define LCD_LAYERn_CSC_COEFF32(N)	  (LCD_LAYER0_CSC_COEFF32 + (0x400*N))
                                  	                                  ^

-:1069: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF32>
#1069: FILE: drivers/gpu/drm/kmb/kmb_regs.h:62:
+#define LCD_LAYERn_CSC_COEFF32(N)	  (LCD_LAYER0_CSC_COEFF32 + (0x400*N))

-:1069: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1069: FILE: drivers/gpu/drm/kmb/kmb_regs.h:62:
+#define LCD_LAYERn_CSC_COEFF32(N)	  (LCD_LAYER0_CSC_COEFF32 + (0x400*N))

-:1071: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1071: FILE: drivers/gpu/drm/kmb/kmb_regs.h:64:
+#define LCD_LAYERn_CSC_COEFF33(N)	(LCD_LAYER0_CSC_COEFF33 + (0x400*N))
                                  	                                ^

-:1071: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_COEFF33>
#1071: FILE: drivers/gpu/drm/kmb/kmb_regs.h:64:
+#define LCD_LAYERn_CSC_COEFF33(N)	(LCD_LAYER0_CSC_COEFF33 + (0x400*N))

-:1071: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1071: FILE: drivers/gpu/drm/kmb/kmb_regs.h:64:
+#define LCD_LAYERn_CSC_COEFF33(N)	(LCD_LAYER0_CSC_COEFF33 + (0x400*N))

-:1073: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1073: FILE: drivers/gpu/drm/kmb/kmb_regs.h:66:
+#define LCD_LAYERn_CSC_OFF1(N)		(LCD_LAYER0_CSC_OFF1 + (0x400*N))
                               		                             ^

-:1073: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_OFF1>
#1073: FILE: drivers/gpu/drm/kmb/kmb_regs.h:66:
+#define LCD_LAYERn_CSC_OFF1(N)		(LCD_LAYER0_CSC_OFF1 + (0x400*N))

-:1073: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1073: FILE: drivers/gpu/drm/kmb/kmb_regs.h:66:
+#define LCD_LAYERn_CSC_OFF1(N)		(LCD_LAYER0_CSC_OFF1 + (0x400*N))

-:1075: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1075: FILE: drivers/gpu/drm/kmb/kmb_regs.h:68:
+#define LCD_LAYERn_CSC_OFF2(N)		(LCD_LAYER0_CSC_OFF2 + (0x400*N))
                               		                             ^

-:1075: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_OFF2>
#1075: FILE: drivers/gpu/drm/kmb/kmb_regs.h:68:
+#define LCD_LAYERn_CSC_OFF2(N)		(LCD_LAYER0_CSC_OFF2 + (0x400*N))

-:1075: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1075: FILE: drivers/gpu/drm/kmb/kmb_regs.h:68:
+#define LCD_LAYERn_CSC_OFF2(N)		(LCD_LAYER0_CSC_OFF2 + (0x400*N))

-:1077: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1077: FILE: drivers/gpu/drm/kmb/kmb_regs.h:70:
+#define LCD_LAYERn_CSC_OFF3(N)		(LCD_LAYER0_CSC_OFF3 + (0x400*N))
                               		                             ^

-:1077: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CSC_OFF3>
#1077: FILE: drivers/gpu/drm/kmb/kmb_regs.h:70:
+#define LCD_LAYERn_CSC_OFF3(N)		(LCD_LAYER0_CSC_OFF3 + (0x400*N))

-:1077: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1077: FILE: drivers/gpu/drm/kmb/kmb_regs.h:70:
+#define LCD_LAYERn_CSC_OFF3(N)		(LCD_LAYER0_CSC_OFF3 + (0x400*N))

-:1079: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1079: FILE: drivers/gpu/drm/kmb/kmb_regs.h:72:
+#define LCD_LAYERn_DMA_CFG(N)		(LCD_LAYER0_DMA_CFG + (0x400*N))
                              		                            ^

-:1079: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1079: FILE: drivers/gpu/drm/kmb/kmb_regs.h:72:
+#define LCD_LAYERn_DMA_CFG(N)		(LCD_LAYER0_DMA_CFG + (0x400*N))

-:1081: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1081: FILE: drivers/gpu/drm/kmb/kmb_regs.h:74:
+#define LCD_LAYERn_DMA_START_ADDR(N)	(LCD_LAYER0_DMA_START_ADR + (0x400*N))
                                     	                                  ^

-:1081: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1081: FILE: drivers/gpu/drm/kmb/kmb_regs.h:74:
+#define LCD_LAYERn_DMA_START_ADDR(N)	(LCD_LAYER0_DMA_START_ADR + (0x400*N))

-:1083: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1083: FILE: drivers/gpu/drm/kmb/kmb_regs.h:76:
+#define LCD_LAYERn_DMA_START_SHADOW(N)	(LCD_LAYER0_DMA_START_SHADOW + (0x400*N))
                                       	                                     ^

-:1083: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1083: FILE: drivers/gpu/drm/kmb/kmb_regs.h:76:
+#define LCD_LAYERn_DMA_START_SHADOW(N)	(LCD_LAYER0_DMA_START_SHADOW + (0x400*N))

-:1085: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1085: FILE: drivers/gpu/drm/kmb/kmb_regs.h:78:
+#define LCD_LAYERn_DMA_LEN(N)		(LCD_LAYER0_DMA_LEN + (0x400*N))
                              		                            ^

-:1085: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1085: FILE: drivers/gpu/drm/kmb/kmb_regs.h:78:
+#define LCD_LAYERn_DMA_LEN(N)		(LCD_LAYER0_DMA_LEN + (0x400*N))

-:1087: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1087: FILE: drivers/gpu/drm/kmb/kmb_regs.h:80:
+#define LCD_LAYERn_DMA_LEN_SHADOW(N)	(LCD_LAYER0_DMA_LEN_SHADOW + (0x400*N))
                                     	                                   ^

-:1087: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_LEN_SHADOW>
#1087: FILE: drivers/gpu/drm/kmb/kmb_regs.h:80:
+#define LCD_LAYERn_DMA_LEN_SHADOW(N)	(LCD_LAYER0_DMA_LEN_SHADOW + (0x400*N))

-:1087: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1087: FILE: drivers/gpu/drm/kmb/kmb_regs.h:80:
+#define LCD_LAYERn_DMA_LEN_SHADOW(N)	(LCD_LAYER0_DMA_LEN_SHADOW + (0x400*N))

-:1089: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1089: FILE: drivers/gpu/drm/kmb/kmb_regs.h:82:
+#define LCD_LAYERn_DMA_STATUS(N)	(LCD_LAYER0_DMA_STATUS + (0x400*N))
                                 	                               ^

-:1089: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_STATUS>
#1089: FILE: drivers/gpu/drm/kmb/kmb_regs.h:82:
+#define LCD_LAYERn_DMA_STATUS(N)	(LCD_LAYER0_DMA_STATUS + (0x400*N))

-:1089: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1089: FILE: drivers/gpu/drm/kmb/kmb_regs.h:82:
+#define LCD_LAYERn_DMA_STATUS(N)	(LCD_LAYER0_DMA_STATUS + (0x400*N))

-:1091: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1091: FILE: drivers/gpu/drm/kmb/kmb_regs.h:84:
+#define LCD_LAYERn_DMA_LINE_WIDTH(N)	(LCD_LAYER0_DMA_LINE_WIDTH + (0x400*N))
                                     	                                   ^

-:1091: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1091: FILE: drivers/gpu/drm/kmb/kmb_regs.h:84:
+#define LCD_LAYERn_DMA_LINE_WIDTH(N)	(LCD_LAYER0_DMA_LINE_WIDTH + (0x400*N))

-:1093: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1093: FILE: drivers/gpu/drm/kmb/kmb_regs.h:86:
+#define LCD_LAYERn_DMA_LINE_VSTRIDE(N)	(LCD_LAYER0_DMA_LINE_VSTRIDE + (0x400*N))
                                       	                                     ^

-:1093: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1093: FILE: drivers/gpu/drm/kmb/kmb_regs.h:86:
+#define LCD_LAYERn_DMA_LINE_VSTRIDE(N)	(LCD_LAYER0_DMA_LINE_VSTRIDE + (0x400*N))

-:1095: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1095: FILE: drivers/gpu/drm/kmb/kmb_regs.h:88:
+#define LCD_LAYERn_DMA_FIFO_STATUS(N)	(LCD_LAYER0_DMA_FIFO_STATUS + (0x400*N))
                                      	                                    ^

-:1095: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_DMA_FIFO_STATUS>
#1095: FILE: drivers/gpu/drm/kmb/kmb_regs.h:88:
+#define LCD_LAYERn_DMA_FIFO_STATUS(N)	(LCD_LAYER0_DMA_FIFO_STATUS + (0x400*N))

-:1095: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1095: FILE: drivers/gpu/drm/kmb/kmb_regs.h:88:
+#define LCD_LAYERn_DMA_FIFO_STATUS(N)	(LCD_LAYER0_DMA_FIFO_STATUS + (0x400*N))

-:1097: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1097: FILE: drivers/gpu/drm/kmb/kmb_regs.h:90:
+#define LCD_LAYERn_CFG2(N)		(LCD_LAYER0_CFG2 + (0x400*N))
                           		                         ^

-:1097: CHECK:CAMELCASE: Avoid CamelCase: <LCD_LAYERn_CFG2>
#1097: FILE: drivers/gpu/drm/kmb/kmb_regs.h:90:
+#define LCD_LAYERn_CFG2(N)		(LCD_LAYER0_CFG2 + (0x400*N))

-:1097: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1097: FILE: drivers/gpu/drm/kmb/kmb_regs.h:90:
+#define LCD_LAYERn_CFG2(N)		(LCD_LAYER0_CFG2 + (0x400*N))

-:1100: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1100: FILE: drivers/gpu/drm/kmb/kmb_regs.h:93:
+#define LCD_LAYERn_CFG2(N)		(LCD_LAYER0_CFG2 + (0x400*N))
                           		                         ^

-:1100: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1100: FILE: drivers/gpu/drm/kmb/kmb_regs.h:93:
+#define LCD_LAYERn_CFG2(N)		(LCD_LAYER0_CFG2 + (0x400*N))

-:1291: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1291: FILE: drivers/gpu/drm/kmb/kmb_regs.h:284:
+#define LAYER3_DMA_FIFO_UNDERFLOW_BIT		(1<<26)
                                      		  ^

-:1292: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1292: FILE: drivers/gpu/drm/kmb/kmb_regs.h:285:
+#define LAYER3_DMA_OVERFLOW_BIT			(1<<25)
                                			  ^

-:1293: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1293: FILE: drivers/gpu/drm/kmb/kmb_regs.h:286:
+#define LAYER3_DMA_IDLE_BIT			(1<<24)
                            			  ^

-:1294: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1294: FILE: drivers/gpu/drm/kmb/kmb_regs.h:287:
+#define LAYER3_DMA_DONE_BIT			(1<<23)
                            			  ^

-:1296: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1296: FILE: drivers/gpu/drm/kmb/kmb_regs.h:289:
+#define LAYER2_DMA_FIFO_UNDERFLOW_BIT		(1<<22)
                                      		  ^

-:1297: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1297: FILE: drivers/gpu/drm/kmb/kmb_regs.h:290:
+#define LAYER2_DMA_OVERFLOW_BIT			(1<<21)
                                			  ^

-:1298: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1298: FILE: drivers/gpu/drm/kmb/kmb_regs.h:291:
+#define LAYER2_DMA_IDLE_BIT			(1<<20)
                            			  ^

-:1299: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1299: FILE: drivers/gpu/drm/kmb/kmb_regs.h:292:
+#define LAYER2_DMA_DONE_BIT			(1<<19)
                            			  ^

-:1301: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1301: FILE: drivers/gpu/drm/kmb/kmb_regs.h:294:
+#define LAYER1_DMA_CR_FIFO_UNDERFLOW_BIT	(1<<18)
                                         	  ^

-:1302: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1302: FILE: drivers/gpu/drm/kmb/kmb_regs.h:295:
+#define LAYER1_DMA_CR_FIFO_OVERFLOW_BIT		(1<<17)
                                        		  ^

-:1303: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1303: FILE: drivers/gpu/drm/kmb/kmb_regs.h:296:
+#define LAYER1_DMA_CB_FIFO_UNDERFLOW_BIT	(1<<16)
                                         	  ^

-:1304: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1304: FILE: drivers/gpu/drm/kmb/kmb_regs.h:297:
+#define LAYER1_DMA_CB_FIFO_OVERFLOW_BIT		(1<<15)
                                        		  ^

-:1306: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1306: FILE: drivers/gpu/drm/kmb/kmb_regs.h:299:
+#define LAYER1_DMA_FIFO_UNDERFLOW_BIT		(1<<14)
                                      		  ^

-:1307: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1307: FILE: drivers/gpu/drm/kmb/kmb_regs.h:300:
+#define LAYER1_DMA_OVERFLOW_BIT			(1<<13)
                                			  ^

-:1308: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1308: FILE: drivers/gpu/drm/kmb/kmb_regs.h:301:
+#define LAYER1_DMA_IDLE_BIT			(1<<12)
                            			  ^

-:1309: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1309: FILE: drivers/gpu/drm/kmb/kmb_regs.h:302:
+#define LAYER1_DMA_DONE_BIT			(1<<11)
                            			  ^

-:1311: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1311: FILE: drivers/gpu/drm/kmb/kmb_regs.h:304:
+#define LAYER0_DMA_CR_FIFO_UNDERFLOW_BIT	(1<<10)
                                         	  ^

-:1312: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1312: FILE: drivers/gpu/drm/kmb/kmb_regs.h:305:
+#define LAYER0_DMA_CR_FIFO_OVERFLOW_BIT		(1<<9)
                                        		  ^

-:1313: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1313: FILE: drivers/gpu/drm/kmb/kmb_regs.h:306:
+#define LAYER0_DMA_CB_FIFO_UNDERFLOW_BIT	(1<<8)
                                         	  ^

-:1314: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1314: FILE: drivers/gpu/drm/kmb/kmb_regs.h:307:
+#define LAYER0_DMA_CB_FIFO_OVERFLOW_BIT		(1<<7)
                                        		  ^

-:1316: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1316: FILE: drivers/gpu/drm/kmb/kmb_regs.h:309:
+#define LAYER0_DMA_FIFO_UNDERFLOW_BIT		(1<<6)
                                      		  ^

-:1317: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1317: FILE: drivers/gpu/drm/kmb/kmb_regs.h:310:
+#define LAYER0_DMA_OVERFLOW_BIT			(1<<5)
                                			  ^

-:1318: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1318: FILE: drivers/gpu/drm/kmb/kmb_regs.h:311:
+#define LAYER0_DMA_IDLE_BIT			(1<<4)
                            			  ^

-:1319: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#1319: FILE: drivers/gpu/drm/kmb/kmb_regs.h:312:
+#define LAYER0_DMA_DONE_BIT			(1<<3)
                            			  ^

-:1321: CHECK:CAMELCASE: Avoid CamelCase: <BLT_VIDEOn_DMAm_STATE>
#1321: FILE: drivers/gpu/drm/kmb/kmb_regs.h:314:
+#define  BLT_VIDEOn_DMAm_STATE			0x00

-:1322: CHECK:CAMELCASE: Avoid CamelCase: <BLT_VIDEOn_DMAm_BYTES>
#1322: FILE: drivers/gpu/drm/kmb/kmb_regs.h:315:
+#define  BLT_VIDEOn_DMAm_BYTES			0x00

-:1325: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1325: FILE: drivers/gpu/drm/kmb/kmb_regs.h:318:
+#define  BLT_LAYERn_WIDTH(N)			(0x40C + (0x400*N))
                             			               ^

-:1325: CHECK:CAMELCASE: Avoid CamelCase: <BLT_LAYERn_WIDTH>
#1325: FILE: drivers/gpu/drm/kmb/kmb_regs.h:318:
+#define  BLT_LAYERn_WIDTH(N)			(0x40C + (0x400*N))

-:1325: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'N' may be better as '(N)' to avoid precedence issues
#1325: FILE: drivers/gpu/drm/kmb/kmb_regs.h:318:
+#define  BLT_LAYERn_WIDTH(N)			(0x40C + (0x400*N))

-:1326: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#1326: FILE: drivers/gpu/drm/kmb/kmb_regs.h:319:
+#define  BLT_LAYERn_HEIGHT_OFFSET(N)		(0x410 + (0x400*N))
                                     		               ^

-:1326: CHECK:CAMELCASE: Avoid CamelCase: <BLT_LAYERn_HEIGHT_OFFSET>
#1326: FILE: drivers/gpu/drm/kmb/kmb_regs.h:319:
+#define  BLT_LAYERn_HEIGHT_OFFSET(N)		(0x410 + (0x400*N))

-:1326: CHECK:MACRO_ARG_PRECEDENCE: Macro


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
